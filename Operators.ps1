## Operators
# 2 -eq 2 #Equal to(==)
# 2 -ne 4 #Not Equal to (!=)
# 5 -gt 2 # Greater-then (>)
# 5 -ge 2 # Greater-then or equal to(>=)
# 5 -lt 10 # less-then (>)
# 5 -gt 10 # less-then  or euqal to(>=)
############################################################

#String comparison operators

# "myString" -like "*String"  # Match using the wildcard character (*)
# "myString" -notlike "Other*" # Does not match using the wildcard character (*)
# "myString" -match "^String$" # Matches a string using regular expressions

# "myString" -notmatch "Other*" # Does not match a string using regular expressions

####################################################################

#Collection comparison operators:

# "abc","def" -contains "123" # Returns true when the value (right) is present in the array (left)
# "abc","def" -notcontains "123" # Returns true when the value (right) is not present
#                                 # in the array (left)
# "abc" -in "abc","def" # Returns true when the value (left) is present in the array (right)
# "123" -notin "abc", "def" # Returns true when the value (left) is not present in the array (right)


###################################################################

#Section 3.2: Arithmetic Operators

# 1 + 2 # Addition
# 1 - 2 # Subtraction
# -1 # Set negative value
# 1 * 2 # Multiplication
# 1 / 2 # Division
# 1 % 2 # Modulus
# 100 -shl 2 # Bitwise Shift-left
# 100 -shr 1 # Bitwise Shift-right

######################################################################

#Assignment Operators

#Simple arithmetic:
# $var = 1 # Assignment. Sets the value of a variable to the specified value
# $var += 2 # Addition. Increases the value of a variable by the specified value
# $var -= 1 # Subtraction. Decreases the value of a variable by the specified value
# $var *= 2 # Multiplication. Multiplies the value of a variable by the specified value
# $var /= 2 # Division. Divides the value of a variable by the specified value
# $var %= 2 # Modulus. Divides the value of a variable by the specified value and then
# # assigns the remainder (modulus) to the variable  
#Increment and decrement:
# $var++ # Increases the value of a variable, assignable property, or array element by 1
# $var-- # Decreases the value of a variable, assignable property, or array element by 1
######################################################################
######################################################################


#Section 3.4: Redirection Operators
#Success output stream:
# cmdlet > file # Send success output to file, overwriting existing content
# cmdlet >> file # Send success output to file, appending to existing content
# cmdlet 1>&2 # Send success and error output to error stream

########  Error output stream: ########
# cmdlet 2> file # Send error output to file, overwriting existing content
# cmdlet 2>> file # Send error output to file, appending to existing content
# cmdlet 2>&1 # Send success and error output to success output stream

#####       Warning output stream: (PowerShell 3.0+)    ############
# cmdlet 3> file # Send warning output to file, overwriting existing content
# cmdlet 3>> file # Send warning output to file, appending to existing content
# cmdlet 3>&1 # Send success and warning output to success output stream

##########              Verbose output stream: (PowerShell 3.0+)        ###############
# cmdlet 4> file # Send verbose output to file, overwriting existing content
# cmdlet 4>> file # Send verbose output to file, appending to existing content
# cmdlet 4>&1 # Send success and verbose output to success output stream


###############     Debug output stream: (PowerShell 3.0+)
# cmdlet 5> file # Send debug output to file, overwriting existing content
# cmdlet 5>> file # Send debug output to file, appending to existing content
# cmdlet 5>&1 # Send success and debug output to success output stream


########                Information output stream: (PowerShell 5.0+)        ###########
# cmdlet 6> file # Send information output to file, overwriting existing content
# cmdlet 6>> file # Send information output to file, appending to existing content
#cmdlet 6>&1 # Send success and information output to success output stream
#######               All output streams:           #######
# cmdlet *> file # Send all output streams to file, overwriting existing content
# cmdlet *>> file # Send all output streams to file, appending to existing content
# cmdlet *>&1 # Send all output streams to success output stream

######################################################################################
##         Mixing operand types, the type of the left operand dictates the behavior ##
######################################################################################

#For Addition
# "4" + 2 # Gives "42"
# 4 + "2" # Gives 6
# 1,2,3 + "Hello" # Gives 1,2,3,"Hello"
# "Hello" + 1,2,3 # Gives "Hello1 2 3"

#For Multiplication
# "3" * 2 # Gives "33"
# 2 * "3" # Gives 6
# 1,2,3 * 2 # Gives 1,2,3,1,2,3
# 2 * 1,2,3 # Gives an error op_Multiply is missing

### The impact may have hidden consequences on comparison operators:
# $a = Read-Host "Enter a number"
# $a -gt 5 

###############################

# : Logical Operators
# -and # Logical and
# -or # Logical or
# -xor # Logical exclusive or
# -not # Logical not
# ! # Logical no
##############################################################
##      String Manipulation Operators
##############################################################
#"The rain in Seattle" -replace 'rain','hail' #Returns: The hail in Seattle
#"kenmyer@contoso.com" -replace '^[\w]+@(.+)', '$1' #Returns: contoso.com


####################################

##  Split and Join operators:
# "A B C" -split " " #Returns an array string collection object containing A,B and C.
# #The -join operator joins an array of strings into a single string.
# "E","F","G" -join ":" #Returns a single string: E:F:G

            ####################################
            ####################################
