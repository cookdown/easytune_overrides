Remove-Item -Path .\OfflineTuningStore -Force -ErrorAction SilentlyContinue 
New-Item -Type Directory -Name 'OfflineTuningStore'
$index = Get-Content ..\Index.json | ConvertFrom-Json
foreach($tp in $index){
$sourceDetailsFile = "..\$($tp.TuningPackName)\details.csv"
$sourceMetaDataFile = "..\$($tp.TuningPackName)\metadata.json"
$destinationDetailsFile = ".\OfflineTuningStore\$($tp.TuningPackName).csv"
$destinationMetaDataFile = ".\OfflineTuningStore\$($tp.TuningPackName).metadata.json"

Copy-Item $sourceDetailsFile $destinationDetailsFile
Copy-Item $sourceMetaDataFile $destinationMetaDataFile
}
