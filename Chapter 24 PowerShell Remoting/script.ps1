# Using credentials from your local computer:
# Enter-PSSession 192.168.1.1
Get-WmiObject -Class win32_printer | Get-Member -MemberType Method
