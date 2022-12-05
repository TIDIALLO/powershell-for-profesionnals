##Sort an enumeration in either ascending or descending orde
$names = @( "Aaron", "Aaron", "Bernie", "Charlie", "Danny" )

$names | Sort-Object
$names | sort
##To request descending order:
$names | Sort-Object descending
$names | sort ascending
##You can sort using an expression.
$names | Sort-Object { $_.length }
