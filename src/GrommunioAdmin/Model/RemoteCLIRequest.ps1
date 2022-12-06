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

.PARAMETER Command
CLI command to execute
.PARAMETER Mode
No description available.
.PARAMETER Color
Enable terminal colors
.PARAMETER Fs
If not null, enable filesystem redirection. Each property is a file path
.OUTPUTS

RemoteCLIRequest<PSCustomObject>
#>

function Initialize-GroAdminRemoteCLIRequest {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Command},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Mode},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${Color} = $false,
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true)]
        [System.Collections.Hashtable]
        ${Fs}
    )

    Process {
        'Creating PSCustomObject: GrommunioAdmin => GroAdminRemoteCLIRequest' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if ($null -eq $Command) {
            throw "invalid value for 'Command', 'Command' cannot be null."
        }


        $PSO = [PSCustomObject]@{
            "command" = ${Command}
            "mode" = ${Mode}
            "color" = ${Color}
            "fs" = ${Fs}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to RemoteCLIRequest<PSCustomObject>

.DESCRIPTION

Convert from JSON to RemoteCLIRequest<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

RemoteCLIRequest<PSCustomObject>
#>
function ConvertFrom-GroAdminJsonToRemoteCLIRequest {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: GrommunioAdmin => GroAdminRemoteCLIRequest' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in GroAdminRemoteCLIRequest
        $AllProperties = ("command", "mode", "color", "fs")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        If ([string]::IsNullOrEmpty($Json) -or $Json -eq "{}") { # empty json
            throw "Error! Empty JSON cannot be serialized due to the required property 'command' missing."
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "command"))) {
            throw "Error! JSON cannot be serialized due to the required property 'command' missing."
        } else {
            $Command = $JsonParameters.PSobject.Properties["command"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "mode"))) { #optional property not found
            $Mode = $null
        } else {
            $Mode = $JsonParameters.PSobject.Properties["mode"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "color"))) { #optional property not found
            $Color = $null
        } else {
            $Color = $JsonParameters.PSobject.Properties["color"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "fs"))) { #optional property not found
            $Fs = $null
        } else {
            $Fs = $JsonParameters.PSobject.Properties["fs"].value
        }

        $PSO = [PSCustomObject]@{
            "command" = ${Command}
            "mode" = ${Mode}
            "color" = ${Color}
            "fs" = ${Fs}
        }

        return $PSO
    }

}

