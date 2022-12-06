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

.PARAMETER Username
Name of the attribute that corresponds to the username (e-mail address)
.PARAMETER DisplayName
Name of the attribute that contains the name
.PARAMETER Filters
List of additional filter expressions to use for user search
.PARAMETER VarFilter
LDAP search filter to apply to user lookup
.PARAMETER Templates
List of mapping templates to use
.PARAMETER Attributes
LDAP attribute -> PropTag mapping to used for LDAP import. Any mappings specified take precedence over active templates
.PARAMETER DefaultQuota
Storage quota of imported users if no mapping exists
.PARAMETER SearchAttributes
List of attributes to use for searching
.PARAMETER Aliases
LDAP attribute containing alternative e-mail addresses
.OUTPUTS

LdapConfigUsers<PSCustomObject>
#>

function Initialize-GroAdminLdapConfigUsers {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Username},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${DisplayName},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [String[]]
        ${Filters},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${VarFilter},
        [Parameter(Position = 4, ValueFromPipelineByPropertyName = $true)]
        [String[]]
        ${Templates},
        [Parameter(Position = 5, ValueFromPipelineByPropertyName = $true)]
        [System.Collections.Hashtable]
        ${Attributes},
        [Parameter(Position = 6, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${DefaultQuota},
        [Parameter(Position = 7, ValueFromPipelineByPropertyName = $true)]
        [String[]]
        ${SearchAttributes},
        [Parameter(Position = 8, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Aliases}
    )

    Process {
        'Creating PSCustomObject: GrommunioAdmin => GroAdminLdapConfigUsers' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "username" = ${Username}
            "displayName" = ${DisplayName}
            "filters" = ${Filters}
            "filter" = ${VarFilter}
            "templates" = ${Templates}
            "attributes" = ${Attributes}
            "defaultQuota" = ${DefaultQuota}
            "searchAttributes" = ${SearchAttributes}
            "aliases" = ${Aliases}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to LdapConfigUsers<PSCustomObject>

.DESCRIPTION

Convert from JSON to LdapConfigUsers<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

LdapConfigUsers<PSCustomObject>
#>
function ConvertFrom-GroAdminJsonToLdapConfigUsers {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: GrommunioAdmin => GroAdminLdapConfigUsers' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in GroAdminLdapConfigUsers
        $AllProperties = ("username", "displayName", "filters", "filter", "templates", "attributes", "defaultQuota", "searchAttributes", "aliases")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "username"))) { #optional property not found
            $Username = $null
        } else {
            $Username = $JsonParameters.PSobject.Properties["username"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "displayName"))) { #optional property not found
            $DisplayName = $null
        } else {
            $DisplayName = $JsonParameters.PSobject.Properties["displayName"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "filters"))) { #optional property not found
            $Filters = $null
        } else {
            $Filters = $JsonParameters.PSobject.Properties["filters"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "filter"))) { #optional property not found
            $VarFilter = $null
        } else {
            $VarFilter = $JsonParameters.PSobject.Properties["filter"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "templates"))) { #optional property not found
            $Templates = $null
        } else {
            $Templates = $JsonParameters.PSobject.Properties["templates"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "attributes"))) { #optional property not found
            $Attributes = $null
        } else {
            $Attributes = $JsonParameters.PSobject.Properties["attributes"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "defaultQuota"))) { #optional property not found
            $DefaultQuota = $null
        } else {
            $DefaultQuota = $JsonParameters.PSobject.Properties["defaultQuota"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "searchAttributes"))) { #optional property not found
            $SearchAttributes = $null
        } else {
            $SearchAttributes = $JsonParameters.PSobject.Properties["searchAttributes"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "aliases"))) { #optional property not found
            $Aliases = $null
        } else {
            $Aliases = $JsonParameters.PSobject.Properties["aliases"].value
        }

        $PSO = [PSCustomObject]@{
            "username" = ${Username}
            "displayName" = ${DisplayName}
            "filters" = ${Filters}
            "filter" = ${VarFilter}
            "templates" = ${Templates}
            "attributes" = ${Attributes}
            "defaultQuota" = ${DefaultQuota}
            "searchAttributes" = ${SearchAttributes}
            "aliases" = ${Aliases}
        }

        return $PSO
    }

}

