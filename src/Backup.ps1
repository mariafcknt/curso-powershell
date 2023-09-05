Param (
    [string]$Path = './app', 
    [string]$DestinationPath = './'
    #the parameters can be modified when the code is called
    #example: .\Backup.ps1 -Path './webapp'
)
If (-Not (Test-Path $Path)) {
    Throw "The source directory $Path does not exist, please specify an existing directory"
}

$date = Get-Date -format "dd-MM-yyyy"
$DestinationFile = "$($DestinationPath + 'backup-' + $date + '.zip')"
If (-Not (Test-Path $DestinationFile)){
    Compress-Archive -Path $Path -CompressionLevel 'Fastest' -DestinationPath "$($DestinationPath + 'backup-' + $date)"
    Write-Host "Created backup at $($DestinationPath + 'backup-' + $date + '.zip')"
} Else {
    Write-Error "Today's backup already exists"
}
#Path = the folder where the files you want to compress are located
#CompressionLevel = specifies how much the files must be compressed
#DestinationPath = the location of the compressed file

