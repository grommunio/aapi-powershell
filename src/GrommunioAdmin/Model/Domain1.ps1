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
.PARAMETER Domainname
No description available.
.PARAMETER Displayname
No description available.
.OUTPUTS

Domain1<PSCustomObject>
#>

function Initialize-GroAdminDomain1 {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${ID},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Domainname},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Displayname}
    )

    Process {
        'Creating PSCustomObject: GrommunioAdmin => GroAdminDomain1' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "ID" = ${ID}
            "domainname" = ${Domainname}
            "displayname" = ${Displayname}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to Domain1<PSCustomObject>

.DESCRIPTION

Convert from JSON to Domain1<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

Domain1<PSCustomObject>
#>
function ConvertFrom-GroAdminJsonToDomain1 {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: GrommunioAdmin => GroAdminDomain1' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in GroAdminDomain1
        $AllProperties = ("ID", "domainname", "displayname")
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

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "domainname"))) { #optional property not found
            $Domainname = $null
        } else {
            $Domainname = $JsonParameters.PSobject.Properties["domainname"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "displayname"))) { #optional property not found
            $Displayname = $null
        } else {
            $Displayname = $JsonParameters.PSobject.Properties["displayname"].value
        }

        $PSO = [PSCustomObject]@{
            "ID" = ${ID}
            "domainname" = ${Domainname}
            "displayname" = ${Displayname}
        }

        return $PSO
    }

}

