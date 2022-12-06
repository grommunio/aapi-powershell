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

.PARAMETER Disks
List of disks
.PARAMETER Load
Load averages (1 / 5 / 15 minutes)
.PARAMETER CpuPercent
No description available.
.PARAMETER Memory
No description available.
.PARAMETER Swap
No description available.
.PARAMETER Booted
No description available.
.OUTPUTS

SystemDashboardResponse<PSCustomObject>
#>

function Initialize-GroAdminSystemDashboardResponse {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${Disks},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [Decimal[]]
        ${Load},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${CpuPercent},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Memory},
        [Parameter(Position = 4, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Swap},
        [Parameter(Position = 5, ValueFromPipelineByPropertyName = $true)]
        [ValidatePattern("^\d{4}-\d{2}-\d{2} \d{2}:\d{2}:\d{2}$")]
        [String]
        ${Booted}
    )

    Process {
        'Creating PSCustomObject: GrommunioAdmin => GroAdminSystemDashboardResponse' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "disks" = ${Disks}
            "load" = ${Load}
            "cpuPercent" = ${CpuPercent}
            "memory" = ${Memory}
            "swap" = ${Swap}
            "booted" = ${Booted}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to SystemDashboardResponse<PSCustomObject>

.DESCRIPTION

Convert from JSON to SystemDashboardResponse<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

SystemDashboardResponse<PSCustomObject>
#>
function ConvertFrom-GroAdminJsonToSystemDashboardResponse {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: GrommunioAdmin => GroAdminSystemDashboardResponse' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in GroAdminSystemDashboardResponse
        $AllProperties = ("disks", "load", "cpuPercent", "memory", "swap", "booted")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "disks"))) { #optional property not found
            $Disks = $null
        } else {
            $Disks = $JsonParameters.PSobject.Properties["disks"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "load"))) { #optional property not found
            $Load = $null
        } else {
            $Load = $JsonParameters.PSobject.Properties["load"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "cpuPercent"))) { #optional property not found
            $CpuPercent = $null
        } else {
            $CpuPercent = $JsonParameters.PSobject.Properties["cpuPercent"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "memory"))) { #optional property not found
            $Memory = $null
        } else {
            $Memory = $JsonParameters.PSobject.Properties["memory"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "swap"))) { #optional property not found
            $Swap = $null
        } else {
            $Swap = $JsonParameters.PSobject.Properties["swap"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "booted"))) { #optional property not found
            $Booted = $null
        } else {
            $Booted = $JsonParameters.PSobject.Properties["booted"].value
        }

        $PSO = [PSCustomObject]@{
            "disks" = ${Disks}
            "load" = ${Load}
            "cpuPercent" = ${CpuPercent}
            "memory" = ${Memory}
            "swap" = ${Swap}
            "booted" = ${Booted}
        }

        return $PSO
    }

}

