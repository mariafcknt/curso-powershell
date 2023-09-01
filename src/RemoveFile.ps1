Param (
    [Parameter(Mandatory,
    HelpMessage = "Please provide a valid path")]
    [String]$Path
)
Remove-Item $Path
Write-Host "The file $Path was removed successfully"

#How to use: ./RemoveFile -Path './test.txt'