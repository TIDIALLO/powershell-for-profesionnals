#  Access a hash table value by key
# $hashTable = @{
#     key1 = "value 1"
#     key2 = "value 2"
# }
# $hashTable.Key1  Value 1

# An example of accessing a key with invalid characters for a property name:
# $hashTable = @{
#  'Key 1' = 'Value3'
#  Key2 = 'Value4'
# }
# $hashTable.'Key 1' #Value3

#######################################################
#Creating a Hash Table
#creating an empty hashtable
#$hashTable = @{}

##: Creating a Hash Table
# $hashTable = @{
#     Name1 = 'Value'
#     Name2 = 'Value'
#     Name3 = 'Value3'
# }

###Add a key value pair to an existing hash table
# $hashTable = @{
#     Key1 = 'Value1'
# }
# $hashTable += @{key2 = "value2" }
# $hashTable

###Add a key value pair to an existing hash table using Add methode
# $hashTable = @{k1 = "v1"}
# $hashTable.Add("k2" , "v2")
# $hashTable

###################################################
#: Remove a key value pair from an existing hashtable
# $hashTable = @{
#     k1 = "v1"
#     k2 = "v2"
# }
# $hashTable.Remove("k2")
# $hashTable

###################################################
# Enumerating through keys and Key-Value Pairs
# Enumerating through Keys
# foreach ($key in $var1.Keys) {
#     $value = $var1[$key]
#     # or
#     $value = $var1.$key
# }
###################################################
# Enumerating through Key-Value Pairs
# foreach ($keyvaluepair in $var1.GetEnumerator()) {
#     $key1 = $_.Key1
#     $val1 = $_.Val1
# }
###################################################
#  Looping over a hash table
# $hashTable = @{
#     k1 = "v1"
#     k2 = "v2"
#     k3 = "v3"
#     k4 = "v4"
# }

# foreach ($key in $hashTable.Keys) {
#     $v = $hashTable.$key
#     Write-Host "`t$key : $v"
# }
# #sortie
# k1 : v1
# k3 : v3
# k4 : v4
# k2 : v2