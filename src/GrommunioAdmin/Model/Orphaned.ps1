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
Unique ID of the object
.PARAMETER Username
No description available.
.OUTPUTS

Orphaned<PSCustomObject>
#>

function Initialize-GroAdminOrphaned {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${ID},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Username}
    )

    Process {
        'Creating PSCustomObject: GrommunioAdmin => GroAdminOrphaned' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "ID" = ${ID}
            "username" = ${Username}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to Orphaned<PSCustomObject>

.DESCRIPTION

Convert from JSON to Orphaned<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

Orphaned<PSCustomObject>
#>
function ConvertFrom-GroAdminJsonToOrphaned {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: GrommunioAdmin => GroAdminOrphaned' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in GroAdminOrphaned
        $AllProperties = ("ID", "username")
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

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "username"))) { #optional property not found
            $Username = $null
        } else {
            $Username = $JsonParameters.PSobject.Properties["username"].value
        }

        $PSO = [PSCustomObject]@{
            "ID" = ${ID}
            "username" = ${Username}
        }

        return $PSO
    }

}

