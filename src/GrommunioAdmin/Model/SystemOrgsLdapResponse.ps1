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

.PARAMETER LdapAvailable
Whether the LDAP is currently available
.PARAMETER VarData
No description available.
.OUTPUTS

SystemOrgsLdapResponse<PSCustomObject>
#>

function Initialize-GroAdminSystemOrgsLdapResponse {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${LdapAvailable},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${VarData}
    )

    Process {
        'Creating PSCustomObject: GrommunioAdmin => GroAdminSystemOrgsLdapResponse' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "ldapAvailable" = ${LdapAvailable}
            "data" = ${VarData}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to SystemOrgsLdapResponse<PSCustomObject>

.DESCRIPTION

Convert from JSON to SystemOrgsLdapResponse<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

SystemOrgsLdapResponse<PSCustomObject>
#>
function ConvertFrom-GroAdminJsonToSystemOrgsLdapResponse {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: GrommunioAdmin => GroAdminSystemOrgsLdapResponse' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in GroAdminSystemOrgsLdapResponse
        $AllProperties = ("ldapAvailable", "data")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "ldapAvailable"))) { #optional property not found
            $LdapAvailable = $null
        } else {
            $LdapAvailable = $JsonParameters.PSobject.Properties["ldapAvailable"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "data"))) { #optional property not found
            $VarData = $null
        } else {
            $VarData = $JsonParameters.PSobject.Properties["data"].value
        }

        $PSO = [PSCustomObject]@{
            "ldapAvailable" = ${LdapAvailable}
            "data" = ${VarData}
        }

        return $PSO
    }

}

