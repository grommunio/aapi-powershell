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

.PARAMETER New
New password
.OUTPUTS

SetPasswordRequest<PSCustomObject>
#>

function Initialize-GroAdminSetPasswordRequest {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${New}
    )

    Process {
        'Creating PSCustomObject: GrommunioAdmin => GroAdminSetPasswordRequest' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "new" = ${New}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to SetPasswordRequest<PSCustomObject>

.DESCRIPTION

Convert from JSON to SetPasswordRequest<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

SetPasswordRequest<PSCustomObject>
#>
function ConvertFrom-GroAdminJsonToSetPasswordRequest {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: GrommunioAdmin => GroAdminSetPasswordRequest' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in GroAdminSetPasswordRequest
        $AllProperties = ("new")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "new"))) { #optional property not found
            $New = $null
        } else {
            $New = $JsonParameters.PSobject.Properties["new"].value
        }

        $PSO = [PSCustomObject]@{
            "new" = ${New}
        }

        return $PSO
    }

}

