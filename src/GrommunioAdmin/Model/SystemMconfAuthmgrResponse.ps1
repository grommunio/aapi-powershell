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

SystemMconfAuthmgrResponse<PSCustomObject>
#>

function Initialize-GroAdminSystemMconfAuthmgrResponse {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${AuthBackendSelection}
    )

    Process {
        'Creating PSCustomObject: GrommunioAdmin => GroAdminSystemMconfAuthmgrResponse' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "authBackendSelection" = ${AuthBackendSelection}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to SystemMconfAuthmgrResponse<PSCustomObject>

.DESCRIPTION

Convert from JSON to SystemMconfAuthmgrResponse<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

SystemMconfAuthmgrResponse<PSCustomObject>
#>
function ConvertFrom-GroAdminJsonToSystemMconfAuthmgrResponse {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: GrommunioAdmin => GroAdminSystemMconfAuthmgrResponse' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in GroAdminSystemMconfAuthmgrResponse
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

