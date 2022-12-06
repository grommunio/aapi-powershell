#
# grommunio Admin API
# grommunio administration REST API
# Version: 1.9.2
#

<#
.SYNOPSIS

No summary available.

.DESCRIPTION

Log file entry

.PARAMETER Level
Priority level number as described in journalctl (1)
.PARAMETER Message
Log message
.PARAMETER Time
Precise date/time string including fractional seconds
.PARAMETER Runtime
Time since last reboot
.OUTPUTS

Data1<PSCustomObject>
#>

function Initialize-GroAdminData1 {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${Level},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Message},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [ValidatePattern("^\d{4}-\d{2}-\d{2} \d{2}:\d{2}:\d{2}\.\d{1,6}$")]
        [String]
        ${Time},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Decimal]]
        ${Runtime}
    )

    Process {
        'Creating PSCustomObject: GrommunioAdmin => GroAdminData1' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "level" = ${Level}
            "message" = ${Message}
            "time" = ${Time}
            "runtime" = ${Runtime}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to Data1<PSCustomObject>

.DESCRIPTION

Convert from JSON to Data1<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

Data1<PSCustomObject>
#>
function ConvertFrom-GroAdminJsonToData1 {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: GrommunioAdmin => GroAdminData1' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in GroAdminData1
        $AllProperties = ("level", "message", "time", "runtime")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "level"))) { #optional property not found
            $Level = $null
        } else {
            $Level = $JsonParameters.PSobject.Properties["level"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "message"))) { #optional property not found
            $Message = $null
        } else {
            $Message = $JsonParameters.PSobject.Properties["message"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "time"))) { #optional property not found
            $Time = $null
        } else {
            $Time = $JsonParameters.PSobject.Properties["time"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "runtime"))) { #optional property not found
            $Runtime = $null
        } else {
            $Runtime = $JsonParameters.PSobject.Properties["runtime"].value
        }

        $PSO = [PSCustomObject]@{
            "level" = ${Level}
            "message" = ${Message}
            "time" = ${Time}
            "runtime" = ${Runtime}
        }

        return $PSO
    }

}

