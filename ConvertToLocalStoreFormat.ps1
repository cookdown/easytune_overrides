del -Path .\LocalStoreFormat -Force -ErrorAction SilentlyContinue 
mkdir LocalStoreFormat
$index = gc .\Index.json | ConvertFrom-Json
foreach($tp in $index){
$sourceDetailsFile = ".\$($tp.TuningPackName)\details.csv"
$sourceMetaDataFile = ".\$($tp.TuningPackName)\metadata.json"
$destinationDetailsFile = ".\LocalStoreFormat\$($tp.TuningPackName).csv"
$destinationMetaDataFile = ".\LocalStoreFormat\$($tp.TuningPackName).metadata.json"

Copy-Item $sourceDetailsFile $destinationDetailsFile
Copy-Item $sourceMetaDataFile $destinationMetaDataFile
}