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

.PARAMETER Message
Contact import for multiple domains at once
.OUTPUTS

DomainsLdapImportUserResponse<PSCustomObject>
#>

function Initialize-GroAdminDomainsLdapImportUserResponse {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Message}
    )

    Process {
        'Creating PSCustomObject: GrommunioAdmin => GroAdminDomainsLdapImportUserResponse' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "message" = ${Message}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to DomainsLdapImportUserResponse<PSCustomObject>

.DESCRIPTION

Convert from JSON to DomainsLdapImportUserResponse<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

DomainsLdapImportUserResponse<PSCustomObject>
#>
function ConvertFrom-GroAdminJsonToDomainsLdapImportUserResponse {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: GrommunioAdmin => GroAdminDomainsLdapImportUserResponse' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in GroAdminDomainsLdapImportUserResponse
        $AllProperties = ("message")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "message"))) { #optional property not found
            $Message = $null
        } else {
            $Message = $JsonParameters.PSobject.Properties["message"].value
        }

        $PSO = [PSCustomObject]@{
            "message" = ${Message}
        }

        return $PSO
    }

}

