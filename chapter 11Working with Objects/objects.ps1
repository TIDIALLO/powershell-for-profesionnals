# Get-Item c:/windows | Get-Member
# Get-Item C:\windows  | Format-List -Property *

############    Updating Objects
# Adding properties
$object = New-Object -TypeName psobject -Property @{
    Name    = $env:USERNAME
    ID      = 12
    Address = $null
}
# $object
# Add-Member -InputObject $object -Name "fName" -Value "Tidiane" -MemberType NoteProperty
# $object
# # We can also add properties with Select-Object Cmdlet (so called calculated properties):
# $newObject = $object | Select-Object BaseObject*, @{label = "SomeOtherProp"; expression = { 'Another value' } }
# $newObject

# # The command above can be shortened to this:
# $newObject = $Object | Select *, @{l = 'SomeOtherProp'; e = { 'Another value' } }
# $newObject

###############################################################################
# $newObject
# $object = $newObject | Select-Object * -ExcludeProperty ID, Address
# $object


# Creating a new object
# creating a new objects with a few properties:
# $simpleObject = New-Object -TypeName psobject -Property  @{
#     Name    = $env:USERNAME
#     ID      = 1
#     Address = $null
# }
# $simpleObject

# $newCollection = @()
# $newCollection += New-Object -TypeName PSObject -Property @{
#     Name    = $env:username
#     ID      = 12
#     Address = $null
# }
###############################################################################
# A less common way of creating objects that you'll still find on the internet is the following:
# $newObject = 'unuseddummy' | Select-Object -Property Name, ID, Address
# $newObject.Name = $env:username
# $newObject.ID = 12
# $newObject
###############################################################################
###############################################################################
# Creating Instances of Generic Classes

#Nullable System.DateTime
# [System.Nullable[datetime]]$nullableDate = Get-Date -Year 2022
# $nullableDate
# $nullableDate.GetType().FullName
# $nullableDate.$null
# $nullableDate

# #Normal System.DateTime
# [datetime]$aDate = Get-Date -year 2013
# $aDate
# $aDate.GetType().FullName
#  $aDate = $null #Throws exception when PowerShell attempts to convert null to   
# # output 
# Friday, December 6, 2013 10:49:29 AM
# System.DateTime
# Impossible de convertir la valeur Null en type « System.DateTime ».
# Au caractère D:\PowerShell\scripts\powershell for professionnal\chapter 11Working with Objects\objects.ps1:64 : 2        
# +  $aDate = $null #Throws exception when PowerShell attempts to convert ...
# +  ~~~~~~~~~~~~~~
#     + CategoryInfo          : MetadataError: (:) [], ArgumentTransformationMetadataException
#     + FullyQualifiedErrorId : RuntimeException
###############################################################################

###############################################################################
#       Generic Collections are also possible

# [System.Collections.Generic.SortedDictionary[int, String]]$dict =
# [System.Collections.Generic.SortedDictionary[int, String]]::new()
# $dict.GetType().FullName
# $dict.Add(1, 'a')
# $dict.Add(2, 'b')
# $dict.Add(3, 'c')
# $dict.Add('4', 'd') #powershell auto converts '4' to 4
# $dict.Add('5.1', 'c') #powershell auto converts '5.1' to 5
# $dict
# $dict.Add('z', 'z') #powershell can't convert 'z' to System.Int32 so it throws an error













###############################################################################
###############################################################################
