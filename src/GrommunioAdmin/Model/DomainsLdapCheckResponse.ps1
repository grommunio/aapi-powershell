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

.PARAMETER Orphaned
List of users whose externID could not be found in LDAP
.OUTPUTS

DomainsLdapCheckResponse<PSCustomObject>
#>

function Initialize-GroAdminDomainsLdapCheckResponse {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${Orphaned}
    )

    Process {
        'Creating PSCustomObject: GrommunioAdmin => GroAdminDomainsLdapCheckResponse' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "orphaned" = ${Orphaned}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to DomainsLdapCheckResponse<PSCustomObject>

.DESCRIPTION

Convert from JSON to DomainsLdapCheckResponse<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

DomainsLdapCheckResponse<PSCustomObject>
#>
function ConvertFrom-GroAdminJsonToDomainsLdapCheckResponse {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: GrommunioAdmin => GroAdminDomainsLdapCheckResponse' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in GroAdminDomainsLdapCheckResponse
        $AllProperties = ("orphaned")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "orphaned"))) { #optional property not found
            $Orphaned = $null
        } else {
            $Orphaned = $JsonParameters.PSobject.Properties["orphaned"].value
        }

        $PSO = [PSCustomObject]@{
            "orphaned" = ${Orphaned}
        }

        return $PSO
    }

}

