#
# grommunio Admin API
# grommunio administration REST API
# Version: 1.9.2
#

<#
.SYNOPSIS

checkUsers

.DESCRIPTION

No description available.

.PARAMETER Domain
ID of the domain

.PARAMETER Organization
ID of the organization

.PARAMETER WithHttpInfo

A switch when turned on will return a hash table of Response, StatusCode and Headers instead of just the Response

.OUTPUTS

DomainsLdapCheckResponse
#>
function Invoke-GroAdminCheckUsers {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [System.Nullable[Int32]]
        ${Domain},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [System.Nullable[Int32]]
        ${Organization},
        [Switch]
        $WithHttpInfo
    )

    Process {
        'Calling method: Invoke-GroAdminCheckUsers' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $LocalVarAccepts = @()
        $LocalVarContentTypes = @()
        $LocalVarQueryParameters = @{}
        $LocalVarHeaderParameters = @{}
        $LocalVarFormParameters = @{}
        $LocalVarPathParameters = @{}
        $LocalVarCookieParameters = @{}
        $LocalVarBodyParameter = $null

        $Configuration = Get-GroAdminConfiguration
        # HTTP header 'Accept' (if needed)
        $LocalVarAccepts = @('application/json')

        $LocalVarUri = '/domains/ldap/check'

        if ($Domain) {
            $LocalVarQueryParameters['domain'] = $Domain
        }

        if ($Organization) {
            $LocalVarQueryParameters['organization'] = $Organization
        }

        $LocalVarResult = Invoke-GroAdminApiClient -Method 'GET' `
                                -Uri $LocalVarUri `
                                -Accepts $LocalVarAccepts `
                                -ContentTypes $LocalVarContentTypes `
                                -Body $LocalVarBodyParameter `
                                -HeaderParameters $LocalVarHeaderParameters `
                                -QueryParameters $LocalVarQueryParameters `
                                -FormParameters $LocalVarFormParameters `
                                -CookieParameters $LocalVarCookieParameters `
                                -ReturnType "DomainsLdapCheckResponse" `
                                -IsBodyNullable $false

        if ($WithHttpInfo.IsPresent) {
            return $LocalVarResult
        } else {
            return $LocalVarResult["Response"]
        }
    }
}

<#
.SYNOPSIS

deleteLDAPConf

.DESCRIPTION

No description available.

.PARAMETER XCsrfToken
CSRF Token

.PARAMETER WithHttpInfo

A switch when turned on will return a hash table of Response, StatusCode and Headers instead of just the Response

.OUTPUTS

None
#>
function Invoke-GroAdminDeleteLDAPConf {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${XCsrfToken},
        [Switch]
        $WithHttpInfo
    )

    Process {
        'Calling method: Invoke-GroAdminDeleteLDAPConf' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $LocalVarAccepts = @()
        $LocalVarContentTypes = @()
        $LocalVarQueryParameters = @{}
        $LocalVarHeaderParameters = @{}
        $LocalVarFormParameters = @{}
        $LocalVarPathParameters = @{}
        $LocalVarCookieParameters = @{}
        $LocalVarBodyParameter = $null

        $Configuration = Get-GroAdminConfiguration
        # HTTP header 'Accept' (if needed)
        $LocalVarAccepts = @('application/json')

        $LocalVarUri = '/system/mconf/ldap'

        if ($XCsrfToken) {
            $LocalVarHeaderParameters['X-Csrf-Token'] = $XCsrfToken
        }

        $LocalVarResult = Invoke-GroAdminApiClient -Method 'DELETE' `
                                -Uri $LocalVarUri `
                                -Accepts $LocalVarAccepts `
                                -ContentTypes $LocalVarContentTypes `
                                -Body $LocalVarBodyParameter `
                                -HeaderParameters $LocalVarHeaderParameters `
                                -QueryParameters $LocalVarQueryParameters `
                                -FormParameters $LocalVarFormParameters `
                                -CookieParameters $LocalVarCookieParameters `
                                -ReturnType "" `
                                -IsBodyNullable $false

        if ($WithHttpInfo.IsPresent) {
            return $LocalVarResult
        } else {
            return $LocalVarResult["Response"]
        }
    }
}

<#
.SYNOPSIS

deleteOrgLDAPConf

.DESCRIPTION

No description available.

.PARAMETER ID
ID of the object

.PARAMETER XCsrfToken
CSRF Token

.PARAMETER WithHttpInfo

A switch when turned on will return a hash table of Response, StatusCode and Headers instead of just the Response

.OUTPUTS

