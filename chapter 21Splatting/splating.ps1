# Splatting is a method of passing multiple parameters to a command as a single unit. This is done by storing the
# parameters and their values as key-value pairs in a hashtable and splatting it to a cmdlet using the splatting
# operator @.
# Splatting can make a command more readable and allows you to reuse parameters in multiple command calls.

# Section 21.1: Piping and Splatting
# Declaring the splat is useful for reusing sets of parameters multiple times or with slight variations:
# $Splat = @{
#     Class = "Win32_SystemEnclosure"
#     Property = "Manufacturer"
#     ErrorAction = "Stop"
# }   
# Get-WmiObject -ComputerName $env:COMPUTERNAME @splat
# Get-WmiObject -ComputerName "Computer2" @splat
# Get-WmiObject -ComputerName "Computer3" @splat

# @{
#     ComputerName = $env:COMPUTERNAME
#     Class        = "Win32_SystemEnclosure"
#     Property     = "Manufacturer"
#     ErrorAction  = "Stop"
# } | % { Get-WmiObject @_ }

#########################################################
# Section 21.2: Passing a Switch parameter using Splatting
$myParameters = @{
    FileversionInfo = $true
}
Get-Process $myParameters