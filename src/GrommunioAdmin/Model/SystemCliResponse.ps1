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

.PARAMETER Code
Command exit code (`exec` mode only)
.PARAMETER Stdout
Command output (`exec` mode only)
.PARAMETER Fs
No description available.
.PARAMETER Completions
Possible command completions (`complete` mode only)
.OUTPUTS

SystemCliResponse<PSCustomObject>
#>

function Initialize-GroAdminSystemCliResponse {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${Code},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Stdout},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [System.Collections.Hashtable]
        ${Fs},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true)]
        [String[]]
        ${Completions}
    )

    Process {
        'Creating PSCustomObject: GrommunioAdmin => GroAdminSystemCliResponse' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "code" = ${Code}
            "stdout" = ${Stdout}
            "fs" = ${Fs}
            "completions" = ${Completions}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to SystemCliResponse<PSCustomObject>

.DESCRIPTION

Convert from JSON to SystemCliResponse<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

SystemCliResponse<PSCustomObject>
#>
function ConvertFrom-GroAdminJsonToSystemCliResponse {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: GrommunioAdmin => GroAdminSystemCliResponse' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in GroAdminSystemCliResponse
        $AllProperties = ("code", "stdout", "fs", "completions")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "code"))) { #optional property not found
            $Code = $null
        } else {
            $Code = $JsonParameters.PSobject.Properties["code"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "stdout"))) { #optional property not found
            $Stdout = $null
        } else {
            $Stdout = $JsonParameters.PSobject.Properties["stdout"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "fs"))) { #optional property not found
            $Fs = $null
        } else {
            $Fs = $JsonParameters.PSobject.Properties["fs"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "completions"))) { #optional property not found
            $Completions = $null
        } else {
            $Completions = $JsonParameters.PSobject.Properties["completions"].value
        }

        $PSO = [PSCustomObject]@{
            "code" = ${Code}
            "stdout" = ${Stdout}
            "fs" = ${Fs}
            "completions" = ${Completions}
        }

        return $PSO
    }

}

