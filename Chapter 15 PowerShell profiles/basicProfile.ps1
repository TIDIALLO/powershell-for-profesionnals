# 
#A PowerShell profile is used to load user defined variables and functions automatically.
# PowerShell profiles are not automatically created for users
# Create profile:
New-Item -ItemType $profile
# psedit $profile
"#Current host, current user" > $profile