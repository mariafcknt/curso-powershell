Param (
    [Parameter(Mandatory,
    HelpMessage = "Please provide a valid file name")]
    [String]$Path
)
Remove-Item $Path
Write-Host "File $Path removed successfully"

#Exemplo de uso: ./RemoveFile -Path './test.txt'