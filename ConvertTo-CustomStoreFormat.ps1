Remove-Item -Path .\CustomStoreFormat -Force -ErrorAction SilentlyContinue 
New-Item -Type Directory -Name 'CustomStoreFormat'
$index = Get-Content .\Index.json | ConvertFrom-Json
foreach($tp in $index){
$sourceDetailsFile = ".\$($tp.TuningPackName)\details.csv"
$sourceMetaDataFile = ".\$($tp.TuningPackName)\metadata.json"
$destinationDetailsFile = ".\CustomStoreFormat\$($tp.TuningPackName).csv"
$destinationMetaDataFile = ".\CustomStoreFormat\$($tp.TuningPackName).metadata.json"

Copy-Item $sourceDetailsFile $destinationDetailsFile
Copy-Item $sourceMetaDataFile $destinationMetaDataFile
}
