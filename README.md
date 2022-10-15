# SetVenv

PowerShell module to set Python virtual environment from supplied name.

## Installation

```ps1
Install-Module SetVenv
```

## Usage

1. Create an environment variable `PYTHON_VENV_PATH` that stores the path to a `venv` parent directory:

```ps1
[System.Environment]::SetEnvironmentVariable('PYTHON_VENV_PATH','C:\path\to\venv',[System.EnvironmentVariableTarget]::User)
```

2. Set environment with name:

```ps1
Set-Venv myenvironment
```

3. Alternatively, supply a unique path to the parent directory:

```ps1
Set-Venv -Name myenvironment -Path C:\path\to\venv
```
