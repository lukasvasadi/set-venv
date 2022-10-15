# SetVenv

PowerShell module to set Python virtual environment from supplied name.

## Installation

1. Install as a virtual module for current user:

```ps1
git clone git@github.com:lukasvasadi/set-venv.git ($Env:PSModulePath.Split(';')[0] + "\SetVenv")
```

2. Create an environment variable `PYTHON_VENV_PATH` that stores the path to a `venv` parent directory:

```ps1
if (-not (Test-Path env:PYTHON_VENV_PATH)) { [System.Environment]::SetEnvironmentVariable('PYTHON_VENV_PATH','C:\path\to\venv',[System.EnvironmentVariableTarget]::User) }
```

3. Restart PowerShell to promote changes.

## Usage

Set environment with name:

```ps1
Set-Venv myenvironment
```

Supply an alternative path to the `venv` parent directory:

```ps1
Set-Venv -Name myenvironment -Path C:\path\to\venv
```
