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
.PARAMETER Classname
No description available.
.PARAMETER Listname
Name of the associated mlist
.PARAMETER ParentClasses
List of parent classes
.PARAMETER Children
List of child classes
.PARAMETER Members
List of class members
.PARAMETER Filters
List of filter lists, which are joined by logical `and` (CNF)
.OUTPUTS

ClassRead<PSCustomObject>
#>

function Initialize-GroAdminClassRead {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${ID},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Classname},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Listname},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${ParentClasses},
        [Parameter(Position = 4, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${Children},
        [Parameter(Position = 5, ValueFromPipelineByPropertyName = $true)]
        [String[]]
        ${Members},
        [Parameter(Position = 6, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[][]]
        ${Filters}
    )

    Process {
        'Creating PSCustomObject: GrommunioAdmin => GroAdminClassRead' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "ID" = ${ID}
            "classname" = ${Classname}
            "listname" = ${Listname}
            "parentClasses" = ${ParentClasses}
            "children" = ${Children}
            "members" = ${Members}
            "filters" = ${Filters}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to ClassRead<PSCustomObject>

.DESCRIPTION

Convert from JSON to ClassRead<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

ClassRead<PSCustomObject>
#>
function ConvertFrom-GroAdminJsonToClassRead {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: GrommunioAdmin => GroAdminClassRead' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in GroAdminClassRead
        $AllProperties = ("ID", "classname", "listname", "parentClasses", "children", "members", "filters")
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

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "classname"))) { #optional property not found
            $Classname = $null
        } else {
            $Classname = $JsonParameters.PSobject.Properties["classname"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "listname"))) { #optional property not found
            $Listname = $null
        } else {
            $Listname = $JsonParameters.PSobject.Properties["listname"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "parentClasses"))) { #optional property not found
            $ParentClasses = $null
        } else {
            $ParentClasses = $JsonParameters.PSobject.Properties["parentClasses"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "children"))) { #optional property not found
            $Children = $null
        } else {
            $Children = $JsonParameters.PSobject.Properties["children"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "members"))) { #optional property not found
            $Members = $null
        } else {
            $Members = $JsonParameters.PSobject.Properties["members"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "filters"))) { #optional property not found
            $Filters = $null
        } else {
            $Filters = $JsonParameters.PSobject.Properties["filters"].value
        }

        $PSO = [PSCustomObject]@{
            "ID" = ${ID}
            "classname" = ${Classname}
            "listname" = ${Listname}
            "parentClasses" = ${ParentClasses}
            "children" = ${Children}
            "members" = ${Members}
            "filters" = ${Filters}
        }

        return $PSO
    }

}

