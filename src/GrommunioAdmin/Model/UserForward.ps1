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

.PARAMETER ForwardType
No description available.
.PARAMETER Destination
Destination mail address
.OUTPUTS

UserForward<PSCustomObject>
#>

function Initialize-GroAdminUserForward {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${ForwardType},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Destination}
    )

    Process {
        'Creating PSCustomObject: GrommunioAdmin => GroAdminUserForward' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "forwardType" = ${ForwardType}
            "destination" = ${Destination}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to UserForward<PSCustomObject>

.DESCRIPTION

Convert from JSON to UserForward<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

UserForward<PSCustomObject>
#>
function ConvertFrom-GroAdminJsonToUserForward {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: GrommunioAdmin => GroAdminUserForward' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in GroAdminUserForward
        $AllProperties = ("forwardType", "destination")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "forwardType"))) { #optional property not found
            $ForwardType = $null
        } else {
            $ForwardType = $JsonParameters.PSobject.Properties["forwardType"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "destination"))) { #optional property not found
            $Destination = $null
        } else {
            $Destination = $JsonParameters.PSobject.Properties["destination"].value
        }

        $PSO = [PSCustomObject]@{
            "forwardType" = ${ForwardType}
            "destination" = ${Destination}
        }

        return $PSO
    }

}

