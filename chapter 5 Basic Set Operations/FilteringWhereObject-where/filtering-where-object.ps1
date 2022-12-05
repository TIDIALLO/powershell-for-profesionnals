##  Filter an enumeration by using a conditional expression
$names = @( "Aaron", "Albert", "Alphonse","Bernie", "Charlie", "Danny", "Ernie", "Frank")
#$names | Where-Object { $_ -like "A*" } #Aaron Albert Alphonse
$names | where { $_ -like "A*" } #Aaron Albert Alphonse
$names | ? { $_ -like "A*" } #Aaron Albert Alphons

