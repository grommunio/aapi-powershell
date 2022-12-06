#
# grommunio Admin API
# grommunio administration REST API
# Version: 1.9.2
#

<#
.SYNOPSIS

No summary available.

.DESCRIPTION

No description available.

.PARAMETER Message
No description available.
.PARAMETER TaskID
ID of the task running the command
.OUTPUTS

Queued<PSCustomObject>
#>

function Initialize-GroAdminQueued {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Message},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${TaskID}
    )

    Process {
        'Creating PSCustomObject: GrommunioAdmin => GroAdminQueued' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "message" = ${Message}
            "taskID" = ${TaskID}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to Queued<PSCustomObject>

.DESCRIPTION

Convert from JSON to Queued<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

Queued<PSCustomObject>
#>
function ConvertFrom-GroAdminJsonToQueued {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: GrommunioAdmin => GroAdminQueued' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in GroAdminQueued
        $AllProperties = ("message", "taskID")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "message"))) { #optional property not found
            $Message = $null
        } else {
            $Message = $JsonParameters.PSobject.Properties["message"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "taskID"))) { #optional property not found
            $TaskID = $null
        } else {
            $TaskID = $JsonParameters.PSobject.Properties["taskID"].value
        }

        $PSO = [PSCustomObject]@{
            "message" = ${Message}
            "taskID" = ${TaskID}
        }

        return $PSO
    }

}

