# PowerShell offers a variety of useful "automatic" (built-in) variables. Certain automatic variables are only populated
# in special circumstances, while others are available globally.

# $PSScriptRoot
Get-ChildItem -Path $PSScriptRoot

# This example retrieves the list of child items (directories and files) from the folder where the script file resides.
# $Args
# $PSItem
# Get-Process | ForEach-Object -Process {
#  $PSItem.Name
# }

#  $?
# Get-Process -Name doesnotexist
# Write-Host -Object "Was the last operation successful? $?"
# Contains the execution status of the last operation. It contains TRUE if the last operation succeeded and FALSE if it
# failed.

# $error
Write-Host -Object ('The last error that occurred was: {0}' -f $error[0].Exception.Message)

# Contains an array of error objects that represent the most recent errors. The most recent error is the first error
# object in the array ($Error[0]).
