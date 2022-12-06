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

.PARAMETER MemberID
Member ID of the owner list
.PARAMETER DisplayName
Name of member
.PARAMETER Username
E-Mail address of the user
.OUTPUTS

FolderMemberList<PSCustomObject>
#>

function Initialize-GroAdminFolderMemberList {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${MemberID},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${DisplayName},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Username}
    )

    Process {
        'Creating PSCustomObject: GrommunioAdmin => GroAdminFolderMemberList' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "memberID" = ${MemberID}
            "displayName" = ${DisplayName}
            "username" = ${Username}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to FolderMemberList<PSCustomObject>

.DESCRIPTION

Convert from JSON to FolderMemberList<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

FolderMemberList<PSCustomObject>
#>
function ConvertFrom-GroAdminJsonToFolderMemberList {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: GrommunioAdmin => GroAdminFolderMemberList' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in GroAdminFolderMemberList
        $AllProperties = ("memberID", "displayName", "username")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "memberID"))) { #optional property not found
            $MemberID = $null
        } else {
            $MemberID = $JsonParameters.PSobject.Properties["memberID"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "displayName"))) { #optional property not found
            $DisplayName = $null
        } else {
            $DisplayName = $JsonParameters.PSobject.Properties["displayName"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "username"))) { #optional property not found
            $Username = $null
        } else {
            $Username = $JsonParameters.PSobject.Properties["username"].value
        }

        $PSO = [PSCustomObject]@{
            "memberID" = ${MemberID}
            "displayName" = ${DisplayName}
            "username" = ${Username}
        }

        return $PSO
    }

}

