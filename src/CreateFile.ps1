Param(
    $Path
)
If (-Not $Path -eq '') {
    New-Item $Path #cria um novo arquivo no caminho/path passado como parâmetro
    Write-Host "File $Path was created"
} Else {
    Write-Error "Path cannot be empty"
}


#Exemplo de uso
#./CreateFile.ps1 -Path './newfile.txt' 