None
#>
function Invoke-GroAdminDeleteOrgLDAPConf {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [Int32]
        ${ID},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${XCsrfToken},
        [Switch]
        $WithHttpInfo
    )

    Process {
        'Calling method: Invoke-GroAdminDeleteOrgLDAPConf' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $LocalVarAccepts = @()
        $LocalVarContentTypes = @()
        $LocalVarQueryParameters = @{}
        $LocalVarHeaderParameters = @{}
        $LocalVarFormParameters = @{}
        $LocalVarPathParameters = @{}
        $LocalVarCookieParameters = @{}
        $LocalVarBodyParameter = $null

        $Configuration = Get-GroAdminConfiguration
        # HTTP header 'Accept' (if needed)
        $LocalVarAccepts = @('application/json')

        $LocalVarUri = '/system/orgs/{ID}/ldap'
        if (!$ID) {
            throw "Error! The required parameter `ID` missing when calling deleteOrgLDAPConf."
        }
        $LocalVarUri = $LocalVarUri.replace('{ID}', [System.Web.HTTPUtility]::UrlEncode($ID))

        if ($XCsrfToken) {
            $LocalVarHeaderParameters['X-Csrf-Token'] = $XCsrfToken
        }

        $LocalVarResult = Invoke-GroAdminApiClient -Method 'DELETE' `
                                -Uri $LocalVarUri `
                                -Accepts $LocalVarAccepts `
                                -ContentTypes $LocalVarContentTypes `
                                -Body $LocalVarBodyParameter `
                                -HeaderParameters $LocalVarHeaderParameters `
                                -QueryParameters $LocalVarQueryParameters `
                                -FormParameters $LocalVarFormParameters `
                                -CookieParameters $LocalVarCookieParameters `
                                -ReturnType "" `
                                -IsBodyNullable $false

        if ($WithHttpInfo.IsPresent) {
            return $LocalVarResult
        } else {
            return $LocalVarResult["Response"]
        }
    }
}

<#
.SYNOPSIS

deleteOrphaned

.DESCRIPTION

No description available.

.PARAMETER XCsrfToken
CSRF Token

.PARAMETER DeleteFiles
Delete user files on disk

.PARAMETER WithHttpInfo

A switch when turned on will return a hash table of Response, StatusCode and Headers instead of just the Response

.OUTPUTS

DomainsLdapCheckResponse1
#>
function Invoke-GroAdminDeleteOrphaned {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${XCsrfToken},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [System.Nullable[Boolean]]
        ${DeleteFiles},
        [Switch]
        $WithHttpInfo
    )

    Process {
        'Calling method: Invoke-GroAdminDeleteOrphaned' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $LocalVarAccepts = @()
        $LocalVarContentTypes = @()
        $LocalVarQueryParameters = @{}
        $LocalVarHeaderParameters = @{}
        $LocalVarFormParameters = @{}
        $LocalVarPathParameters = @{}
        $LocalVarCookieParameters = @{}
        $LocalVarBodyParameter = $null

        $Configuration = Get-GroAdminConfiguration
        # HTTP header 'Accept' (if needed)
        $LocalVarAccepts = @('application/json')

        $LocalVarUri = '/domains/ldap/check'

        if ($XCsrfToken) {
            $LocalVarHeaderParameters['X-Csrf-Token'] = $XCsrfToken
        }

        if ($DeleteFiles) {
            $LocalVarQueryParameters['deleteFiles'] = $DeleteFiles
        }

        $LocalVarResult = Invoke-GroAdminApiClient -Method 'DELETE' `
                                -Uri $LocalVarUri `
                                -Accepts $LocalVarAccepts `
                                -ContentTypes $LocalVarContentTypes `
                                -Body $LocalVarBodyParameter `
                                -HeaderParameters $LocalVarHeaderParameters `
                                -QueryParameters $LocalVarQueryParameters `
                                -FormParameters $LocalVarFormParameters `
                                -CookieParameters $LocalVarCookieParameters `
                                -ReturnType "DomainsLdapCheckResponse1" `
                                -IsBodyNullable $false

        if ($WithHttpInfo.IsPresent) {
            return $LocalVarResult
        } else {
            return $LocalVarResult["Response"]
        }
    }
}

<#
.SYNOPSIS

dumpLDAP

.DESCRIPTION

No description available.

.PARAMETER ID
LDAP object ID of the person to import

.PARAMETER Domain
ID of the domain

.PARAMETER Organization
ID of the organization

.PARAMETER WithHttpInfo

A switch when turned on will return a hash table of Response, StatusCode and Headers instead of just the Response

.OUTPUTS

