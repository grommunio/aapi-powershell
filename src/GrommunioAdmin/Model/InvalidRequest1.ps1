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
.PARAMETER Errors
List of errors encountered during validation
.OUTPUTS

InvalidRequest1<PSCustomObject>
#>

function Initialize-GroAdminInvalidRequest1 {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Message},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [String[]]
        ${Errors}
    )

    Process {
        'Creating PSCustomObject: GrommunioAdmin => GroAdminInvalidRequest1' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "message" = ${Message}
            "errors" = ${Errors}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to InvalidRequest1<PSCustomObject>

.DESCRIPTION

Convert from JSON to InvalidRequest1<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

InvalidRequest1<PSCustomObject>
#>
function ConvertFrom-GroAdminJsonToInvalidRequest1 {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: GrommunioAdmin => GroAdminInvalidRequest1' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in GroAdminInvalidRequest1
        $AllProperties = ("message", "errors")
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

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "errors"))) { #optional property not found
            $Errors = $null
        } else {
            $Errors = $JsonParameters.PSobject.Properties["errors"].value
        }

        $PSO = [PSCustomObject]@{
            "message" = ${Message}
            "errors" = ${Errors}
        }

        return $PSO
    }

}

