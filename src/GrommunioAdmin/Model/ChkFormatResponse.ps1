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

.PARAMETER Domain
Error message or `null` if valid
.PARAMETER Email
Error message or `null` if valid
.OUTPUTS

ChkFormatResponse<PSCustomObject>
#>

function Initialize-GroAdminChkFormatResponse {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Domain},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Email}
    )

    Process {
        'Creating PSCustomObject: GrommunioAdmin => GroAdminChkFormatResponse' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "domain" = ${Domain}
            "email" = ${Email}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to ChkFormatResponse<PSCustomObject>

.DESCRIPTION

Convert from JSON to ChkFormatResponse<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

ChkFormatResponse<PSCustomObject>
#>
function ConvertFrom-GroAdminJsonToChkFormatResponse {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: GrommunioAdmin => GroAdminChkFormatResponse' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in GroAdminChkFormatResponse
        $AllProperties = ("domain", "email")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "domain"))) { #optional property not found
            $Domain = $null
        } else {
            $Domain = $JsonParameters.PSobject.Properties["domain"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "email"))) { #optional property not found
            $Email = $null
        } else {
            $Email = $JsonParameters.PSobject.Properties["email"].value
        }

        $PSO = [PSCustomObject]@{
            "domain" = ${Domain}
            "email" = ${Email}
        }

        return $PSO
    }

}

