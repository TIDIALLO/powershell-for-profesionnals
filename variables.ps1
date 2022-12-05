## simple variable
# $foo = 'bar'
# Write-Output($foo);
##====================================
# Arrays
#$myArrayOfInts = 1, 2, 3, 4, 5;
#Write-Output($myArrayOfInts);
#$myArrayOfStrings = "a", "b", "c", "d", "e";
# foreach ($var in $myArrayOfStrings) {
#     Write($var);
# }
#Adding to an array
# $myArrayOfInts = $myArrayOfInts + 6;
# Write-Output($myArrayOfInts);
#Combining arrays together
# $myOtherArayOfInts = 7, 8, 9;
# $myArrayOfInts = $myArrayOfInts + $myOtherArayOfInts;
# Write-Output($myArrayOfInts)


#############################################################################

#  List Assignment of Multiple Variables

#$input = "foo.bar.baz";
#$foo, $bar, $baz = $input.split(".");
#Write-Output($foo,$bar,$baz);
# $foo, $leftover = $input.split("."); #Sets $foo = "foo", $leftover = ["bar","baz"]
# $bar = $leftover[0]; #$bar = "baz"
# $baz = $leftover[1]; #
# Write-Output($bar);
# Write-Output($baz);
# Write-Output($input);

############################################################################

#Scope
# $foo = "Global scope"
# function myFun{
#     $foo = "Function (local) scope" 
#     Write-Host $Global:foo
#     Write-Host $local:foo
#     Write-Host $foo
# }
# myFun
# Write-Host $Local:foo
# Write-Host $foo

#############################################################################

# Removing a variable
$var = "some variable"  #Define variable 'var' containing the string 'Some Variable'
$var
Remove-Variable -Name var
$var  #For test and show string 'Some Variable' on the console
#also can use alias 'rv'
rv varjv031



