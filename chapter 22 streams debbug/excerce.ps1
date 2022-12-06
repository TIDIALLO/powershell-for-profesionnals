# Write-Output
# Write-Output generates output. This output can go to the next command after the pipeline or to the console so it's
#simply displayed.

# 1.) Output to the next Cmdlet in the pipeline

# Write-Output 'My next' | Out-File -FilePath $env:TEMP\test.txt
# Write-Output 'Bob' ForEach-Object{
#     "my name is $_"
# }
# # 2.) Output to the console since Write-Output is the last command in the pipeline
# Write-Output 'Hello world'
# # 3.) 'Write-Output' CmdLet missing, but the output is still considered to be 'Write-Output'
# 'Hello world'

# Section 22.2: Write Preferences
# Messages can be written with;
# Write-Verbose "Detailed Message"
# Write-Information "Information Message"
# Write-Debug "Debug Message"
# Write-Progress "Progress Message"
# Write-Warning "Warning Message"

# $InformationPreference = "SilentlyContinue"
# Write-Information "This message will not be shown and execution continues"

# $InformationPreference = "Stop"
# Write-Information "This message is shown and execution terminates