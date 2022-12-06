#
# grommunio Admin API
# grommunio administration REST API
# Version: 1.9.2
#

<#
.SYNOPSIS

No summary available.

.DESCRIPTION

Current CPU usage in percent

.PARAMETER User
Percentage of user CPU time
.PARAMETER System
Percentage of system CPU time
.PARAMETER Io
Percentage of CPU time used for IO operations
.PARAMETER Interrupt
Percentage of CPU time used by interrupts
.PARAMETER Steal
Percentage of CPU time spent waiting for the hypervisor
.PARAMETER Idle
Idle CPU time
.OUTPUTS

CpuPercent<PSCustomObject>
#>

function Initialize-GroAdminCpuPercent {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Decimal]]
        ${User},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Decimal]]
        ${System},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Decimal]]
        ${Io},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Decimal]]
        ${Interrupt},
        [Parameter(Position = 4, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Decimal]]
        ${Steal},
        [Parameter(Position = 5, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Decimal]]
        ${Idle}
    )

    Process {
        'Creating PSCustomObject: GrommunioAdmin => GroAdminCpuPercent' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "user" = ${User}
            "system" = ${System}
            "io" = ${Io}
            "interrupt" = ${Interrupt}
            "steal" = ${Steal}
            "idle" = ${Idle}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to CpuPercent<PSCustomObject>

.DESCRIPTION

Convert from JSON to CpuPercent<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

CpuPercent<PSCustomObject>
#>
function ConvertFrom-GroAdminJsonToCpuPercent {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: GrommunioAdmin => GroAdminCpuPercent' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in GroAdminCpuPercent
        $AllProperties = ("user", "system", "io", "interrupt", "steal", "idle")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "user"))) { #optional property not found
            $User = $null
        } else {
            $User = $JsonParameters.PSobject.Properties["user"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "system"))) { #optional property not found
            $System = $null
        } else {
            $System = $JsonParameters.PSobject.Properties["system"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "io"))) { #optional property not found
            $Io = $null
        } else {
            $Io = $JsonParameters.PSobject.Properties["io"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "interrupt"))) { #optional property not found
            $Interrupt = $null
        } else {
            $Interrupt = $JsonParameters.PSobject.Properties["interrupt"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "steal"))) { #optional property not found
            $Steal = $null
        } else {
            $Steal = $JsonParameters.PSobject.Properties["steal"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "idle"))) { #optional property not found
            $Idle = $null
        } else {
            $Idle = $JsonParameters.PSobject.Properties["idle"].value
        }

        $PSO = [PSCustomObject]@{
            "user" = ${User}
            "system" = ${System}
            "io" = ${Io}
            "interrupt" = ${Interrupt}
            "steal" = ${Steal}
            "idle" = ${Idle}
        }

        return $PSO
    }

}

