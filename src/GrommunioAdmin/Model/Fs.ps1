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

.PARAMETER Mode
Mode the file was opened with
.PARAMETER Conf
Configuration key the file path was derived from
.PARAMETER Content
Content of the file
.OUTPUTS

Fs<PSCustomObject>
#>

function Initialize-GroAdminFs {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Mode},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Conf},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Content}
    )

    Process {
        'Creating PSCustomObject: GrommunioAdmin => GroAdminFs' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "mode" = ${Mode}
            "conf" = ${Conf}
            "content" = ${Content}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to Fs<PSCustomObject>

.DESCRIPTION

Convert from JSON to Fs<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

Fs<PSCustomObject>
#>
function ConvertFrom-GroAdminJsonToFs {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: GrommunioAdmin => GroAdminFs' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in GroAdminFs
        $AllProperties = ("mode", "conf", "content")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "mode"))) { #optional property not found
            $Mode = $null
        } else {
            $Mode = $JsonParameters.PSobject.Properties["mode"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "conf"))) { #optional property not found
            $Conf = $null
        } else {
            $Conf = $JsonParameters.PSobject.Properties["conf"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "content"))) { #optional property not found
            $Content = $null
        } else {
            $Content = $JsonParameters.PSobject.Properties["content"].value
        }

        $PSO = [PSCustomObject]@{
            "mode" = ${Mode}
            "conf" = ${Conf}
            "content" = ${Content}
        }

        return $PSO
    }

}

