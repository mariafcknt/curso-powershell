Param(
    $Path
)
If (-Not $Path -eq '') {
    New-Item $Path #creates a new file at the path passed as a parameter
    Write-Host "File $Path was created"
} Else {
    Write-Error "Path cannot be empty"
}

#Example of use
#./CreateFile.ps1 -Path './newfile.txt' 