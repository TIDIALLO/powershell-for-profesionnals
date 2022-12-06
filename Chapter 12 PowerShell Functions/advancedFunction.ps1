#  Mandatory Parameters
# Parameters to a function can be marked as mandatory
# function Get-Greeting {
#     param (
#         [Parameter(Mandatory = $true)]
#         [string]
#         $Name 
#     )
#     "Hello World $name"
# }
# $greeting = Get-Greeting
# $greeting

#############################################################
# # Parametre de validation
# function Get-Color {
#     param (
#         [ValidateSet('red','green','blue',IgnoreCase)]
#         [string]$color
#     )
    
# }
#############################################################
#############################################################
# ValidatePattern
# This method of parameter validation accepts parameters that match the regex pattern specified.
# param(
#  [ValidatePattern("\w{4-6}\d{2}")]
#  [string]$UserName
# )

#############################################################
#############################################################
###################        ValidateLength
# This method of parameter validation tests the length of the passed string.
# param(
#     [ValidateLength(0, 15)]
#     [String]$PhoneNumber
# )

# #############################################################
# #############################################################
# ValidateCount
# This method of parameter validation tests the amount of arguments passed in, for example, an array of strings.
# param(
#     [ValidateCount(1, 5)]
#     [String[]]$ComputerName
# )
# #############################################################
# #############################################################

#ValidateScript
# param(
#     [ValidateScript({ Test-Path $_ })]
#     [IO.FileInfo]$Path
# )
# To check that a user exists in AD:
# param(
#     [ValidateScript({ Get-ADUser $_ })]
#     [String]$UserName
# )
# param(
#     [ValidateScript({
#             $AnHourAgo = (Get-Date).AddHours(-1)
#             if ($_ -lt $AnHourAgo.AddMinutes(5) -and $_ -gt $AnHourAgo.AddMinutes(-5)) {
#                 $true
#             }
#             else {
#                 throw "That's not within five minutes. Try again."
#             }
#         })]
#     [String]$TimeAboutAnHourAgo
# )

#############################################################################
#           Simple Function with No Parameters
