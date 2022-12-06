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

.PARAMETER User
No description available.
.PARAMETER Capabilities
List of capabilities the current user has
.OUTPUTS

ProfileResponse<PSCustomObject>
#>

function Initialize-GroAdminProfileResponse {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${User},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [String[]]
        ${Capabilities}
    )

    Process {
        'Creating PSCustomObject: GrommunioAdmin => GroAdminProfileResponse' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "user" = ${User}
            "capabilities" = ${Capabilities}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to ProfileResponse<PSCustomObject>

.DESCRIPTION

Convert from JSON to ProfileResponse<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

ProfileResponse<PSCustomObject>
#>
function ConvertFrom-GroAdminJsonToProfileResponse {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: GrommunioAdmin => GroAdminProfileResponse' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in GroAdminProfileResponse
        $AllProperties = ("user", "capabilities")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "user"))) { #optional property not found
            $User = $null
        } else {
            $User = $JsonParameters.PSobject.Properties["user"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "capabilities"))) { #optional property not found
            $Capabilities = $null
        } else {
            $Capabilities = $JsonParameters.PSobject.Properties["capabilities"].value
        }

        $PSO = [PSCustomObject]@{
            "user" = ${User}
            "capabilities" = ${Capabilities}
        }

        return $PSO
    }

}

