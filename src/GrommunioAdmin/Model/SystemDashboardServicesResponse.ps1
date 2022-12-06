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

.PARAMETER Services
List of systemd services
.OUTPUTS

SystemDashboardServicesResponse<PSCustomObject>
#>

function Initialize-GroAdminSystemDashboardServicesResponse {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${Services}
    )

    Process {
        'Creating PSCustomObject: GrommunioAdmin => GroAdminSystemDashboardServicesResponse' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "services" = ${Services}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to SystemDashboardServicesResponse<PSCustomObject>

.DESCRIPTION

Convert from JSON to SystemDashboardServicesResponse<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

SystemDashboardServicesResponse<PSCustomObject>
#>
function ConvertFrom-GroAdminJsonToSystemDashboardServicesResponse {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: GrommunioAdmin => GroAdminSystemDashboardServicesResponse' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in GroAdminSystemDashboardServicesResponse
        $AllProperties = ("services")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "services"))) { #optional property not found
            $Services = $null
        } else {
            $Services = $JsonParameters.PSobject.Properties["services"].value
        }

        $PSO = [PSCustomObject]@{
            "services" = ${Services}
        }

        return $PSO
    }

}

