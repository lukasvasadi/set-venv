<#
.Synopsis
Sets Python virtual environment.
.DESCRIPTION
Finds Python virtual environment "activate" executable from path supplied by user
or located in environment variable PYTHON_VENV_PATH.
.Parameter Name
Name of Python virtual environment.
.Parameter Path
Path to directory that holds all venv directories.
.EXAMPLE
Set-Venv MyVenv
.EXAMPLE
Set-Venv -Name MyVenv -Path C:\Code\.venv
#>
Function Set-Venv {
    [CmdletBinding()]
    Param(
        [Parameter(Mandatory = $true, HelpMessage = 'Name of specific virtual environment')]
        [String]$Name,
        [Parameter()]
        [String]$Path = $Env:PYTHON_VENV_PATH
    )

    # Activate virtual environment
    try {
        & "$Path\$Name\Scripts\Activate.ps1"
    }
    catch [System.Management.Automation.CommandNotFoundException] {
        Write-Host "Unable to set virtual environment. Please check environment name and path parameters. Note that the environment path defaults to the PYTHON_VENV_PATH environment variable."
    }
    
}
