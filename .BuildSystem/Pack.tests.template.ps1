<#
.SYNOPSIS
    Test file for Pester that will verify that the tuning pack files are in a valid state and meet all defined guidelines. Pull requests that have failing tests are unlikely to be accepted.
#>

[CmdletBinding()]
Param()

$indexFileName = "Index.json"
$packFileName = "details.csv"

. .\encoding-helpers.ps1

$location = Split-Path $script:MyInvocation.MyCommand.Path

$packFiles = Get-ChildItem "..\" -Recurse -Filter $packFileName

$indexPath = Join-Path $location "..\$indexFileName"
$index  = get-content $indexPath -Raw

foreach ($packFile in $packFiles) {
    $folderName = (Split-Path $packFile.psparentpath -Leaf)
    $folderPath = split-path $packFile.FullName
    $metadataPath = Join-Path $folderPath "metadata.json"
    $readmePath = Join-Path $folderPath "README.md"
    $metadataContents = Get-Content $metadataPath -Raw -ErrorAction SilentlyContinue
    
    # Even with ErrorAction Silent, this could still throw terminating exceptions
    $metadataJson = $null
    try { $metadataJson = $metadataContents | ConvertFrom-Json -ErrorAction SilentlyContinue } catch {}

    Describe "$folderName" -Tag "$folderPath" {
        Context 'Pack Contents' {
            It "Has Metadata" {
                Test-Path $metadataPath | Should Be True
            }

            It "Has a ReadMe" {
                Test-Path $readmePath | Should Be True
            }

            It "Has a case-sensitive details.csv" {
                $packFile.Name | Should BeExactly "details.csv"
            }
        }
        
        Context 'Pack Listing' {
            
            It "Appears in the index" {
                $regex = '"TuningPackName"\s*:\s*"' + $folderName + '"'
                $index -match $regex | Should Be True
            }

        }

        Context 'details.csv' {
            
            It "details.csv is ASCII" {
                Get-FileEncoding $packFile.FullName | Should Be "ASCII" 
            }

            It "details.csv has content" {
                Get-Content $packFile.FullName | Should Not BeNullOrEmpty
            }
        }

        Context 'ReadMe.md' {
            
            It "ReadMe.md is ASCII" {
                Get-FileEncoding $readmePath | Should Be "ASCII" 
            }

            It "ReadMe.md has content" {
                Get-Content $readmePath | Should Not BeNullOrEmpty
            }
        }

        Context 'metadata.json' {

            It "metadata.json has content" {
                $metadataContents | Should Not BeNullOrEmpty
            }

            It "metadata.json is valid json" {
                {$metadataContents | ConvertFrom-Json } | Should Not Throw 
            }

            It "Has a valid Author" {
                $metadataJson.Author | Should Not BeNullOrEmpty
            }

            It "Has a valid Description" {
                $metadataJson.Description | Should Not BeNullOrEmpty
            }
    
            It "Has a valid URL" {
                $metadataJson.URL | Should Not BeNullOrEmpty
                $validUrl = [uri]::IsWellFormedUriString($metadataJson.URL, [system.urikind]::Absolute)
                $validUrl | Should Be True
            }
        }
    }
}