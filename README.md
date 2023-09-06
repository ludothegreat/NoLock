
# Scroll Lock Toggle PowerShell Module

## Overview

This PowerShell module provides functionality to automatically toggle the Scroll Lock key on and off at a specific interval. The module contains two primary functions:

- `Start-ScrollLockToggle`: Starts the Scroll Lock key toggle loop as a background PowerShell job.
- `Stop-ScrollLockToggle`: Stops the Scroll Lock key toggle loop.

## Installation

1. Download the `ScrollLockToggleModuleWithJobs.psm1` file.
2. Place it in one of your PowerShell module paths. You can view these paths by running `$env:PSModulePath` in a PowerShell session.
3. Import the module into your PowerShell session with `Import-Module ScrollLockToggleModuleWithJobs`.

## Usage

### Start the Scroll Lock Toggle

```powershell
Start-ScrollLockToggle
```

This command will start a background PowerShell job that toggles the Scroll Lock key on and off.

### Stop the Scroll Lock Toggle

```powershell
Stop-ScrollLockToggle
```

This command will stop the background PowerShell job that is toggling the Scroll Lock key.

## Contributing

If you have any improvements or issues, please submit a GitHub pull request or issue.

## License

This project is licensed under the MIT License.
