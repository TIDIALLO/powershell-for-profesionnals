# Simple Module Example
function Add{
    [CmdletBinding()]
    param(
        [int]$x,
        [int]$y
    )
    return $x + $y
}
Export-ModuleMember -Function Add

# Exporting a Variable from a Module
# $FirstName = 'Bob'
# Export-ModuleMember -Variable FirstName

# "################################################################################"
#  Structuring PowerShell Modules
# Consider this module directory structure:
# \MyCoolModule
#  \Functions
#  Function1.ps1
#  Function2.ps1
#  Function3.ps1
# MyCoolModule.psd1
# MyCoolModule.psm1
# Inside your MyCoolModule.psm1 file, you could insert the following code:
# Get-ChildItem -Path $PSScriptRoot\Functions |
#  ForEach-Object -Process { . $PSItem.FullName }

