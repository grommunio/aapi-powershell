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

.PARAMETER Folderid
No description available.
.PARAMETER Name
No description available.
.PARAMETER Container
No description available.
.PARAMETER Children
List of child folders (in the same format as the parent)
.OUTPUTS

PublicFolderRef<PSCustomObject>
#>

function Initialize-GroAdminPublicFolderRef {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Folderid},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Name},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Container},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${Children}
    )

    Process {
        'Creating PSCustomObject: GrommunioAdmin => GroAdminPublicFolderRef' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "folderid" = ${Folderid}
            "name" = ${Name}
            "container" = ${Container}
            "children" = ${Children}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to PublicFolderRef<PSCustomObject>

.DESCRIPTION

Convert from JSON to PublicFolderRef<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

PublicFolderRef<PSCustomObject>
#>
function ConvertFrom-GroAdminJsonToPublicFolderRef {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: GrommunioAdmin => GroAdminPublicFolderRef' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in GroAdminPublicFolderRef
        $AllProperties = ("folderid", "name", "container", "children")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "folderid"))) { #optional property not found
            $Folderid = $null
        } else {
            $Folderid = $JsonParameters.PSobject.Properties["folderid"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "name"))) { #optional property not found
            $Name = $null
        } else {
            $Name = $JsonParameters.PSobject.Properties["name"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "container"))) { #optional property not found
            $Container = $null
        } else {
            $Container = $JsonParameters.PSobject.Properties["container"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "children"))) { #optional property not found
            $Children = $null
        } else {
            $Children = $JsonParameters.PSobject.Properties["children"].value
        }

        $PSO = [PSCustomObject]@{
            "folderid" = ${Folderid}
            "name" = ${Name}
            "container" = ${Container}
            "children" = ${Children}
        }

        return $PSO
    }

}

