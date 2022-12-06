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

.PARAMETER Classname
No description available.
.PARAMETER ParentClasses
List of parent class IDs
.PARAMETER Members
List of class members
.PARAMETER Filters
List of filter lists, which are joined by logical `and` (CNF)
.OUTPUTS

PostClassRequest<PSCustomObject>
#>

function Initialize-GroAdminPostClassRequest {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Classname},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [Int32[]]
        ${ParentClasses},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [String[]]
        ${Members},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[][]]
        ${Filters}
    )

    Process {
        'Creating PSCustomObject: GrommunioAdmin => GroAdminPostClassRequest' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "classname" = ${Classname}
            "parentClasses" = ${ParentClasses}
            "members" = ${Members}
            "filters" = ${Filters}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to PostClassRequest<PSCustomObject>

.DESCRIPTION

Convert from JSON to PostClassRequest<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

PostClassRequest<PSCustomObject>
#>
function ConvertFrom-GroAdminJsonToPostClassRequest {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: GrommunioAdmin => GroAdminPostClassRequest' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in GroAdminPostClassRequest
        $AllProperties = ("classname", "parentClasses", "members", "filters")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "classname"))) { #optional property not found
            $Classname = $null
        } else {
            $Classname = $JsonParameters.PSobject.Properties["classname"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "parentClasses"))) { #optional property not found
            $ParentClasses = $null
        } else {
            $ParentClasses = $JsonParameters.PSobject.Properties["parentClasses"].value
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
            "classname" = ${Classname}
            "parentClasses" = ${ParentClasses}
            "members" = ${Members}
            "filters" = ${Filters}
        }

        return $PSO
    }

}

