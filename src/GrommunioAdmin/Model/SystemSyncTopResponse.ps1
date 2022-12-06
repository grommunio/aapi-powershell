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

.PARAMETER MaxUpdated
Maximum effective value for `filterUpdated`
.PARAMETER MaxEnded
Maximum effective value for `filterEnded`
.PARAMETER VarData

.OUTPUTS

SystemSyncTopResponse<PSCustomObject>
#>

function Initialize-GroAdminSystemSyncTopResponse {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${MaxUpdated},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${MaxEnded},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${VarData}
    )

    Process {
        'Creating PSCustomObject: GrommunioAdmin => GroAdminSystemSyncTopResponse' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "maxUpdated" = ${MaxUpdated}
            "maxEnded" = ${MaxEnded}
            "data" = ${VarData}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to SystemSyncTopResponse<PSCustomObject>

.DESCRIPTION

Convert from JSON to SystemSyncTopResponse<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

SystemSyncTopResponse<PSCustomObject>
#>
function ConvertFrom-GroAdminJsonToSystemSyncTopResponse {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: GrommunioAdmin => GroAdminSystemSyncTopResponse' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in GroAdminSystemSyncTopResponse
        $AllProperties = ("maxUpdated", "maxEnded", "data")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "maxUpdated"))) { #optional property not found
            $MaxUpdated = $null
        } else {
            $MaxUpdated = $JsonParameters.PSobject.Properties["maxUpdated"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "maxEnded"))) { #optional property not found
            $MaxEnded = $null
        } else {
            $MaxEnded = $JsonParameters.PSobject.Properties["maxEnded"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "data"))) { #optional property not found
            $VarData = $null
        } else {
            $VarData = $JsonParameters.PSobject.Properties["data"].value
        }

        $PSO = [PSCustomObject]@{
            "maxUpdated" = ${MaxUpdated}
            "maxEnded" = ${MaxEnded}
            "data" = ${VarData}
        }

        return $PSO
    }

}

