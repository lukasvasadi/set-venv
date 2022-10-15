# SetVenv

PowerShell module to set Python virtual environment from supplied name.

## Installation

1. You have the option to install for the current user or all users of the system.

Install for current user:

```ps1
git clone git@github.com:lukasvasadi/set-venv.git ($Env:PSModulePath.Split(';')[0] + "\SetVenv")
Install-Module SetVenv
```

Install for all users:

```ps1
git clone git@github.com:lukasvasadi/set-venv.git ($Env:PSModulePath.Split(';')[1] + "\SetVenv")
Install-Module SetVenv
```

2. Create an environment variable `PYTHON_VENV_PATH` that stores the path to a `venv` parent directory:

```ps1
[System.Environment]::SetEnvironmentVariable('PYTHON_VENV_PATH','C:\path\to\venv',[System.EnvironmentVariableTarget]::User)
```

3. Close and reopen PowerShell to manifest changes.

## Usage

Set environment with name:

```ps1
Set-Venv myenvironment
```

Supply an alternative path to the `venv` parent directory:

```ps1
Set-Venv -Name myenvironment -Path C:\path\to\venv
```
