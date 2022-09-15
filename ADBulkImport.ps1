<#
SCRIPT BY:  Benjamin Seefeldt
CREATED:    15 Sep 22
UPDATED:    15 Sep 22

DESCRIPTION:
    This script is to perform the bulk import of AD users from a .csv file.


#>

### VARIABLE DECLORATION ###
$selection = $null

### FUNCTION CREATION ###

function Show-Menu {
    Clear-Host
    Write-Host "
    Welcome to the Powershell AD Bulk User Import tool.
    Please select form the options below." -ForegroundColor Green
    Write-Host "
    1: Start a new import
    E: Exit Script" -ForegroundColor White
}
function Get-CSV {
    # Obtaining file path and name
    Write-Host "Getting file path..." -ForegroundColor Cyan
    $CSVpath = Read-Host "Enter the file path"
    $CSVname = Read-Host "Enter the filename of the Bulk Users .csv"
    $CSVfull = "$CSVpath\$CSVname"
    
    if ((Test-Path -Path "$CSVfull") -eq $false ) {
        <# Action to perform if the condition is true #>
        Write-Host "The file $CSVname cannot be found in $CSVpath"
    }
    else {
        Write-Host "File has been found"
    }
}

### BODY ###
Clear-Host
try {
    Show-Menu
    switch ($selection) {
        1 {Get-CSV}
        E {Exit-PSHostProcess}
    }

}
catch {
    <#Do this if a terminating exception happens#>
}
finally {
    <#Do this after the try block regardless of whether an exception occurred or not#>
}