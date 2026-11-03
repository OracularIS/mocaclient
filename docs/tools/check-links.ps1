param(
    [string]$Root = (Get-Location).Path
)

$ErrorActionPreference = "Stop"

$rootPath = (Resolve-Path -LiteralPath $Root).Path
$markdownFiles = Get-ChildItem -LiteralPath $rootPath -Recurse -File -Filter "*.md"
$errors = New-Object System.Collections.Generic.List[string]
$linkCount = 0
$imageCount = 0

function Test-ExternalTarget {
    param([string]$Target)
    return $Target -match '^(https?:|mailto:|tel:)'
}

function Resolve-DocsifyTarget {
    param(
        [string]$Target,
        [string]$CurrentDirectory
    )

    $clean = $Target.Trim()
    if ($clean.StartsWith("<") -and $clean.EndsWith(">")) {
        $clean = $clean.Substring(1, $clean.Length - 2)
    }

    if ($clean -eq "" -or $clean.StartsWith("#") -and -not $clean.StartsWith("#/")) {
        return $null
    }

    $pathPart = $clean
    $isDocsifyRoute = $pathPart.StartsWith("#/")
    if ($isDocsifyRoute) {
        $pathPart = $pathPart.Substring(2)
    }

    $pathPart = ($pathPart -split '[?#]')[0]
    $pathPart = [System.Uri]::UnescapeDataString($pathPart)
    if ($pathPart -eq "" -or $pathPart -eq ".") {
        return $null
    }

    $pathPart = $pathPart -replace '\\', '/'
    if ($isDocsifyRoute -and $pathPart.StartsWith("./")) {
        $pathPart = $pathPart.Substring(2)
    }

    if ([System.IO.Path]::GetExtension($pathPart) -eq "" -and -not $pathPart.EndsWith("/")) {
        $pathPart = "$pathPart.md"
    }

    if ($pathPart.StartsWith("/")) {
        return Join-Path $rootPath $pathPart.TrimStart("/")
    }

    if ($isDocsifyRoute) {
        return Join-Path $rootPath $pathPart
    }

    return Join-Path $CurrentDirectory $pathPart
}

foreach ($file in $markdownFiles) {
    $content = Get-Content -LiteralPath $file.FullName -Raw
    $currentDirectory = Split-Path -Parent $file.FullName

    foreach ($match in [regex]::Matches($content, '!\[[^\]]*\]\(([^)]+)\)')) {
        $imageCount++
        $target = $match.Groups[1].Value.Trim()
        if (Test-ExternalTarget $target) { continue }
        $resolved = Resolve-DocsifyTarget -Target $target -CurrentDirectory $currentDirectory
        if ($null -eq $resolved) { continue }
        if (-not (Test-Path -LiteralPath $resolved)) {
            $errors.Add("Missing image in $($file.FullName): $target")
        }
    }

    foreach ($match in [regex]::Matches($content, '(?<!\!)\[[^\]]+\]\(([^)]+)\)')) {
        $linkCount++
        $target = $match.Groups[1].Value.Trim()
        if (Test-ExternalTarget $target) { continue }
        $resolved = Resolve-DocsifyTarget -Target $target -CurrentDirectory $currentDirectory
        if ($null -eq $resolved) { continue }
        if (-not (Test-Path -LiteralPath $resolved)) {
            $errors.Add("Missing link target in $($file.FullName): $target")
        }
    }
}

if ($errors.Count -gt 0) {
    $errors | ForEach-Object { Write-Host $_ }
    Write-Host "Checked $linkCount links and $imageCount images. Broken: $($errors.Count)."
    exit 1
}

Write-Host "Checked $linkCount links and $imageCount images. Broken: 0."
