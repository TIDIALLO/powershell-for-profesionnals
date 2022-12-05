#Selecting a subset of the properties:
$dir = dir "D:\tutos"
#$dir | Select-Object Name, FullName, Attributes
#$dir | select Name, FullName, Attributes    #'select' is an alias of 'Select-Object'
$dir | select -first 2 *  #Selecting the first element, and show all its properties: