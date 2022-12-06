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

.PARAMETER Percent
Percentage of used swap memory
.PARAMETER Total
Total swap memory (bytes)
.PARAMETER Free
Available swap memory (bytes)
.PARAMETER Used
Used swap memory (bytes)
.OUTPUTS

SystemDashboardResponseSwap<PSCustomObject>
#>

function Initialize-GroAdminSystemDashboardResponseSwap {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Decimal]]
        ${Percent},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${Total},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${Free},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${Used}
    )

    Process {
        'Creating PSCustomObject: GrommunioAdmin => GroAdminSystemDashboardResponseSwap' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "percent" = ${Percent}
            "total" = ${Total}
            "free" = ${Free}
            "used" = ${Used}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to SystemDashboardResponseSwap<PSCustomObject>

.DESCRIPTION

Convert from JSON to SystemDashboardResponseSwap<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

SystemDashboardResponseSwap<PSCustomObject>
#>
function ConvertFrom-GroAdminJsonToSystemDashboardResponseSwap {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: GrommunioAdmin => GroAdminSystemDashboardResponseSwap' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in GroAdminSystemDashboardResponseSwap
        $AllProperties = ("percent", "total", "free", "used")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "percent"))) { #optional property not found
            $Percent = $null
        } else {
            $Percent = $JsonParameters.PSobject.Properties["percent"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "total"))) { #optional property not found
            $Total = $null
        } else {
            $Total = $JsonParameters.PSobject.Properties["total"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "free"))) { #optional property not found
            $Free = $null
        } else {
            $Free = $JsonParameters.PSobject.Properties["free"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "used"))) { #optional property not found
            $Used = $null
        } else {
            $Used = $JsonParameters.PSobject.Properties["used"].value
        }

        $PSO = [PSCustomObject]@{
            "percent" = ${Percent}
            "total" = ${Total}
            "free" = ${Free}
            "used" = ${Used}
        }

        return $PSO
    }

}

