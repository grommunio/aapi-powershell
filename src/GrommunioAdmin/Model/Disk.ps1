#
# grommunio Admin API
# grommunio administration REST API
# Version: 1.9.2
#

<#
.SYNOPSIS

No summary available.

.DESCRIPTION

Disk statistics.

.PARAMETER Percent
Percentage of used memory
.PARAMETER Total
Total disk space (bytes)
.PARAMETER Used
Used disk space (bytes)
.PARAMETER Free
Free disk space (bytes)
.PARAMETER Device
No description available.
.PARAMETER Mountpoint
No description available.
.PARAMETER Filesystem
No description available.
.OUTPUTS

Disk<PSCustomObject>
#>

function Initialize-GroAdminDisk {
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
        ${Used},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${Free},
        [Parameter(Position = 4, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Device},
        [Parameter(Position = 5, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Mountpoint},
        [Parameter(Position = 6, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Filesystem}
    )

    Process {
        'Creating PSCustomObject: GrommunioAdmin => GroAdminDisk' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "percent" = ${Percent}
            "total" = ${Total}
            "used" = ${Used}
            "free" = ${Free}
            "device" = ${Device}
            "mountpoint" = ${Mountpoint}
            "filesystem" = ${Filesystem}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to Disk<PSCustomObject>

.DESCRIPTION

Convert from JSON to Disk<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

Disk<PSCustomObject>
#>
function ConvertFrom-GroAdminJsonToDisk {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: GrommunioAdmin => GroAdminDisk' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in GroAdminDisk
        $AllProperties = ("percent", "total", "used", "free", "device", "mountpoint", "filesystem")
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

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "used"))) { #optional property not found
            $Used = $null
        } else {
            $Used = $JsonParameters.PSobject.Properties["used"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "free"))) { #optional property not found
            $Free = $null
        } else {
            $Free = $JsonParameters.PSobject.Properties["free"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "device"))) { #optional property not found
            $Device = $null
        } else {
            $Device = $JsonParameters.PSobject.Properties["device"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "mountpoint"))) { #optional property not found
            $Mountpoint = $null
        } else {
            $Mountpoint = $JsonParameters.PSobject.Properties["mountpoint"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "filesystem"))) { #optional property not found
            $Filesystem = $null
        } else {
            $Filesystem = $JsonParameters.PSobject.Properties["filesystem"].value
        }

        $PSO = [PSCustomObject]@{
            "percent" = ${Percent}
            "total" = ${Total}
            "used" = ${Used}
            "free" = ${Free}
            "device" = ${Device}
            "mountpoint" = ${Mountpoint}
            "filesystem" = ${Filesystem}
        }

        return $PSO
    }

}

