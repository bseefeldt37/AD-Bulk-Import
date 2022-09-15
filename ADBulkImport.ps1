<#
SCRIPT BY:  Benjamin Seefeldt
CREATED:    15 Sep 22
UPDATED:    15 Sep 22

DESCRIPTION:
    This script is to perform the bulk import of AD users from a .csv file.


#>

### VARIABLE DECLORATION ###

### FUNCTION CREATION ###

function Show-Menu {
    Clear-Host
    Write-Host "
    Welcome to the Powershell AD Bulk User Import tool.
    Please select form the options below." -ForegroundColor Green
    Write-Host "
    1: Start a new import
    9: Exit Script
    " -ForegroundColor White
}
function Get-CSV {
    # Obtaining file path and name
    Write-Host "Getting file path..." -ForegroundColor Cyan
    $CSVpath = Read-Host "Enter the file path"
    $CSVname = Read-Host "Enter the filename of the Bulk Users .csv"
    $CSVfull = "$CSVpath\$CSVname"
    
    if ((Test-Path -Path "$CSVfull") -eq $false ) {
        Write-Host ""
        Write-Host "The file " -ForegroundColor Red -NoNewline
        Write-Host "$CSVname" -ForegroundColor Yellow -NoNewline
        Write-Host " cannot be found in" -ForegroundColor Red
        Write-Host "$CSVpath" -ForegroundColor Yellow
    }
    else {
        Write-Host "File has been found" -ForegroundColor Green
    }
}

### BODY ###
Clear-Host
try {
   Show-Menu
    $option = Read-Host -Prompt "What is yout selection"
    while ($option -neq 9) {
        switch ($x) {
            condition {  }
            Default {}
        }
    }
    switch ($option) {
        1 {Get-CSV}
        9 {Exit-PSHostProcess}
    }

}
catch {
    <#Do this if a terminating exception happens#>
}
