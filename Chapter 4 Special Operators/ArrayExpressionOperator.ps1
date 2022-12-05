#Returns the expression as an array
#@(Get-ChildItem $env:windir\System32\ntdll.dll)
#Will return an array with one item
#@(Get-ChildItem $env:windir\System32)

##      : Call Operation*
#Will execute Get-ChildItem

$Command = 'Get-ChildItem'
& $Command