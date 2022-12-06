# # Writing Functions with Advanced Lifecycle
# function Write-FromPipeline {
#     [CmdletBinding()]
#     param (
#         [Parameter(ValueFromPipeline)]
#         $myInput
#     )
#     begin {
#         Write-Verbose -Message  "Beginning Write-FromPipeline"
#     }
#     process {
#         Write-Output -InputObject $myInput
#     }
#     end {
#         Write-Verbose -Message "Ending Write-FromPipeline"
#     }
# }
# $foo = 'hello', 'world', 1, 2, 3
# $foo | Write-FromPipeline -Verbose


# Basic Pipeline Support in Functions
function Write-FromPipeline {
    param (
        [Parameter(ValueFromPipeline)] # This sets the ParameterAttribute
        [String]$Input
    )
    Write-Host $Input
}
$foo = 'Hello World!'
$foo | Write-FromPipeline