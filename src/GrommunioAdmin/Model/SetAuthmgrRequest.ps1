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

.PARAMETER AuthBackendSelection
No description available.
.OUTPUTS

SetAuthmgrRequest<PSCustomObject>
#>

function Initialize-GroAdminSetAuthmgrRequest {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${AuthBackendSelection}
    )

    Process {
        'Creating PSCustomObject: GrommunioAdmin => GroAdminSetAuthmgrRequest' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "authBackendSelection" = ${AuthBackendSelection}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to SetAuthmgrRequest<PSCustomObject>

.DESCRIPTION

Convert from JSON to SetAuthmgrRequest<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

SetAuthmgrRequest<PSCustomObject>
#>
function ConvertFrom-GroAdminJsonToSetAuthmgrRequest {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: GrommunioAdmin => GroAdminSetAuthmgrRequest' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in GroAdminSetAuthmgrRequest
        $AllProperties = ("authBackendSelection")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "authBackendSelection"))) { #optional property not found
            $AuthBackendSelection = $null
        } else {
            $AuthBackendSelection = $JsonParameters.PSobject.Properties["authBackendSelection"].value
        }

        $PSO = [PSCustomObject]@{
            "authBackendSelection" = ${AuthBackendSelection}
        }

        return $PSO
    }

}

