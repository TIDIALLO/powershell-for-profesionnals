# Basic Parameters
# A function can be defined with parameters using the param block:
function Write-Greeting {
    param (
        [Parameter(Mandatory, Position = 0)]
        [string]$Name,
        [Parameter(Mandatory, Position = 1)]
        [Int]$age
    )
    "Hello $name, you are $age years old"
}
# call thze fiunction
# Write-Greeting
# $greeting = Write-Greeting "Jim" 82
# $greeting = Write-Greeting -name "Bob" -age 82 #call with named function

# $greeting

# Or using the simple function syntax:
# function Write-Greeting ($name, $age) {
#  "Hello $name, you are $age years old."
# }

# advanced function
