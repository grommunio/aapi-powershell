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

.PARAMETER Running
Whether the TasQ server is running
.PARAMETER Queued
Number of tasks waiting for processing
.PARAMETER Workers
Number of active worker processes
.OUTPUTS

TasqStatusResponse<PSCustomObject>
#>

function Initialize-GroAdminTasqStatusResponse {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${Running},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${Queued},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${Workers}
    )

    Process {
        'Creating PSCustomObject: GrommunioAdmin => GroAdminTasqStatusResponse' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "running" = ${Running}
            "queued" = ${Queued}
            "workers" = ${Workers}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to TasqStatusResponse<PSCustomObject>

.DESCRIPTION

Convert from JSON to TasqStatusResponse<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

TasqStatusResponse<PSCustomObject>
#>
function ConvertFrom-GroAdminJsonToTasqStatusResponse {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: GrommunioAdmin => GroAdminTasqStatusResponse' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in GroAdminTasqStatusResponse
        $AllProperties = ("running", "queued", "workers")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "running"))) { #optional property not found
            $Running = $null
        } else {
            $Running = $JsonParameters.PSobject.Properties["running"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "queued"))) { #optional property not found
            $Queued = $null
        } else {
            $Queued = $JsonParameters.PSobject.Properties["queued"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "workers"))) { #optional property not found
            $Workers = $null
        } else {
            $Workers = $JsonParameters.PSobject.Properties["workers"].value
        }

        $PSO = [PSCustomObject]@{
            "running" = ${Running}
            "queued" = ${Queued}
            "workers" = ${Workers}
        }

        return $PSO
    }

}

