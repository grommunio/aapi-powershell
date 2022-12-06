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

.PARAMETER Key
List of commands allowed for key commits
.PARAMETER File
List of commands allowed for file commits
.PARAMETER Service
List of commands allowed for service commits
.OUTPUTS

SystemDbconfCommandsResponse<PSCustomObject>
#>

function Initialize-GroAdminSystemDbconfCommandsResponse {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String[]]
        ${Key},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [String[]]
        ${File},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [String[]]
        ${Service}
    )

    Process {
        'Creating PSCustomObject: GrommunioAdmin => GroAdminSystemDbconfCommandsResponse' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "key" = ${Key}
            "file" = ${File}
            "service" = ${Service}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to SystemDbconfCommandsResponse<PSCustomObject>

.DESCRIPTION

Convert from JSON to SystemDbconfCommandsResponse<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

SystemDbconfCommandsResponse<PSCustomObject>
#>
function ConvertFrom-GroAdminJsonToSystemDbconfCommandsResponse {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: GrommunioAdmin => GroAdminSystemDbconfCommandsResponse' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in GroAdminSystemDbconfCommandsResponse
        $AllProperties = ("key", "file", "service")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "key"))) { #optional property not found
            $Key = $null
        } else {
            $Key = $JsonParameters.PSobject.Properties["key"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "file"))) { #optional property not found
            $File = $null
        } else {
            $File = $JsonParameters.PSobject.Properties["file"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "service"))) { #optional property not found
            $Service = $null
        } else {
            $Service = $JsonParameters.PSobject.Properties["service"].value
        }

        $PSO = [PSCustomObject]@{
            "key" = ${Key}
            "file" = ${File}
            "service" = ${Service}
        }

        return $PSO
    }

}

