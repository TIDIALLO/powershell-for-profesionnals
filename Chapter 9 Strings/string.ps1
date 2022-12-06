#creat a string
# "hello `r`nWorld"
# "Hello{0}World" -f [environment]::NewLine


# Using a here-string. This is the most common technique.
# @"
# Hello 
# world
# "@

# @"
# Simple
#     Multiline string
#         with "quotes"
# "@

# @'
# The following line won't be expanded
# $(Get-Date)
# because this is a literal here-string
# '@

#  Concatenating strings
# $string1 = "Power"
# $string2 = "Shell"
# "Greetings from $string1$string2"

# We can also join strings using the + operator.
# $string1 = "Greetings from"
# $string2 = "powershell"

# $string1 + " " + $string2


# Using subexpressions  :  $()
# "Tomorrow is $((Get-Date).AddDays(1).DayOfWeek)"
# 
# When used inside a double-quoted string, the escape character (backtick `) represents a special character.
# `0 #Null
# `a #Alert/Beep
# `b #Backspace
# `f #Form feed (used for printer output)
# `n #New line
# `r #Carriage return
# `t #Horizontal tab
# `v #Vertical tab (used for printer output)
# ex
# "This`tuses`ttab`r`nThis is on a second line"

# `# #Comment-operator
# `$ #Variable operator
# `` #Escape character
# `' #Single quote
# `" #Double quote

# Creating a basic string
# $myString = "Some basic text"
# $mySecondString = "String with a $variable"
#
# $myLiteralString = 'Simple text including special characters (`n) and a $variable-reference'
# $myLiteralString

# Format string
$hash = @{city = 'Dakar'}
$res = "you should really visit {0} -f $hash.city"
Write-Host $res #prints "You should really visit Berlin"
