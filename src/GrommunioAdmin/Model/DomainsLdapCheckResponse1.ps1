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

.PARAMETER Deleted
List of users that were deleted
.OUTPUTS

DomainsLdapCheckResponse1<PSCustomObject>
#>

function Initialize-GroAdminDomainsLdapCheckResponse1 {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${Deleted}
    )

    Process {
        'Creating PSCustomObject: GrommunioAdmin => GroAdminDomainsLdapCheckResponse1' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "deleted" = ${Deleted}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to DomainsLdapCheckResponse1<PSCustomObject>

.DESCRIPTION

Convert from JSON to DomainsLdapCheckResponse1<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

DomainsLdapCheckResponse1<PSCustomObject>
#>
function ConvertFrom-GroAdminJsonToDomainsLdapCheckResponse1 {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: GrommunioAdmin => GroAdminDomainsLdapCheckResponse1' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in GroAdminDomainsLdapCheckResponse1
        $AllProperties = ("deleted")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "deleted"))) { #optional property not found
            $Deleted = $null
        } else {
            $Deleted = $JsonParameters.PSobject.Properties["deleted"].value
        }

        $PSO = [PSCustomObject]@{
            "deleted" = ${Deleted}
        }

        return $PSO
    }

}

