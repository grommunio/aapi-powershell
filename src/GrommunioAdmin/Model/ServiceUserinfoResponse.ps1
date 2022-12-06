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

.PARAMETER Ldap
Whether the user is linked to an LDAP object
.OUTPUTS

ServiceUserinfoResponse<PSCustomObject>
#>

function Initialize-GroAdminServiceUserinfoResponse {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${Ldap}
    )

    Process {
        'Creating PSCustomObject: GrommunioAdmin => GroAdminServiceUserinfoResponse' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "ldap" = ${Ldap}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to ServiceUserinfoResponse<PSCustomObject>

.DESCRIPTION

Convert from JSON to ServiceUserinfoResponse<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

ServiceUserinfoResponse<PSCustomObject>
#>
function ConvertFrom-GroAdminJsonToServiceUserinfoResponse {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: GrommunioAdmin => GroAdminServiceUserinfoResponse' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in GroAdminServiceUserinfoResponse
        $AllProperties = ("ldap")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "ldap"))) { #optional property not found
            $Ldap = $null
        } else {
            $Ldap = $JsonParameters.PSobject.Properties["ldap"].value
        }

        $PSO = [PSCustomObject]@{
            "ldap" = ${Ldap}
        }

        return $PSO
    }

}

