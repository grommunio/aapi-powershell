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

.PARAMETER Listname
Name or e-mail address of the list
.PARAMETER ListType
No description available.
.PARAMETER ListPrivilege
No description available.
.PARAMETER Associations
Recipients, only available if listType=0
.PARAMETER Specifieds
Senders, only available if listPrivilege=3
.PARAMETER Class
ID of the associated class, only available if listType=3
.OUTPUTS

PostMlistsRequest<PSCustomObject>
#>

function Initialize-GroAdminPostMlistsRequest {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Listname},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${ListType},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${ListPrivilege},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true)]
        [String[]]
        ${Associations},
        [Parameter(Position = 4, ValueFromPipelineByPropertyName = $true)]
        [String[]]
        ${Specifieds},
        [Parameter(Position = 5, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${Class}
    )

    Process {
        'Creating PSCustomObject: GrommunioAdmin => GroAdminPostMlistsRequest' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "listname" = ${Listname}
            "listType" = ${ListType}
            "listPrivilege" = ${ListPrivilege}
            "associations" = ${Associations}
            "specifieds" = ${Specifieds}
            "class" = ${Class}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to PostMlistsRequest<PSCustomObject>

.DESCRIPTION

Convert from JSON to PostMlistsRequest<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

PostMlistsRequest<PSCustomObject>
#>
function ConvertFrom-GroAdminJsonToPostMlistsRequest {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: GrommunioAdmin => GroAdminPostMlistsRequest' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in GroAdminPostMlistsRequest
        $AllProperties = ("listname", "listType", "listPrivilege", "associations", "specifieds", "class")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "listname"))) { #optional property not found
            $Listname = $null
        } else {
            $Listname = $JsonParameters.PSobject.Properties["listname"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "listType"))) { #optional property not found
            $ListType = $null
        } else {
            $ListType = $JsonParameters.PSobject.Properties["listType"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "listPrivilege"))) { #optional property not found
            $ListPrivilege = $null
        } else {
            $ListPrivilege = $JsonParameters.PSobject.Properties["listPrivilege"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "associations"))) { #optional property not found
            $Associations = $null
        } else {
            $Associations = $JsonParameters.PSobject.Properties["associations"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "specifieds"))) { #optional property not found
            $Specifieds = $null
        } else {
            $Specifieds = $JsonParameters.PSobject.Properties["specifieds"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "class"))) { #optional property not found
            $Class = $null
        } else {
            $Class = $JsonParameters.PSobject.Properties["class"].value
        }

        $PSO = [PSCustomObject]@{
            "listname" = ${Listname}
            "listType" = ${ListType}
            "listPrivilege" = ${ListPrivilege}
            "associations" = ${Associations}
            "specifieds" = ${Specifieds}
            "class" = ${Class}
        }

        return $PSO
    }

}

