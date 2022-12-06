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

.PARAMETER GrommunioAuthJwt
API access token
.PARAMETER Csrf
CSRF token
.OUTPUTS

LoginResponse<PSCustomObject>
#>

function Initialize-GroAdminLoginResponse {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${GrommunioAuthJwt},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Csrf}
    )

    Process {
        'Creating PSCustomObject: GrommunioAdmin => GroAdminLoginResponse' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "grommunioAuthJwt" = ${GrommunioAuthJwt}
            "csrf" = ${Csrf}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to LoginResponse<PSCustomObject>

.DESCRIPTION

Convert from JSON to LoginResponse<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

LoginResponse<PSCustomObject>
#>
function ConvertFrom-GroAdminJsonToLoginResponse {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: GrommunioAdmin => GroAdminLoginResponse' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in GroAdminLoginResponse
        $AllProperties = ("grommunioAuthJwt", "csrf")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "grommunioAuthJwt"))) { #optional property not found
            $GrommunioAuthJwt = $null
        } else {
            $GrommunioAuthJwt = $JsonParameters.PSobject.Properties["grommunioAuthJwt"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "csrf"))) { #optional property not found
            $Csrf = $null
        } else {
            $Csrf = $JsonParameters.PSobject.Properties["csrf"].value
        }

        $PSO = [PSCustomObject]@{
            "grommunioAuthJwt" = ${GrommunioAuthJwt}
            "csrf" = ${Csrf}
        }

        return $PSO
    }

}

