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
No description available.
.OUTPUTS

DefaultsCreateParamsResponse<PSCustomObject>
#>

function Initialize-GroAdminDefaultsCreateParamsResponse {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${VarData}
    )

    Process {
        'Creating PSCustomObject: GrommunioAdmin => GroAdminDefaultsCreateParamsResponse' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "data" = ${VarData}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to DefaultsCreateParamsResponse<PSCustomObject>

.DESCRIPTION

Convert from JSON to DefaultsCreateParamsResponse<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

DefaultsCreateParamsResponse<PSCustomObject>
#>
function ConvertFrom-GroAdminJsonToDefaultsCreateParamsResponse {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: GrommunioAdmin => GroAdminDefaultsCreateParamsResponse' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in GroAdminDefaultsCreateParamsResponse
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

