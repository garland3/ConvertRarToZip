# might need to run this command first
# set-ExecutionPolicy Unrestricted 
# Then to run the script type
# . .\zipExtractedRarFolders.ps1

# Will need this extension installed
# http://pscx.codeplex.com/

$app = 'C:\MATLAB\SupportPackages\R2013a\7zip\7z.exe'
Write-Output "$app"

$folders = dir  -Directory


ForEach ($folder in $folders){
   
   
    #$outputFolder = [io.path]::GetFileNameWithoutExtension("$rar")
    Write-Output "$folder"
    Write-Zip -IncludeEmptyDirectories ".\$folder" "$folder.zip"
    #& $app "a" "-tzip" "$folder.zip" "subdir\$folder
}


# http://stackoverflow.com/questions/25187048/run-executable-from-powershell-script-with-parameters


# E:\P3>7z.exe x "Project 3  Reverse Engineering_bzalins_attempt_2015-04-23-17-56-20_bzalins-P3.rar" -o"Project 3  ReverseEngineering_bzalins_attempt_2015-04-23-17-56-20_bzalins-P3"
