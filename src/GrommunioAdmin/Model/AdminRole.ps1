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
.PARAMETER Name
No description available.
.PARAMETER Description
No description available.
.PARAMETER Permissions
List of permissions associated with the role
.PARAMETER Users
List of users associated with the role
.OUTPUTS

AdminRole<PSCustomObject>
#>

function Initialize-GroAdminAdminRole {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${ID},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Name},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Description},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${Permissions},
        [Parameter(Position = 4, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${Users}
    )

    Process {
        'Creating PSCustomObject: GrommunioAdmin => GroAdminAdminRole' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if (!$Name -and $Name.length -gt 32) {
            throw "invalid value for 'Name', the character length must be smaller than or equal to 32."
        }

        if (!$Description -and $Description.length -gt 256) {
            throw "invalid value for 'Description', the character length must be smaller than or equal to 256."
        }


        $PSO = [PSCustomObject]@{
            "ID" = ${ID}
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

Convert from JSON to AdminRole<PSCustomObject>

.DESCRIPTION

Convert from JSON to AdminRole<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

AdminRole<PSCustomObject>
#>
function ConvertFrom-GroAdminJsonToAdminRole {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: GrommunioAdmin => GroAdminAdminRole' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in GroAdminAdminRole
        $AllProperties = ("ID", "name", "description", "permissions", "users")
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
            "ID" = ${ID}
            "name" = ${Name}
            "description" = ${Description}
            "permissions" = ${Permissions}
            "users" = ${Users}
        }

        return $PSO
    }

}

