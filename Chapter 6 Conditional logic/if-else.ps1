$test = "test"
# if ($test -eq "test") {
#     Write-Host true
# }
##equivaut à :
###Write-Host($test -eq "test")

#############################################################
# if else
# $test = "test0"
# if ($test -eq "test") {
#     Write-Host "$test is not equals test"
# }elseif ($test -eq "test1") {
#     Write-Host "$test is not equals test1"
# }else{
#     Write-Host "right"
# }

#################################################################
## Negation
#################################################################
# $test = "test"
# if (-Not $test -eq "test2") {
#     Write-Host "if condition not met"
# }
# ##We can also use !:
# $test = "test"
# if (!($test -eq "test2")) {
#     Write-Host "if condition not met"
# }


#there is also the -ne (not equal) operator:
# $test = "test"
# if ($test -ne "test2") {
#     Write-Host "variable test is not equal to 'test2'"
# }


#################################################################
###                 If conditional shorthand                #####
#################################################################
#Done in Powershell 2.0
$boolean = $false;
$string = "false";
$emptyString = "";
If ($boolean) {
    # this does not run because $boolean is false
    Write-Host "Shorthand If conditions can be nice, just make sure they are always boolean."
}
If ($string) {
    # This does run because the string is non-zero length
    Write-Host "If the variable is not strictly null or Boolean false, it will evaluate to true as
it is an object or string with length greater than 0."
}
If ($emptyString) {
    # This does not run because the string is zero-length
    Write-Host "Checking empty strings can be useful as well."
}
If ($null) {
    # This does not run because the condition is null
    Write-Host "Checking Nulls will not print this statement."
}


