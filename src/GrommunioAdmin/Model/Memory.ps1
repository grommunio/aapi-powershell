#
# grommunio Admin API
# grommunio administration REST API
# Version: 1.9.2
#

<#
.SYNOPSIS

No summary available.

.DESCRIPTION

RAM statistics

.PARAMETER Percent
Percent of used memory
.PARAMETER Total
Total memory (bytes)
.PARAMETER Free
Unused memory (bytes)
.PARAMETER Used
Memory used by applications (bytes)
.PARAMETER Buffer
Memory used for buffers (bytes)
.PARAMETER Cache
Memory used for cached data (bytes)
.PARAMETER Available
Memory that is available for applications (bytes)
.OUTPUTS

Memory<PSCustomObject>
#>

function Initialize-GroAdminMemory {
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
        ${Used},
        [Parameter(Position = 4, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${Buffer},
        [Parameter(Position = 5, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${Cache},
        [Parameter(Position = 6, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Available}
    )

    Process {
        'Creating PSCustomObject: GrommunioAdmin => GroAdminMemory' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "percent" = ${Percent}
            "total" = ${Total}
            "free" = ${Free}
            "used" = ${Used}
            "buffer" = ${Buffer}
            "cache" = ${Cache}
            "available" = ${Available}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to Memory<PSCustomObject>

.DESCRIPTION

Convert from JSON to Memory<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

Memory<PSCustomObject>
#>
function ConvertFrom-GroAdminJsonToMemory {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: GrommunioAdmin => GroAdminMemory' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in GroAdminMemory
        $AllProperties = ("percent", "total", "free", "used", "buffer", "cache", "available")
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

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "buffer"))) { #optional property not found
            $Buffer = $null
        } else {
            $Buffer = $JsonParameters.PSobject.Properties["buffer"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "cache"))) { #optional property not found
            $Cache = $null
        } else {
            $Cache = $JsonParameters.PSobject.Properties["cache"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "available"))) { #optional property not found
            $Available = $null
        } else {
            $Available = $JsonParameters.PSobject.Properties["available"].value
        }

        $PSO = [PSCustomObject]@{
            "percent" = ${Percent}
            "total" = ${Total}
            "free" = ${Free}
            "used" = ${Used}
            "buffer" = ${Buffer}
            "cache" = ${Cache}
            "available" = ${Available}
        }

        return $PSO
    }

}

