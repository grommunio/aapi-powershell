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

.PARAMETER Disabled
Disable LDAP service
.PARAMETER Connection
No description available.
.PARAMETER BaseDn
Base DN to use for user search
.PARAMETER ObjectID
Name of an attribute that uniquely identifies an LDAP object
.PARAMETER Users
No description available.
.OUTPUTS

SetOrgLDAPConfRequest<PSCustomObject>
#>

function Initialize-GroAdminSetOrgLDAPConfRequest {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${Disabled} = $false,
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Connection},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${BaseDn},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${ObjectID},
        [Parameter(Position = 4, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Users}
    )

    Process {
        'Creating PSCustomObject: GrommunioAdmin => GroAdminSetOrgLDAPConfRequest' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "disabled" = ${Disabled}
            "connection" = ${Connection}
            "baseDn" = ${BaseDn}
            "objectID" = ${ObjectID}
            "users" = ${Users}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to SetOrgLDAPConfRequest<PSCustomObject>

.DESCRIPTION

Convert from JSON to SetOrgLDAPConfRequest<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

SetOrgLDAPConfRequest<PSCustomObject>
#>
function ConvertFrom-GroAdminJsonToSetOrgLDAPConfRequest {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: GrommunioAdmin => GroAdminSetOrgLDAPConfRequest' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in GroAdminSetOrgLDAPConfRequest
        $AllProperties = ("disabled", "connection", "baseDn", "objectID", "users")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "disabled"))) { #optional property not found
            $Disabled = $null
        } else {
            $Disabled = $JsonParameters.PSobject.Properties["disabled"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "connection"))) { #optional property not found
            $Connection = $null
        } else {
            $Connection = $JsonParameters.PSobject.Properties["connection"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "baseDn"))) { #optional property not found
            $BaseDn = $null
        } else {
            $BaseDn = $JsonParameters.PSobject.Properties["baseDn"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "objectID"))) { #optional property not found
            $ObjectID = $null
        } else {
            $ObjectID = $JsonParameters.PSobject.Properties["objectID"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "users"))) { #optional property not found
            $Users = $null
        } else {
            $Users = $JsonParameters.PSobject.Properties["users"].value
        }

        $PSO = [PSCustomObject]@{
            "disabled" = ${Disabled}
            "connection" = ${Connection}
            "baseDn" = ${BaseDn}
            "objectID" = ${ObjectID}
            "users" = ${Users}
        }

        return $PSO
    }

}

