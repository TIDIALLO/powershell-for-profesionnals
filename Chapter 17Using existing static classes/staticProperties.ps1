# Section 17.1: Adding types
# By Assembly Name, add library

# Add-Type -AssemblyName "System.Math"

# or by file path:
# Add-Type -Path "D:\Libs\CustomMath.dll"
# To Use added type:
# [CustomMath.NameSpace]::Method(param1, $variableParam, [int]castMeAsIntParam)


# Using the .Net Math Class
# [System.Math] | Get-Member -Static -MemberType Method
[System.Math]::Floor(9.42)  #Output 9
[System.Math]:: Ceiling(9.42) #10
[System.Math]::Pow(4, 3) #64
[System.Math]::Sqrt(49) #7

# Creating new GUID instantly
[guid]::NewGuid()
# To get the GUID as a [String] only, referenced the .Guid property:
[guid]::NewGuid().Guid