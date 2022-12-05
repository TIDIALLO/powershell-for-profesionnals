## Foreach
# $Names = @('Amy', 'Bob', 'Celine', 'David')
# foreach ($name in $names) {
#     Write-Host "Hi, my name is $Name!"
# }

# $numbers = foreach ($number in 1..10) {
#     Write-Host($number)    
#     $Number # Alternatively, Write-Output $Number

# }

# $numbers = @()
# foreach ($number in 1..20) {
#     $numbers += $number
# }
# $numbers

########################################################################
#                For
########################################################################
# for ($i = 0; $i -le 5; $i++) {
#     "$i"
# }
           
########################   ForEach() Method     ########################
#(1..10).ForEach({ $_ * $_ })

########            ForEach-Object          ########################
########Usage########################
# $object | ForEach-Object {
#     code_block
# }

$names = @("Any", "Bob", "Celine", "David")
# $names | ForEach-Object {
#     "Hi, my name is $_!"
# }

##   Foreach-Object has two default aliases, foreach and % (shorthand syntax). 
# $names | % { #%is an alias of ForEach-Object
#     "Hi, my name is $_!"
# }

# $names | foreach { #foreach is an alias of Foreach-Object
#     "Hi, my name is $_!"
# }

# Advanced usage

# Foreach-Object stands out from the alternative foreach solutions because it's a cmdlet which means it's designed
# to use the pipeline. Because of this, it has support for three scriptblocks just like a cmdlet or advanced function:

# Begin: Executed once before looping through the items that arrive from the pipeline. Usually used to create
# functions for use in the loop, creating variables, opening connections (database, web +) etc.

# Process: Executed once per item arrived from the pipeline. "Normal" foreach codeblock. This is the default
# used in the examples above when the parameter isn't specified.

# End: Executed once after processing all items. Usually used to close connections, generate a report etc.


# "Any", "Bob", "Celine", "David" | ForEach-Object -Begin {
#     $results = @()
# }-Process {
#     #Create and store message
#     $results += "Hi, my name is $_!"
# } -End {
#     #Count messages and output
#     Write-Host "Total message: $($results.Count)"
#     $results
# }


###########     Continu         ###########
# The Continue operator works in For, ForEach, While and Do loops. It skips the current iteration of the loop, jumping
# to the top of the innermost loop.

# $i = 0
# while ($i -lt 10) {
#     $i +=1  
#     if ($i -eq 7) { Continue}
#     $i
# }

# : Break
# The break operator will exit a program loop immediately. It can be used in For, ForEach, While and Do loops or in a
# Switch Statement
# $i = 0
# while ($i -lt 10) {
#     $i +=1  
#     if ($i -eq 7) { break}
#     $i
# }

########################################################################################

# $i = 0 
# :mainLoop while ($i -lt 15) {
#     Write-Host $i -ForegroundColor 'Cyan'
#     $j = 0
#     while ($j -lt 15) {
#         Write-Host $j -ForegroundColor 'Magenta'
#         $k = $i*$j
#         Write-Host $k -ForegroundColor 'Green' 
#         if($k -gt 100){
#             break mainLoop
#         }
#         $j++
#     }
#     $i++
# }
# Write-Host "i = $i "
# Note: This code will increment $i to 8 and $j to 13 which will cause $k to equal 104. Since $k exceed 100, the code
# will then break out of both loops


##############################################################################################

##      While
# $i = 10
# while ($i -ge 0) {
#     $i
#     $i--
# }

##. This example will spawn a notepad process and
# then sleep the current shell as long as that process is running. When you manually close the notepad instance the
# while condition will fail and the loop will break

# Start-Process notepad.exe
# while (Get-Process notepad -ErrorAction SilentlyContinue) {
#     Start-Sleep -Milliseconds 500
# }

##############################################################################################
##                      Boucle Do
##############################################################################################
$i = 0

# do {
#     $i ++ 
#     "Number $i"
# } while ($i -ne 3)

#Loop until the condition is true, in other words, loop while the condition is false:

do {
    $i ++ 
    "Number $i"
} until ($i -eq 3)


# Do-While and Do-Until are antonymous loops. If the code inside the same, the condition will be reversed. The
# example above illustrates this behaviour