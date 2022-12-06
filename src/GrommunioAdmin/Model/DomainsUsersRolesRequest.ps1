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

.PARAMETER Roles
List of role IDs the user is associated with
.OUTPUTS

DomainsUsersRolesRequest<PSCustomObject>
#>

function Initialize-GroAdminDomainsUsersRolesRequest {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [Int32[]]
        ${Roles}
    )

    Process {
        'Creating PSCustomObject: GrommunioAdmin => GroAdminDomainsUsersRolesRequest' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "roles" = ${Roles}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to DomainsUsersRolesRequest<PSCustomObject>

.DESCRIPTION

Convert from JSON to DomainsUsersRolesRequest<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

DomainsUsersRolesRequest<PSCustomObject>
#>
function ConvertFrom-GroAdminJsonToDomainsUsersRolesRequest {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: GrommunioAdmin => GroAdminDomainsUsersRolesRequest' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in GroAdminDomainsUsersRolesRequest
        $AllProperties = ("roles")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "roles"))) { #optional property not found
            $Roles = $null
        } else {
            $Roles = $JsonParameters.PSobject.Properties["roles"].value
        }

        $PSO = [PSCustomObject]@{
            "roles" = ${Roles}
        }

        return $PSO
    }

}

