#
# grommunio Admin API
# grommunio administration REST API
# Version: 1.19.0
#

<#
.SYNOPSIS

No summary available.

.DESCRIPTION

No description available.

.PARAMETER Listname
Name or e-mail address of the list
.PARAMETER ListType
Type of mailing list (0=Normal, 2=Domain)
.PARAMETER ListPrivilege
Sender privilege of list (0=All, 1=Internal, 2=Domain, 3=Specific, 4=Outgoing)
.PARAMETER Associations
Recipients, only available if listType=0
.PARAMETER Specifieds
Senders, only available if listPrivilege=3
.PARAMETER DisplayName
Display name property of the associated user object
.PARAMETER Hidden
attributehidde_gromox property of the associated user object
.OUTPUTS

MlistWrite<PSCustomObject>
#>

function Initialize-GroAdminMlistWrite {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Listname},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("0", "2")]
        [System.Nullable[Int32]]
        ${ListType},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("0", "1", "2", "3", "4")]
        [System.Nullable[Int32]]
        ${ListPrivilege},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true)]
        [String[]]
        ${Associations},
        [Parameter(Position = 4, ValueFromPipelineByPropertyName = $true)]
        [String[]]
        ${Specifieds},
        [Parameter(Position = 5, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${DisplayName},
        [Parameter(Position = 6, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${Hidden}
    )

    Process {
        'Creating PSCustomObject: GrommunioAdmin => GroAdminMlistWrite' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            'listname' = ${Listname}
            'listType' = ${ListType}
            'listPrivilege' = ${ListPrivilege}
            'associations' = ${Associations}
            'specifieds' = ${Specifieds}
            'displayName' = ${DisplayName}
            'hidden' = ${Hidden}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to MlistWrite<PSCustomObject>

.DESCRIPTION

Convert from JSON to MlistWrite<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

MlistWrite<PSCustomObject>
#>
function ConvertFrom-GroAdminJsonToMlistWrite {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: GrommunioAdmin => GroAdminMlistWrite' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in GroAdminMlistWrite
        $AllProperties = ('listname', 'listType', 'listPrivilege', 'associations', 'specifieds', 'displayName', 'hidden')
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match 'listname'))) { #optional property not found
            $Listname = $null
        } else {
            $Listname = $JsonParameters.PSobject.Properties['listname'].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match 'listType'))) { #optional property not found
            $ListType = $null
        } else {
            $ListType = $JsonParameters.PSobject.Properties['listType'].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match 'listPrivilege'))) { #optional property not found
            $ListPrivilege = $null
        } else {
            $ListPrivilege = $JsonParameters.PSobject.Properties['listPrivilege'].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match 'associations'))) { #optional property not found
            $Associations = $null
        } else {
            $Associations = $JsonParameters.PSobject.Properties['associations'].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match 'specifieds'))) { #optional property not found
            $Specifieds = $null
        } else {
            $Specifieds = $JsonParameters.PSobject.Properties['specifieds'].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match 'displayName'))) { #optional property not found
            $DisplayName = $null
        } else {
            $DisplayName = $JsonParameters.PSobject.Properties['displayName'].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match 'hidden'))) { #optional property not found
            $Hidden = $null
        } else {
            $Hidden = $JsonParameters.PSobject.Properties['hidden'].value
        }

        $PSO = [PSCustomObject]@{
            'listname' = ${Listname}
            'listType' = ${ListType}
            'listPrivilege' = ${ListPrivilege}
            'associations' = ${Associations}
            'specifieds' = ${Specifieds}
            'displayName' = ${DisplayName}
            'hidden' = ${Hidden}
        }

        return $PSO
    }

}

