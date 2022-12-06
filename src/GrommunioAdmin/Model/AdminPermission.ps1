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

.PARAMETER ID
No description available.
.PARAMETER Permission
No description available.
.OUTPUTS

AdminPermission<PSCustomObject>
#>

function Initialize-GroAdminAdminPermission {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${ID},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Permission}
    )

    Process {
        'Creating PSCustomObject: GrommunioAdmin => GroAdminAdminPermission' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "ID" = ${ID}
            "permission" = ${Permission}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to AdminPermission<PSCustomObject>

.DESCRIPTION

Convert from JSON to AdminPermission<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

AdminPermission<PSCustomObject>
#>
function ConvertFrom-GroAdminJsonToAdminPermission {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: GrommunioAdmin => GroAdminAdminPermission' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in GroAdminAdminPermission
        $AllProperties = ("ID", "permission")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "ID"))) { #optional property not found
            $ID = $null
        } else {
            $ID = $JsonParameters.PSobject.Properties["ID"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "permission"))) { #optional property not found
            $Permission = $null
        } else {
            $Permission = $JsonParameters.PSobject.Properties["permission"].value
        }

        $PSO = [PSCustomObject]@{
            "ID" = ${ID}
            "permission" = ${Permission}
        }

        return $PSO
    }

}