DomainsLdapDumpResponse
#>
function Get-GroAdminLDAP {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${ID},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [System.Nullable[Int32]]
        ${Domain},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [System.Nullable[Int32]]
        ${Organization},
        [Switch]
        $WithHttpInfo
    )

    Process {
        'Calling method: Get-GroAdminLDAP' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $LocalVarAccepts = @()
        $LocalVarContentTypes = @()
        $LocalVarQueryParameters = @{}
        $LocalVarHeaderParameters = @{}
        $LocalVarFormParameters = @{}
        $LocalVarPathParameters = @{}
        $LocalVarCookieParameters = @{}
        $LocalVarBodyParameter = $null

        $Configuration = Get-GroAdminConfiguration
        # HTTP header 'Accept' (if needed)
        $LocalVarAccepts = @('application/json')

        $LocalVarUri = '/domains/ldap/dump'

        if (!$ID) {
            throw "Error! The required parameter `ID` missing when calling dumpLDAP."
        }
        $LocalVarQueryParameters['ID'] = $ID

        if ($Domain) {
            $LocalVarQueryParameters['domain'] = $Domain
        }

        if ($Organization) {
            $LocalVarQueryParameters['organization'] = $Organization
        }

        $LocalVarResult = Invoke-GroAdminApiClient -Method 'GET' `
                                -Uri $LocalVarUri `
                                -Accepts $LocalVarAccepts `
                                -ContentTypes $LocalVarContentTypes `
                                -Body $LocalVarBodyParameter `
                                -HeaderParameters $LocalVarHeaderParameters `
                                -QueryParameters $LocalVarQueryParameters `
                                -FormParameters $LocalVarFormParameters `
                                -CookieParameters $LocalVarCookieParameters `
                                -ReturnType "DomainsLdapDumpResponse" `
                                -IsBodyNullable $false

        if ($WithHttpInfo.IsPresent) {
            return $LocalVarResult
        } else {
            return $LocalVarResult["Response"]
        }
    }
}

<#
.SYNOPSIS

getLDAPConf

.DESCRIPTION

No description available.

.PARAMETER WithHttpInfo

A switch when turned on will return a hash table of Response, StatusCode and Headers instead of just the Response

.OUTPUTS

SystemMconfLdapResponse
#>
function Get-GroAdminLDAPConf {
    [CmdletBinding()]
    Param (
        [Switch]
        $WithHttpInfo
    )

    Process {
        'Calling method: Get-GroAdminLDAPConf' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $LocalVarAccepts = @()
        $LocalVarContentTypes = @()
        $LocalVarQueryParameters = @{}
        $LocalVarHeaderParameters = @{}
        $LocalVarFormParameters = @{}
        $LocalVarPathParameters = @{}
        $LocalVarCookieParameters = @{}
        $LocalVarBodyParameter = $null

        $Configuration = Get-GroAdminConfiguration
        # HTTP header 'Accept' (if needed)
        $LocalVarAccepts = @('application/json')

        $LocalVarUri = '/system/mconf/ldap'

        $LocalVarResult = Invoke-GroAdminApiClient -Method 'GET' `
                                -Uri $LocalVarUri `
                                -Accepts $LocalVarAccepts `
                                -ContentTypes $LocalVarContentTypes `
                                -Body $LocalVarBodyParameter `
                                -HeaderParameters $LocalVarHeaderParameters `
                                -QueryParameters $LocalVarQueryParameters `
                                -FormParameters $LocalVarFormParameters `
                                -CookieParameters $LocalVarCookieParameters `
                                -ReturnType "SystemMconfLdapResponse" `
                                -IsBodyNullable $false

        if ($WithHttpInfo.IsPresent) {
            return $LocalVarResult
        } else {
            return $LocalVarResult["Response"]
        }
    }
}

<#
.SYNOPSIS

getOrgLDAPConf

.DESCRIPTION

No description available.

.PARAMETER ID
ID of the object

.PARAMETER WithHttpInfo

A switch when turned on will return a hash table of Response, StatusCode and Headers instead of just the Response

.OUTPUTS

