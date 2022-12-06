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

.PARAMETER New
New password
.OUTPUTS

DomainsUsersPasswordRequest<PSCustomObject>
#>

function Initialize-GroAdminDomainsUsersPasswordRequest {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${New}
    )

    Process {
        'Creating PSCustomObject: GrommunioAdmin => GroAdminDomainsUsersPasswordRequest' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "new" = ${New}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to DomainsUsersPasswordRequest<PSCustomObject>

.DESCRIPTION

Convert from JSON to DomainsUsersPasswordRequest<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

DomainsUsersPasswordRequest<PSCustomObject>
#>
function ConvertFrom-GroAdminJsonToDomainsUsersPasswordRequest {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: GrommunioAdmin => GroAdminDomainsUsersPasswordRequest' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in GroAdminDomainsUsersPasswordRequest
        $AllProperties = ("new")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "new"))) { #optional property not found
            $New = $null
        } else {
            $New = $JsonParameters.PSobject.Properties["new"].value
        }

        $PSO = [PSCustomObject]@{
            "new" = ${New}
        }

        return $PSO
    }

}

