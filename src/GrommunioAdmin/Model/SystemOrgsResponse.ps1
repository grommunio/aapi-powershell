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

SystemOrgsResponse<PSCustomObject>
#>

function Initialize-GroAdminSystemOrgsResponse {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${VarData}
    )

    Process {
        'Creating PSCustomObject: GrommunioAdmin => GroAdminSystemOrgsResponse' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "data" = ${VarData}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to SystemOrgsResponse<PSCustomObject>

.DESCRIPTION

Convert from JSON to SystemOrgsResponse<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

SystemOrgsResponse<PSCustomObject>
#>
function ConvertFrom-GroAdminJsonToSystemOrgsResponse {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: GrommunioAdmin => GroAdminSystemOrgsResponse' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in GroAdminSystemOrgsResponse
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

