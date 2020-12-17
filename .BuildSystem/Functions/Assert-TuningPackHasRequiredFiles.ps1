<#
.SYNOPSIS
    Test that the passed tuning pack name has the required CSV, Metadata, and ReadMe
#>

    Param (
        [parameter(Mandatory=$True)]
        [String]
        $TuningPackName,

        [parameter(Mandatory=$True)]
        [String]
        $TuningStorePath
    )

