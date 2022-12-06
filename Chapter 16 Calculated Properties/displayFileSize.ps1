# Get-childItem  -Path C:/docs | select-Object  Name=, CreationTime, Length

#  to display the file size in KB ? This is where calcualted properties comes handy.

Get-childItem  -Path C:/docs | select-Object  Name, @{Name = "Size_In_KB"; expression = { $_.Length / 1Kb } }, CreationTime, Length
# The Expression is what holds the calculation for calculated property. And yes, it can be anything!
