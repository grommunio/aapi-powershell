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

.PARAMETER PostfixMailq
Output of the postfix mailq command
.PARAMETER GromoxMailq
Output of the gromox-mailq command
.PARAMETER Postqueue
Output of postqueue -j
.OUTPUTS

SystemMailqResponse<PSCustomObject>
#>

function Initialize-GroAdminSystemMailqResponse {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${PostfixMailq},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${GromoxMailq},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${Postqueue}
    )

    Process {
        'Creating PSCustomObject: GrommunioAdmin => GroAdminSystemMailqResponse' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "postfixMailq" = ${PostfixMailq}
            "gromoxMailq" = ${GromoxMailq}
            "postqueue" = ${Postqueue}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to SystemMailqResponse<PSCustomObject>

.DESCRIPTION

Convert from JSON to SystemMailqResponse<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

SystemMailqResponse<PSCustomObject>
#>
function ConvertFrom-GroAdminJsonToSystemMailqResponse {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: GrommunioAdmin => GroAdminSystemMailqResponse' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in GroAdminSystemMailqResponse
        $AllProperties = ("postfixMailq", "gromoxMailq", "postqueue")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "postfixMailq"))) { #optional property not found
            $PostfixMailq = $null
        } else {
            $PostfixMailq = $JsonParameters.PSobject.Properties["postfixMailq"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "gromoxMailq"))) { #optional property not found
            $GromoxMailq = $null
        } else {
            $GromoxMailq = $JsonParameters.PSobject.Properties["gromoxMailq"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "postqueue"))) { #optional property not found
            $Postqueue = $null
        } else {
            $Postqueue = $JsonParameters.PSobject.Properties["postqueue"].value
        }

        $PSO = [PSCustomObject]@{
            "postfixMailq" = ${PostfixMailq}
            "gromoxMailq" = ${GromoxMailq}
            "postqueue" = ${Postqueue}
        }

        return $PSO
    }

}

