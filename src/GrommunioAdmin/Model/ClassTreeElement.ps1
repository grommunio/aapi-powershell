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
.PARAMETER Children

.OUTPUTS

ClassTreeElement<PSCustomObject>
#>

function Initialize-GroAdminClassTreeElement {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${ID},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Name},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${Children}
    )

    Process {
        'Creating PSCustomObject: GrommunioAdmin => GroAdminClassTreeElement' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "ID" = ${ID}
            "name" = ${Name}
            "children" = ${Children}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to ClassTreeElement<PSCustomObject>

.DESCRIPTION

Convert from JSON to ClassTreeElement<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

ClassTreeElement<PSCustomObject>
#>
function ConvertFrom-GroAdminJsonToClassTreeElement {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: GrommunioAdmin => GroAdminClassTreeElement' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in GroAdminClassTreeElement
        $AllProperties = ("ID", "name", "children")
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

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "children"))) { #optional property not found
            $Children = $null
        } else {
            $Children = $JsonParameters.PSobject.Properties["children"].value
        }

        $PSO = [PSCustomObject]@{
            "ID" = ${ID}
            "name" = ${Name}
            "children" = ${Children}
        }

        return $PSO
    }

}

