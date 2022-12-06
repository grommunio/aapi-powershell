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
Whether ldap is currently active
.PARAMETER VarData
No description available.
.OUTPUTS

SystemMconfLdapResponse<PSCustomObject>
#>

function Initialize-GroAdminSystemMconfLdapResponse {
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
        'Creating PSCustomObject: GrommunioAdmin => GroAdminSystemMconfLdapResponse' | Write-Debug
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

Convert from JSON to SystemMconfLdapResponse<PSCustomObject>

.DESCRIPTION

Convert from JSON to SystemMconfLdapResponse<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

SystemMconfLdapResponse<PSCustomObject>
#>
function ConvertFrom-GroAdminJsonToSystemMconfLdapResponse {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: GrommunioAdmin => GroAdminSystemMconfLdapResponse' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in GroAdminSystemMconfLdapResponse
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

