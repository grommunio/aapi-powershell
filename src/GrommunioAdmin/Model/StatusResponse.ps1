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

.PARAMETER Message
No description available.
.PARAMETER Database
Whether the database connection is initialized
.PARAMETER Tasq
Whether the TasQ server is running
.OUTPUTS

StatusResponse<PSCustomObject>
#>

function Initialize-GroAdminStatusResponse {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Message},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${Database},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${Tasq}
    )

    Process {
        'Creating PSCustomObject: GrommunioAdmin => GroAdminStatusResponse' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "message" = ${Message}
            "database" = ${Database}
            "tasq" = ${Tasq}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to StatusResponse<PSCustomObject>

.DESCRIPTION

Convert from JSON to StatusResponse<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

StatusResponse<PSCustomObject>
#>
function ConvertFrom-GroAdminJsonToStatusResponse {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: GrommunioAdmin => GroAdminStatusResponse' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in GroAdminStatusResponse
        $AllProperties = ("message", "database", "tasq")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "message"))) { #optional property not found
            $Message = $null
        } else {
            $Message = $JsonParameters.PSobject.Properties["message"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "database"))) { #optional property not found
            $Database = $null
        } else {
            $Database = $JsonParameters.PSobject.Properties["database"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "tasq"))) { #optional property not found
            $Tasq = $null
        } else {
            $Tasq = $JsonParameters.PSobject.Properties["tasq"].value
        }

        $PSO = [PSCustomObject]@{
            "message" = ${Message}
            "database" = ${Database}
            "tasq" = ${Tasq}
        }

        return $PSO
    }

}

