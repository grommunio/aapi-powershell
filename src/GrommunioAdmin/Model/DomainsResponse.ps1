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

.PARAMETER VarData

.OUTPUTS

DomainsResponse<PSCustomObject>
#>

function Initialize-GroAdminDomainsResponse {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${VarData}
    )

    Process {
        'Creating PSCustomObject: GrommunioAdmin => GroAdminDomainsResponse' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "data" = ${VarData}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to DomainsResponse<PSCustomObject>

.DESCRIPTION

Convert from JSON to DomainsResponse<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

DomainsResponse<PSCustomObject>
#>
function ConvertFrom-GroAdminJsonToDomainsResponse {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: GrommunioAdmin => GroAdminDomainsResponse' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in GroAdminDomainsResponse
        $AllProperties = ("data")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "data"))) { #optional property not found
            $VarData = $null
        } else {
            $VarData = $JsonParameters.PSobject.Properties["data"].value
        }

        $PSO = [PSCustomObject]@{
            "data" = ${VarData}
        }

        return $PSO
    }

}

