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

.PARAMETER API
Version of the API (according to the specification)
.PARAMETER Backend
Version of the implementation
.PARAMETER Schema
Database schema version
.OUTPUTS

AboutResponse<PSCustomObject>
#>

function Initialize-GroAdminAboutResponse {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${API},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Backend},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${Schema}
    )

    Process {
        'Creating PSCustomObject: GrommunioAdmin => GroAdminAboutResponse' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "API" = ${API}
            "backend" = ${Backend}
            "schema" = ${Schema}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to AboutResponse<PSCustomObject>

.DESCRIPTION

Convert from JSON to AboutResponse<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

AboutResponse<PSCustomObject>
#>
function ConvertFrom-GroAdminJsonToAboutResponse {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: GrommunioAdmin => GroAdminAboutResponse' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in GroAdminAboutResponse
        $AllProperties = ("API", "backend", "schema")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "API"))) { #optional property not found
            $API = $null
        } else {
            $API = $JsonParameters.PSobject.Properties["API"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "backend"))) { #optional property not found
            $Backend = $null
        } else {
            $Backend = $JsonParameters.PSobject.Properties["backend"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "schema"))) { #optional property not found
            $Schema = $null
        } else {
            $Schema = $JsonParameters.PSobject.Properties["schema"].value
        }

        $PSO = [PSCustomObject]@{
            "API" = ${API}
            "backend" = ${Backend}
            "schema" = ${Schema}
        }

        return $PSO
    }

}