SystemOrgsLdapResponse
#>
function Get-GroAdminOrgLDAPConf {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [Int32]
        ${ID},
        [Switch]
        $WithHttpInfo
    )

    Process {
        'Calling method: Get-GroAdminOrgLDAPConf' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $LocalVarAccepts = @()
        $LocalVarContentTypes = @()
        $LocalVarQueryParameters = @{}
        $LocalVarHeaderParameters = @{}
        $LocalVarFormParameters = @{}
        $LocalVarPathParameters = @{}
        $LocalVarCookieParameters = @{}
        $LocalVarBodyParameter = $null

        $Configuration = Get-GroAdminConfiguration
        # HTTP header 'Accept' (if needed)
        $LocalVarAccepts = @('application/json')

        $LocalVarUri = '/system/orgs/{ID}/ldap'
        if (!$ID) {
            throw "Error! The required parameter `ID` missing when calling getOrgLDAPConf."
        }
        $LocalVarUri = $LocalVarUri.replace('{ID}', [System.Web.HTTPUtility]::UrlEncode($ID))

        $LocalVarResult = Invoke-GroAdminApiClient -Method 'GET' `
                                -Uri $LocalVarUri `
                                -Accepts $LocalVarAccepts `
                                -ContentTypes $LocalVarContentTypes `
                                -Body $LocalVarBodyParameter `
                                -HeaderParameters $LocalVarHeaderParameters `
                                -QueryParameters $LocalVarQueryParameters `
                                -FormParameters $LocalVarFormParameters `
                                -CookieParameters $LocalVarCookieParameters `
                                -ReturnType "SystemOrgsLdapResponse" `
                                -IsBodyNullable $false

        if ($WithHttpInfo.IsPresent) {
            return $LocalVarResult
        } else {
            return $LocalVarResult["Response"]
        }
    }
}

<#
.SYNOPSIS

importLdapUser

.DESCRIPTION

No description available.

.PARAMETER ID
LDAP object ID of the person to import

.PARAMETER XCsrfToken
CSRF Token

.PARAMETER Force
Force update existing users that are not associated with the LDAP object

.PARAMETER Lang
Default language for imported users

.PARAMETER Domain
ID of the domain

.PARAMETER Organization
ID of the organization

.PARAMETER WithHttpInfo

A switch when turned on will return a hash table of Response, StatusCode and Headers instead of just the Response

.OUTPUTS

