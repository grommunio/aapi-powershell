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
.PARAMETER Domains
List of domain IDs belonging to the organization
.OUTPUTS

OrgWrite<PSCustomObject>
#>

function Initialize-GroAdminOrgWrite {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Name},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Description},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [Int32[]]
        ${Domains}
    )

    Process {
        'Creating PSCustomObject: GrommunioAdmin => GroAdminOrgWrite' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "name" = ${Name}
            "description" = ${Description}
            "domains" = ${Domains}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to OrgWrite<PSCustomObject>

.DESCRIPTION

Convert from JSON to OrgWrite<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

OrgWrite<PSCustomObject>
#>
function ConvertFrom-GroAdminJsonToOrgWrite {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: GrommunioAdmin => GroAdminOrgWrite' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in GroAdminOrgWrite
        $AllProperties = ("name", "description", "domains")
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

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "domains"))) { #optional property not found
            $Domains = $null
        } else {
            $Domains = $JsonParameters.PSobject.Properties["domains"].value
        }

        $PSO = [PSCustomObject]@{
            "name" = ${Name}
            "description" = ${Description}
            "domains" = ${Domains}
        }

        return $PSO
    }

}

