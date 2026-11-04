# Review Notes

The following items were intentionally not published as facts in the client-facing documentation because they need confirmation:

- How a silent install chooses **Run as User** or **Run as Administrator** mode.
- How a silent uninstall chooses **Keep my settings and saved data** or **Remove everything**, and which option is the default.
- Where the `Oracular MOCA Client` data folder is stored in **Run as Administrator** mode.
- Exact Start Menu paths for **Run as User** and **Run as Administrator** modes.
- The requested screenshot names were not present in the repo. Existing matching screenshots were copied to the requested filenames:
  - `.attachments/exe-install-mode.png`
  - `.attachments/msi-install-mode.png`
  - `.attachments/uninstall-options.png`
  - `.attachments/msi-uninstall-options.png`

## Silent install/uninstall: needs confirmation

Installer source files such as `mocadev.iss`, `setupfix.wxs`, `*.iss`, and `*.wxs` were not present in this repository checkout, so the following EXE installer details could not be confirmed from source.

| Option or behavior | What I assumed | What must be tested |
| --- | --- | --- |
| `PrivilegesRequiredOverridesAllowed=commandline` | Not published as confirmed. | Confirm whether the EXE installer enables command-line privilege overrides. |
| `/ALLUSERS` | Not published. | Confirm whether it installs for all users when used with the EXE installer. |
| `/CURRENTUSER` | Not published. | Confirm whether it installs for the current user when used with the EXE installer. |
| Silent uninstall data-removal default | Not published as confirmed. | Confirm whether silent uninstall keeps settings or removes everything by default. |
| Silent uninstall remove-everything switch | Not published. | Confirm whether the EXE uninstaller supports a silent switch for removing all saved data. |
| `/VERYSILENT` | Used because it was already documented for the EXE installer. | Confirm against the installer project. |
| `/SUPPRESSMSGBOXES` | Used because it was already documented for the EXE installer. | Confirm against the installer project. |
| `/NORESTART` | Used because it was already documented for the EXE installer. | Confirm against the installer project. |
| `/SP-` | Used because it was already documented for `setup.exe`. | Confirm against the installer project. |
| `/DIR` | Used because it was already documented for the EXE installer. | Confirm against the installer project. |
| `/LOG` | Used because it was already documented for the EXE installer and uninstaller. | Confirm against the installer project. |

## MSI silent uninstall: needs confirmation

Installer source files such as `setupfix.wxs`, `*.wxs`, `*.wxi`, and `*.wxl` were not present in this repository checkout, so the following MSI uninstall details could not be confirmed from source.

| Item | What I assumed | What must be tested |
| --- | --- | --- |
| winget display name | Published as `Smart MOCA Client` because the requested page text uses that name. | Confirm that winget lists the application with exactly this display name. |
| Current-user winget uninstall | Published as the silent uninstall method because the requested page text uses winget. | Confirm that winget can uninstall a current-user MSI installation. |
| First winget run | Not mentioned on the published page. | Confirm whether Windows asks the user to accept winget source agreements before the command can run silently. |
| Silent uninstall data behavior | Published with the same keep/remove descriptions as the existing MSI uninstall page, without stating a default. | Confirm whether silent uninstall keeps settings or removes everything by default. |
| Administrator installation folder | Current docs say `%PROGRAMDATA%\smartmocaclient`; earlier docs said `C:\Program Files (x86)\SmartMOCAClient`. | Confirm the correct administrator install folder in the MSI installer source. |

## 404-pages Reference Port Review

Branch reviewed: `origin/404-pages`

Installer source check:

- Searched this checkout and all local Git refs for Inno Setup and WiX source files, including `mocadev.iss`, `setupfix.wxs`, `*.iss`, `*.wxs`, `*.wxi`, and `*.wxl`.
- No installer source files were present in this repository checkout or local refs, so custom installer behavior could not be verified from source.
- Because the source files were not present, custom installer options from `404-pages` were not added as client-facing facts in the published documentation.

Options and switches reviewed from `404-pages`:

| Option or switch | Source check result | Published docs action |
| --- | --- | --- |
| `/CURRENTUSER` | Could not check | Not ported from `404-pages`. |
| `/ALLUSERS` | Could not check | Not ported from `404-pages`. |
| `/DIR="path"` | Could not check | Already present on `main`; not newly ported. |
| `/TASKS="desktopicon,quicklaunchicon"` | Could not check | Not ported from `404-pages`. |
| `/VERYSILENT` | Could not check | Already present on `main`; not newly ported. |
| `/SUPPRESSMSGBOXES` | Could not check | Already present on `main`; not newly ported. |
| `/NORESTART` | Could not check | Already present on `main`; not newly ported. |
| `/SP-` | Could not check | Already present on `main`; not newly ported. |
| `/LOG="path"` | Could not check | Already present on `main`; not newly ported. |
| `ALLUSERS` | Could not check | Not ported from `404-pages`. |
| `MSIINSTALLPERUSER` | Could not check | Not ported from `404-pages`. |
| `INSTALLMODE` | Could not check | Not ported from `404-pages`. |
| `INSTALLDIR` | Could not check | Not ported from `404-pages`. |
| `ACCEPT_EULA` | Could not check | Already present on `main`; not newly ported. |
| `AUTOUPDATE` | Could not check | Already present on `main`; not newly ported. |
| `JAVA_PATH` | Could not check | Already present on `main`; not newly ported. |
| `REMOVE_USER_DATA` | Could not check | Not ported from `404-pages`. |
| `REMOVEALL` | Could not check | Not ported from `404-pages`. |
| `/REMOVEALL` | Could not check | Not ported from `404-pages`. |
| `/qn` | Could not check | Already present on `main`; not newly ported. |
| `/qf` | Could not check | Already present on `main`; not newly ported. |
| `/x` | Could not check | Already present on `main`; not newly ported. |
| `/i` | Could not check | Already present on `main`; not newly ported. |
| `/l*v` or `/L*V` | Could not check | Already present on `main`; not newly ported. |

Recommended follow-up:

- Verify the custom options against the installer project that contains the actual EXE and MSI definitions.
- After confirmation, port only confirmed custom options into the matching silent install or uninstall pages.