ImportLdapUser200Response
#>
function Import-GroAdminLdapUser {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${ID},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${XCsrfToken},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [System.Nullable[Boolean]]
        ${Force},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${Lang},
        [Parameter(Position = 4, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [System.Nullable[Int32]]
        ${Domain},
        [Parameter(Position = 5, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [System.Nullable[Int32]]
        ${Organization},
        [Switch]
        $WithHttpInfo
    )

    Process {
        'Calling method: Import-GroAdminLdapUser' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $LocalVarAccepts = @()
        $LocalVarContentTypes = @()
        $LocalVarQueryParameters = @{}
        $LocalVarHeaderParameters = @{}
        $LocalVarFormParameters = @{}
        $LocalVarPathParameters = @{}
        $LocalVarCookieParameters = @{}
        $LocalVarBodyParameter = $null

        $Configuration = Get-GroAdminConfiguration
        # HTTP header 'Accept' (if needed)
        $LocalVarAccepts = @('application/json')

        $LocalVarUri = '/domains/ldap/importUser'

        if ($XCsrfToken) {
            $LocalVarHeaderParameters['X-Csrf-Token'] = $XCsrfToken
        }

        if (!$ID) {
            throw "Error! The required parameter `ID` missing when calling importLdapUser."
        }
        $LocalVarQueryParameters['ID'] = $ID

        if ($Force) {
            $LocalVarQueryParameters['force'] = $Force
        }

        if ($Lang) {
            $LocalVarQueryParameters['lang'] = $Lang
        }

        if ($Domain) {
            $LocalVarQueryParameters['domain'] = $Domain
        }

        if ($Organization) {
            $LocalVarQueryParameters['organization'] = $Organization
        }

        $LocalVarResult = Invoke-GroAdminApiClient -Method 'POST' `
                                -Uri $LocalVarUri `
                                -Accepts $LocalVarAccepts `
                                -ContentTypes $LocalVarContentTypes `
                                -Body $LocalVarBodyParameter `
                                -HeaderParameters $LocalVarHeaderParameters `
                                -QueryParameters $LocalVarQueryParameters `
                                -FormParameters $LocalVarFormParameters `
                                -CookieParameters $LocalVarCookieParameters `
                                -ReturnType "ImportLdapUser200Response" `
                                -IsBodyNullable $false

        # process anyOf response
        $LocalVarResult["Response"] = ConvertFrom-GroAdminJsonToImportLdapUser200Response (ConvertTo-Json $LocalVarResult["Response"] -Depth 100)

        if ($WithHttpInfo.IsPresent) {
            return $LocalVarResult
        } else {
            return $LocalVarResult["Response"]
        }
    }
}

<#
.SYNOPSIS

putDownsync

.DESCRIPTION

No description available.

.PARAMETER DomainID
ID of the domain

.PARAMETER UserID
ID of the user

.PARAMETER XCsrfToken
CSRF Token

.PARAMETER ID
Optional LDAP object ID

.PARAMETER Lang
Default language for imported users

.PARAMETER WithHttpInfo

A switch when turned on will return a hash table of Response, StatusCode and Headers instead of just the Response

.OUTPUTS

User
#>
function Send-GroAdminDownsync {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [Int32]
        ${DomainID},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [Int32]
        ${UserID},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${XCsrfToken},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${ID},
        [Parameter(Position = 4, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${Lang},
        [Switch]
        $WithHttpInfo
    )

    Process {
        'Calling method: Send-GroAdminDownsync' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $LocalVarAccepts = @()
        $LocalVarContentTypes = @()
        $LocalVarQueryParameters = @{}
        $LocalVarHeaderParameters = @{}
        $LocalVarFormParameters = @{}
        $LocalVarPathParameters = @{}
        $LocalVarCookieParameters = @{}
        $LocalVarBodyParameter = $null

        $Configuration = Get-GroAdminConfiguration
        # HTTP header 'Accept' (if needed)
        $LocalVarAccepts = @('application/json')

        $LocalVarUri = '/domains/{domainID}/users/{userID}/downsync'
        if (!$DomainID) {
            throw "Error! The required parameter `DomainID` missing when calling putDownsync."
        }
        $LocalVarUri = $LocalVarUri.replace('{domainID}', [System.Web.HTTPUtility]::UrlEncode($DomainID))
        if (!$UserID) {
            throw "Error! The required parameter `UserID` missing when calling putDownsync."
        }
        $LocalVarUri = $LocalVarUri.replace('{userID}', [System.Web.HTTPUtility]::UrlEncode($UserID))

        if ($XCsrfToken) {
            $LocalVarHeaderParameters['X-Csrf-Token'] = $XCsrfToken
        }

        if ($ID) {
            $LocalVarQueryParameters['ID'] = $ID
        }

        if ($Lang) {
            $LocalVarQueryParameters['lang'] = $Lang
        }

        $LocalVarResult = Invoke-GroAdminApiClient -Method 'PUT' `
                                -Uri $LocalVarUri `
                                -Accepts $LocalVarAccepts `
                                -ContentTypes $LocalVarContentTypes `
                                -Body $LocalVarBodyParameter `
                                -HeaderParameters $LocalVarHeaderParameters `
                                -QueryParameters $LocalVarQueryParameters `
                                -FormParameters $LocalVarFormParameters `
                                -CookieParameters $LocalVarCookieParameters `
                                -ReturnType "User" `
                                -IsBodyNullable $false

        if ($WithHttpInfo.IsPresent) {
            return $LocalVarResult
        } else {
            return $LocalVarResult["Response"]
        }
    }
}

<#
.SYNOPSIS

searchLDAP

.DESCRIPTION

No description available.

.PARAMETER Query
Search term

.PARAMETER Limit
Maximum number of results to return

.PARAMETER Domain
ID of the domain

.PARAMETER Organization
ID of the organization

.PARAMETER ShowAll
Do not filter un-importable results

.PARAMETER WithHttpInfo

A switch when turned on will return a hash table of Response, StatusCode and Headers instead of just the Response

.OUTPUTS

DomainsLdapSearchResponse
#>
function Search-GroAdminLDAP {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${Query},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [System.Nullable[Int32]]
        ${Limit},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [System.Nullable[Int32]]
        ${Domain},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [System.Nullable[Int32]]
        ${Organization},
        [Parameter(Position = 4, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [System.Nullable[Boolean]]
        ${ShowAll},
        [Switch]
        $WithHttpInfo
    )

    Process {
        'Calling method: Search-GroAdminLDAP' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $LocalVarAccepts = @()
        $LocalVarContentTypes = @()
        $LocalVarQueryParameters = @{}
        $LocalVarHeaderParameters = @{}
        $LocalVarFormParameters = @{}
        $LocalVarPathParameters = @{}
        $LocalVarCookieParameters = @{}
        $LocalVarBodyParameter = $null

        $Configuration = Get-GroAdminConfiguration
        # HTTP header 'Accept' (if needed)
        $LocalVarAccepts = @('application/json')

        $LocalVarUri = '/domains/ldap/search'

        if (!$Query) {
            throw "Error! The required parameter `Query` missing when calling searchLDAP."
        }
        $LocalVarQueryParameters['query'] = $Query

        if ($Limit) {
            $LocalVarQueryParameters['limit'] = $Limit
        }

        if ($Domain) {
            $LocalVarQueryParameters['domain'] = $Domain
        }

        if ($Organization) {
            $LocalVarQueryParameters['organization'] = $Organization
        }

        if ($ShowAll) {
            $LocalVarQueryParameters['showAll'] = $ShowAll
        }

        $LocalVarResult = Invoke-GroAdminApiClient -Method 'GET' `
                                -Uri $LocalVarUri `
                                -Accepts $LocalVarAccepts `
                                -ContentTypes $LocalVarContentTypes `
                                -Body $LocalVarBodyParameter `
                                -HeaderParameters $LocalVarHeaderParameters `
                                -QueryParameters $LocalVarQueryParameters `
                                -FormParameters $LocalVarFormParameters `
                                -CookieParameters $LocalVarCookieParameters `
                                -ReturnType "DomainsLdapSearchResponse" `
                                -IsBodyNullable $false

        if ($WithHttpInfo.IsPresent) {
            return $LocalVarResult
        } else {
            return $LocalVarResult["Response"]
        }
    }
}

<#
.SYNOPSIS

setLDAPConf

.DESCRIPTION

No description available.

.PARAMETER XCsrfToken
CSRF Token

.PARAMETER Force
Update configuration even if validation failed

.PARAMETER SetOrgLDAPConfRequest


.PARAMETER WithHttpInfo

A switch when turned on will return a hash table of Response, StatusCode and Headers instead of just the Response

.OUTPUTS

None
#>
function Set-GroAdminLDAPConf {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${XCsrfToken},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [System.Nullable[Boolean]]
        ${Force},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [PSCustomObject]
        ${SetOrgLDAPConfRequest},
        [Switch]
        $WithHttpInfo
    )

    Process {
        'Calling method: Set-GroAdminLDAPConf' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $LocalVarAccepts = @()
        $LocalVarContentTypes = @()
        $LocalVarQueryParameters = @{}
        $LocalVarHeaderParameters = @{}
        $LocalVarFormParameters = @{}
        $LocalVarPathParameters = @{}
        $LocalVarCookieParameters = @{}
        $LocalVarBodyParameter = $null

        $Configuration = Get-GroAdminConfiguration
        # HTTP header 'Accept' (if needed)
        $LocalVarAccepts = @('application/json')

        # HTTP header 'Content-Type'
        $LocalVarContentTypes = @('application/json')

        $LocalVarUri = '/system/mconf/ldap'

        if ($XCsrfToken) {
            $LocalVarHeaderParameters['X-Csrf-Token'] = $XCsrfToken
        }

        if ($Force) {
            $LocalVarQueryParameters['force'] = $Force
        }

        $LocalVarBodyParameter = $SetOrgLDAPConfRequest | ConvertTo-Json -Depth 100

        $LocalVarResult = Invoke-GroAdminApiClient -Method 'PUT' `
                                -Uri $LocalVarUri `
                                -Accepts $LocalVarAccepts `
                                -ContentTypes $LocalVarContentTypes `
                                -Body $LocalVarBodyParameter `
                                -HeaderParameters $LocalVarHeaderParameters `
                                -QueryParameters $LocalVarQueryParameters `
                                -FormParameters $LocalVarFormParameters `
                                -CookieParameters $LocalVarCookieParameters `
                                -ReturnType "" `
                                -IsBodyNullable $false

        if ($WithHttpInfo.IsPresent) {
            return $LocalVarResult
        } else {
            return $LocalVarResult["Response"]
        }
    }
}

<#
.SYNOPSIS

setOrgLDAPConf

.DESCRIPTION

No description available.

.PARAMETER ID
ID of the object

.PARAMETER XCsrfToken
CSRF Token

.PARAMETER SetOrgLDAPConfRequest


.PARAMETER WithHttpInfo

A switch when turned on will return a hash table of Response, StatusCode and Headers instead of just the Response

.OUTPUTS

None
#>
function Set-GroAdminOrgLDAPConf {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [Int32]
        ${ID},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${XCsrfToken},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [PSCustomObject]
        ${SetOrgLDAPConfRequest},
        [Switch]
        $WithHttpInfo
    )

    Process {
        'Calling method: Set-GroAdminOrgLDAPConf' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $LocalVarAccepts = @()
        $LocalVarContentTypes = @()
        $LocalVarQueryParameters = @{}
        $LocalVarHeaderParameters = @{}
        $LocalVarFormParameters = @{}
        $LocalVarPathParameters = @{}
        $LocalVarCookieParameters = @{}
        $LocalVarBodyParameter = $null

        $Configuration = Get-GroAdminConfiguration
        # HTTP header 'Accept' (if needed)
        $LocalVarAccepts = @('application/json')

        # HTTP header 'Content-Type'
        $LocalVarContentTypes = @('application/json')

        $LocalVarUri = '/system/orgs/{ID}/ldap'
        if (!$ID) {
            throw "Error! The required parameter `ID` missing when calling setOrgLDAPConf."
        }
        $LocalVarUri = $LocalVarUri.replace('{ID}', [System.Web.HTTPUtility]::UrlEncode($ID))

        if ($XCsrfToken) {
            $LocalVarHeaderParameters['X-Csrf-Token'] = $XCsrfToken
        }

        $LocalVarBodyParameter = $SetOrgLDAPConfRequest | ConvertTo-Json -Depth 100

        $LocalVarResult = Invoke-GroAdminApiClient -Method 'PUT' `
                                -Uri $LocalVarUri `
                                -Accepts $LocalVarAccepts `
                                -ContentTypes $LocalVarContentTypes `
                                -Body $LocalVarBodyParameter `
                                -HeaderParameters $LocalVarHeaderParameters `
                                -QueryParameters $LocalVarQueryParameters `
                                -FormParameters $LocalVarFormParameters `
                                -CookieParameters $LocalVarCookieParameters `
                                -ReturnType "" `
                                -IsBodyNullable $false

        if ($WithHttpInfo.IsPresent) {
            return $LocalVarResult
        } else {
            return $LocalVarResult["Response"]
        }
    }
}

<#
.SYNOPSIS

updateAllDomainUsers

.DESCRIPTION

No description available.

.PARAMETER DomainID
ID of the domain

.PARAMETER XCsrfToken
CSRF Token

.PARAMETER Import
Import new users from LDAP

.PARAMETER Lang
Default language for imported users

.PARAMETER Timeout
Time in seconds to wait for completion

.PARAMETER WithHttpInfo

A switch when turned on will return a hash table of Response, StatusCode and Headers instead of just the Response

.OUTPUTS

DomainsLdapDownsyncResponse
#>
function Update-GroAdminAllDomainUsers {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [Int32]
        ${DomainID},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${XCsrfToken},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [System.Nullable[Boolean]]
        ${Import},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${Lang},
        [Parameter(Position = 4, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [System.Nullable[Double]]
        ${Timeout},
        [Switch]
        $WithHttpInfo
    )

    Process {
        'Calling method: Update-GroAdminAllDomainUsers' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $LocalVarAccepts = @()
        $LocalVarContentTypes = @()
        $LocalVarQueryParameters = @{}
        $LocalVarHeaderParameters = @{}
        $LocalVarFormParameters = @{}
        $LocalVarPathParameters = @{}
        $LocalVarCookieParameters = @{}
        $LocalVarBodyParameter = $null

        $Configuration = Get-GroAdminConfiguration
        # HTTP header 'Accept' (if needed)
        $LocalVarAccepts = @('application/json')

        $LocalVarUri = '/domains/{domainID}/ldap/downsync'
        if (!$DomainID) {
            throw "Error! The required parameter `DomainID` missing when calling updateAllDomainUsers."
        }
        $LocalVarUri = $LocalVarUri.replace('{domainID}', [System.Web.HTTPUtility]::UrlEncode($DomainID))

        if ($XCsrfToken) {
            $LocalVarHeaderParameters['X-Csrf-Token'] = $XCsrfToken
        }

        if ($Import) {
            $LocalVarQueryParameters['import'] = $Import
        }

        if ($Lang) {
            $LocalVarQueryParameters['lang'] = $Lang
        }

        if ($Timeout) {
            $LocalVarQueryParameters['timeout'] = $Timeout
        }

        $LocalVarResult = Invoke-GroAdminApiClient -Method 'POST' `
                                -Uri $LocalVarUri `
                                -Accepts $LocalVarAccepts `
                                -ContentTypes $LocalVarContentTypes `
                                -Body $LocalVarBodyParameter `
                                -HeaderParameters $LocalVarHeaderParameters `
                                -QueryParameters $LocalVarQueryParameters `
                                -FormParameters $LocalVarFormParameters `
                                -CookieParameters $LocalVarCookieParameters `
                                -ReturnType "DomainsLdapDownsyncResponse" `
                                -IsBodyNullable $false

        if ($WithHttpInfo.IsPresent) {
            return $LocalVarResult
        } else {
            return $LocalVarResult["Response"]
        }
    }
}

<#
.SYNOPSIS

updateAllUsers

.DESCRIPTION

No description available.

.PARAMETER XCsrfToken
CSRF Token

.PARAMETER Import
Import new users from LDAP

.PARAMETER Lang
Default language for imported users

.PARAMETER Timeout
Time in seconds to wait for completion

.PARAMETER WithHttpInfo

A switch when turned on will return a hash table of Response, StatusCode and Headers instead of just the Response

.OUTPUTS

DomainsLdapDownsyncResponse
#>
function Update-GroAdminAllUsers {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${XCsrfToken},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [System.Nullable[Boolean]]
        ${Import},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${Lang},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [System.Nullable[Double]]
        ${Timeout},
        [Switch]
        $WithHttpInfo
    )

    Process {
        'Calling method: Update-GroAdminAllUsers' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $LocalVarAccepts = @()
        $LocalVarContentTypes = @()
        $LocalVarQueryParameters = @{}
        $LocalVarHeaderParameters = @{}
        $LocalVarFormParameters = @{}
        $LocalVarPathParameters = @{}
        $LocalVarCookieParameters = @{}
        $LocalVarBodyParameter = $null

        $Configuration = Get-GroAdminConfiguration
        # HTTP header 'Accept' (if needed)
        $LocalVarAccepts = @('application/json')

        $LocalVarUri = '/domains/ldap/downsync'

        if ($XCsrfToken) {
            $LocalVarHeaderParameters['X-Csrf-Token'] = $XCsrfToken
        }

        if ($Import) {
            $LocalVarQueryParameters['import'] = $Import
        }

        if ($Lang) {
            $LocalVarQueryParameters['lang'] = $Lang
        }

        if ($Timeout) {
            $LocalVarQueryParameters['timeout'] = $Timeout
        }

        $LocalVarResult = Invoke-GroAdminApiClient -Method 'POST' `
                                -Uri $LocalVarUri `
                                -Accepts $LocalVarAccepts `
                                -ContentTypes $LocalVarContentTypes `
                                -Body $LocalVarBodyParameter `
                                -HeaderParameters $LocalVarHeaderParameters `
                                -QueryParameters $LocalVarQueryParameters `
                                -FormParameters $LocalVarFormParameters `
                                -CookieParameters $LocalVarCookieParameters `
                                -ReturnType "DomainsLdapDownsyncResponse" `
                                -IsBodyNullable $false

        if ($WithHttpInfo.IsPresent) {
            return $LocalVarResult
        } else {
            return $LocalVarResult["Response"]
        }
    }
}

<#
.SYNOPSIS

updateOrgLDAPUsers

.DESCRIPTION

No description available.

.PARAMETER ID
ID of the object

.PARAMETER XCsrfToken
CSRF Token

.PARAMETER Import
Import new users from LDAP

.PARAMETER Lang
Default language for imported users

.PARAMETER Timeout
Time in seconds to wait for completion

.PARAMETER WithHttpInfo

A switch when turned on will return a hash table of Response, StatusCode and Headers instead of just the Response

.OUTPUTS

SystemOrgsLdapDownsyncResponse
#>
function Update-GroAdminOrgLDAPUsers {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [Int32]
        ${ID},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${XCsrfToken},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [System.Nullable[Boolean]]
        ${Import},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${Lang},
        [Parameter(Position = 4, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [System.Nullable[Double]]
        ${Timeout},
        [Switch]
        $WithHttpInfo
    )

    Process {
        'Calling method: Update-GroAdminOrgLDAPUsers' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $LocalVarAccepts = @()
        $LocalVarContentTypes = @()
        $LocalVarQueryParameters = @{}
        $LocalVarHeaderParameters = @{}
        $LocalVarFormParameters = @{}
        $LocalVarPathParameters = @{}
        $LocalVarCookieParameters = @{}
        $LocalVarBodyParameter = $null

        $Configuration = Get-GroAdminConfiguration
        # HTTP header 'Accept' (if needed)
        $LocalVarAccepts = @('application/json')

        $LocalVarUri = '/system/orgs/{ID}/ldap/downsync'
        if (!$ID) {
            throw "Error! The required parameter `ID` missing when calling updateOrgLDAPUsers."
        }
        $LocalVarUri = $LocalVarUri.replace('{ID}', [System.Web.HTTPUtility]::UrlEncode($ID))

        if ($XCsrfToken) {
            $LocalVarHeaderParameters['X-Csrf-Token'] = $XCsrfToken
        }

        if ($Import) {
            $LocalVarQueryParameters['import'] = $Import
        }

        if ($Lang) {
            $LocalVarQueryParameters['lang'] = $Lang
        }

        if ($Timeout) {
            $LocalVarQueryParameters['timeout'] = $Timeout
        }

        $LocalVarResult = Invoke-GroAdminApiClient -Method 'POST' `
                                -Uri $LocalVarUri `
                                -Accepts $LocalVarAccepts `
                                -ContentTypes $LocalVarContentTypes `
                                -Body $LocalVarBodyParameter `
                                -HeaderParameters $LocalVarHeaderParameters `
                                -QueryParameters $LocalVarQueryParameters `
                                -FormParameters $LocalVarFormParameters `
                                -CookieParameters $LocalVarCookieParameters `
                                -ReturnType "SystemOrgsLdapDownsyncResponse" `
                                -IsBodyNullable $false

        if ($WithHttpInfo.IsPresent) {
            return $LocalVarResult
        } else {
            return $LocalVarResult["Response"]
        }
    }
}

