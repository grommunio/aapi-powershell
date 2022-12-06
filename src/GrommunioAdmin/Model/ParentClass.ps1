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
.OUTPUTS

ParentClass<PSCustomObject>
#>

function Initialize-GroAdminParentClass {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${ID},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Classname}
    )

    Process {
        'Creating PSCustomObject: GrommunioAdmin => GroAdminParentClass' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "ID" = ${ID}
            "classname" = ${Classname}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to ParentClass<PSCustomObject>

.DESCRIPTION

Convert from JSON to ParentClass<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

ParentClass<PSCustomObject>
#>
function ConvertFrom-GroAdminJsonToParentClass {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: GrommunioAdmin => GroAdminParentClass' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in GroAdminParentClass
        $AllProperties = ("ID", "classname")
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

        $PSO = [PSCustomObject]@{
            "ID" = ${ID}
            "classname" = ${Classname}
        }

        return $PSO
    }

}

