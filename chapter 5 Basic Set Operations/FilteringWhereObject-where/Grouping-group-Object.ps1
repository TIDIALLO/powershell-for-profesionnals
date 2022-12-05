#n group an enumeration based on an expression
$names = @( "Aaron", "Albert", "Alphonse", "Bernie", "Charlie", "Danny", "Ernie", "Frank")
# $names | Group-Object -Property Count
# $names | Group-Object -Property Length
$names | Group -Property Count
$names | Group -Property Length

##  Group is an alias of Group-Object