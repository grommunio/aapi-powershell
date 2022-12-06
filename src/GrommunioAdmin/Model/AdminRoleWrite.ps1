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

.PARAMETER Name
No description available.
.PARAMETER Description
No description available.
.PARAMETER Permissions

.PARAMETER Users
List of user IDs to associate with the role
.OUTPUTS

AdminRoleWrite<PSCustomObject>
#>

function Initialize-GroAdminAdminRoleWrite {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Name},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Description},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${Permissions},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true)]
        [Int32[]]
        ${Users}
    )

    Process {
        'Creating PSCustomObject: GrommunioAdmin => GroAdminAdminRoleWrite' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "name" = ${Name}
            "description" = ${Description}
            "permissions" = ${Permissions}
            "users" = ${Users}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to AdminRoleWrite<PSCustomObject>

.DESCRIPTION

Convert from JSON to AdminRoleWrite<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

AdminRoleWrite<PSCustomObject>
#>
function ConvertFrom-GroAdminJsonToAdminRoleWrite {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: GrommunioAdmin => GroAdminAdminRoleWrite' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in GroAdminAdminRoleWrite
        $AllProperties = ("name", "description", "permissions", "users")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "name"))) { #optional property not found
            $Name = $null
        } else {
            $Name = $JsonParameters.PSobject.Properties["name"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "description"))) { #optional property not found
            $Description = $null
        } else {
            $Description = $JsonParameters.PSobject.Properties["description"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "permissions"))) { #optional property not found
            $Permissions = $null
        } else {
            $Permissions = $JsonParameters.PSobject.Properties["permissions"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "users"))) { #optional property not found
            $Users = $null
        } else {
            $Users = $JsonParameters.PSobject.Properties["users"].value
        }

        $PSO = [PSCustomObject]@{
            "name" = ${Name}
            "description" = ${Description}
            "permissions" = ${Permissions}
            "users" = ${Users}
        }

        return $PSO
    }

}

