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
.PARAMETER Domains
List of domains belonging to the organization
.OUTPUTS

Org<PSCustomObject>
#>

function Initialize-GroAdminOrg {
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
        ${Domains}
    )

    Process {
        'Creating PSCustomObject: GrommunioAdmin => GroAdminOrg' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "ID" = ${ID}
            "name" = ${Name}
            "description" = ${Description}
            "domains" = ${Domains}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to Org<PSCustomObject>

.DESCRIPTION

Convert from JSON to Org<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

Org<PSCustomObject>
#>
function ConvertFrom-GroAdminJsonToOrg {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: GrommunioAdmin => GroAdminOrg' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in GroAdminOrg
        $AllProperties = ("ID", "name", "description", "domains")
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

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "domains"))) { #optional property not found
            $Domains = $null
        } else {
            $Domains = $JsonParameters.PSobject.Properties["domains"].value
        }

        $PSO = [PSCustomObject]@{
            "ID" = ${ID}
            "name" = ${Name}
            "description" = ${Description}
            "domains" = ${Domains}
        }

        return $PSO
    }

}

