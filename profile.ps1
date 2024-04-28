
#region conda initialize
# !! Contents within this block are managed by 'conda init' !!
If (Test-Path "C:\ProgramData\miniconda3\Scripts\conda.exe") {
    (& "C:\ProgramData\miniconda3\Scripts\conda.exe" "shell.powershell" "hook") | Out-String | ?{$_} | Invoke-Expression
}
#endregion

function coac {
    param (
        [string]$envName
    )

    if (-not $envName) {
        Write-Host "Please provide the name of the Conda environment."
        return
    }

    conda activate $envName
}
function cvmi {
    conda activate vmi
}

function coda {
    conda deactivate
}
