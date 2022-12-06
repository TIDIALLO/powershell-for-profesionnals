# A switch statement allows a variable to be tested for equality against a list of values.
# Each value is called a case, and the variable being switched on is checked for each switch case.
# It enables you to write a script that can choose from a series of options,
#but without requiring you to write a long series of if statements.

##       Simple Switch
# switch ($myValue) {
#     'First Condition' { 'First Action' }
#     'Second Condition' { 'Second Action' }
# }

##########################################"
##The -CaseSensitive parameter enforces switch statements to perform exact, 
#case-sensitive matching againstconditions."

# switch -CaseSensitive ('Condition') {
#     'condition' { 'First Action' }
#     'Condition' { 'Second Action' }  ## output
#     'conditioN' { 'Third Action' } 
# }

# Switch Statement with File Parameter
# switch -file input.txt {
#     'condition' { 'First Action' }
#     'test' { 'Second Action' }
#     'fail' { 'Third Action' } 
# }




# The -Regex parameter allows switch statements to perform regular expression matching against conditions.
# switch -Regex ('Condition') {
#     'Con\D+ion' { 'One or more non-digits' }
#     'Conditio*$' { 'Zero or more "o"' }
#     'C.ndition' { 'Any single char.' } 
#     '^C\w+ition$' { 'Anchors and one or more word chars.' }
#     'Test' { 'No match' }
# }


# The -Exact parameter enforces switch statements to perform exact, case-insensitive matching against stringconditions.
# switch -Exact ('Condition') {
#     'condition' { 'First Action' }
#     'Condition' { 'Second Action' }
#     'conditioN' { 'Third Action' } 
#     '^*ondition$' { 'Fourth Action' }
#     'Conditio*' { 'Fifth Action' }
# }

#  Switch Statement with Expressions
$myInput = 0;
switch ($myInput) {
    # because the result of the expression, 4,
    # does not equal our input this block should not be run.
    (2 + 2) { 'True. 2 +2 = 4' }  
    # because the result of the expression, 0,
    # does equal our input this block should be run.
    (2 - 2) { 'True. 2-2 = 0' }
    # because our input is greater than -1 and is less than 1
    # the expression evaluates to true and the block should be run.
    { $_ -gt -1 -and $_ -lt 1 } { 'True. Value is 0' }
}
   