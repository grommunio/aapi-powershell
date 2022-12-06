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

.PARAMETER Server
Space separated list of addresses of the LDAP server to connect to
.PARAMETER BindUser
DN of the user to perform initial bind with
.PARAMETER BindPass
Password for bindUser
.PARAMETER Starttls
Whether to initiate a StartTLS connection
.OUTPUTS

LdapConfigConnection<PSCustomObject>
#>

function Initialize-GroAdminLdapConfigConnection {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Server},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${BindUser},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${BindPass},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${Starttls}
    )

    Process {
        'Creating PSCustomObject: GrommunioAdmin => GroAdminLdapConfigConnection' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "server" = ${Server}
            "bindUser" = ${BindUser}
            "bindPass" = ${BindPass}
            "starttls" = ${Starttls}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to LdapConfigConnection<PSCustomObject>

.DESCRIPTION

Convert from JSON to LdapConfigConnection<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

LdapConfigConnection<PSCustomObject>
#>
function ConvertFrom-GroAdminJsonToLdapConfigConnection {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: GrommunioAdmin => GroAdminLdapConfigConnection' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in GroAdminLdapConfigConnection
        $AllProperties = ("server", "bindUser", "bindPass", "starttls")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "server"))) { #optional property not found
            $Server = $null
        } else {
            $Server = $JsonParameters.PSobject.Properties["server"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "bindUser"))) { #optional property not found
            $BindUser = $null
        } else {
            $BindUser = $JsonParameters.PSobject.Properties["bindUser"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "bindPass"))) { #optional property not found
            $BindPass = $null
        } else {
            $BindPass = $JsonParameters.PSobject.Properties["bindPass"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "starttls"))) { #optional property not found
            $Starttls = $null
        } else {
            $Starttls = $JsonParameters.PSobject.Properties["starttls"].value
        }

        $PSO = [PSCustomObject]@{
            "server" = ${Server}
            "bindUser" = ${BindUser}
            "bindPass" = ${BindPass}
            "starttls" = ${Starttls}
        }

        return $PSO
    }

}

