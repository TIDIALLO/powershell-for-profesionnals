# Section 19.1: $OFS
# Variable called Output Field Separator contains string value that is used when converting an array to a string. By
#default $OFS = " " (a space), but it can be changed:
# $array = 1, 2, 3
# "$array" # default OFS will be used
# $OFS = ",." # we change OFS to comma and dot
# "$array"

# Contains status of the last operation. When there is no error, it is set to True:
# Write-Host 'hello'
# $?


##################################################################
# # Section 19.3: $null
# $null is used to represent absent or undefined value.
# # $nSection 19.3: $null
# $null is used to represent absent or undefined value.
# $null can be used as an empty placeholder for empty value in arrays:ull can be used as an empty placeholder for empty value in arrays:

# $array = 1, $string, $null
# $array.Count   #output: 3

# $array | ForEach-Object { "hello" }
# $null | ForEach-Object { "Hello" } # THIS WILL DO ONE ITERATION !!! output: hello 
# foreach ($i in $null) { "Hello" } # THIS WILL DO NO ITERATION


# Section 19.4: $error

##################################################
# Section 19.5: $pid
# Contains process ID of the current hosting process
# $PID
##################################################

# Section 19.6: Boolean values
# $expBoolean = "abc".Length -eq 3 # length of "abc" is 3, hence $boolExpr will be True
# if($expBoolean -eq $true){
#     "Length is 3"
# }
# # result will be "Length is 3"
# $boolExpr -ne $true
# #result will be False

# Section 19.7: $_ / $PSItem
# Contains the object/item currently being processed by the pipeline.
²
# 1..5 | % {Write-object "The current item is $_"}
# $PSItem and $_ are identical and can be used interchangeably, but $_ is by far the most commonly used.

# Section 19.8: $PSVersionTable
# Contains a read-only hash table (Constant, AllScope) that displays details about the version of PowerShell that is
# running in the current session