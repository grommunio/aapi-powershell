#
# grommunio Admin API
# grommunio administration REST API
# Version: 1.19.0
#

<#
.SYNOPSIS

Cancel wipe request

.DESCRIPTION

No description available.

.PARAMETER UserID
ID of the user

.PARAMETER DomainID
ID of the domain

.PARAMETER DeviceID
Device ID

.PARAMETER XCsrfToken
CSRF Token

.PARAMETER WithHttpInfo

A switch when turned on will return a hash table of Response, StatusCode and Headers instead of just the Response

.OUTPUTS

None
#>
function Stop-GroAdminWipe {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [Int32]
        ${UserID},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [Int32]
        ${DomainID},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${DeviceID},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${XCsrfToken},
        [Switch]
        $WithHttpInfo
    )

    Process {
        'Calling method: Stop-GroAdminWipe' | Write-Debug
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

        $LocalVarUri = '/domains/{domainID}/users/{userID}/sync/{deviceID}/wipe'
        if (!$UserID) {
            throw "Error! The required parameter `UserID` missing when calling cancelWipe."
        }
        $LocalVarUri = $LocalVarUri.replace('{userID}', [System.Web.HTTPUtility]::UrlEncode($UserID))
        if (!$DomainID) {
            throw "Error! The required parameter `DomainID` missing when calling cancelWipe."
        }
        $LocalVarUri = $LocalVarUri.replace('{domainID}', [System.Web.HTTPUtility]::UrlEncode($DomainID))
        if (!$DeviceID) {
            throw "Error! The required parameter `DeviceID` missing when calling cancelWipe."
        }
        $LocalVarUri = $LocalVarUri.replace('{deviceID}', [System.Web.HTTPUtility]::UrlEncode($DeviceID))

        if ($XCsrfToken) {
            $LocalVarHeaderParameters['X-Csrf-Token'] = $XCsrfToken
        }

        if ($Configuration["ApiKeyPrefix"] -and $Configuration["ApiKeyPrefix"]["grommunioAuthJwt"]) {
            $apiKeyPrefix = $Configuration["ApiKeyPrefix"]["grommunioAuthJwt"]
        } else {
            $apiKeyPrefix = ""
        }
        if ($Configuration["Cookie"]) {
            $LocalVarCookieParameters['JWTCookie'] = $Configuration["Cookie"]
            Write-Verbose ("Using API key `JWTCookie` in the cookie for authentication in {0}" -f $MyInvocation.MyCommand)
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

Remove user from store access list

.DESCRIPTION

No description available.

.PARAMETER UserID
ID of the user

.PARAMETER DomainID
ID of the domain

.PARAMETER Username
E-mail address of the user

.PARAMETER XCsrfToken
CSRF Token

.PARAMETER WithHttpInfo

A switch when turned on will return a hash table of Response, StatusCode and Headers instead of just the Response

.OUTPUTS

None
#>
function Invoke-GroAdminDeleteStoreAccessUser {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [Int32]
        ${UserID},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [Int32]
        ${DomainID},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${Username},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${XCsrfToken},
        [Switch]
        $WithHttpInfo
    )

    Process {
        'Calling method: Invoke-GroAdminDeleteStoreAccessUser' | Write-Debug
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

        $LocalVarUri = '/domains/{domainID}/users/{userID}/storeAccess/{username}'
        if (!$UserID) {
            throw "Error! The required parameter `UserID` missing when calling deleteStoreAccessUser."
        }
        $LocalVarUri = $LocalVarUri.replace('{userID}', [System.Web.HTTPUtility]::UrlEncode($UserID))
        if (!$DomainID) {
            throw "Error! The required parameter `DomainID` missing when calling deleteStoreAccessUser."
        }
        $LocalVarUri = $LocalVarUri.replace('{domainID}', [System.Web.HTTPUtility]::UrlEncode($DomainID))
        if (!$Username) {
            throw "Error! The required parameter `Username` missing when calling deleteStoreAccessUser."
        }
        $LocalVarUri = $LocalVarUri.replace('{username}', [System.Web.HTTPUtility]::UrlEncode($Username))

        if ($XCsrfToken) {
            $LocalVarHeaderParameters['X-Csrf-Token'] = $XCsrfToken
        }

        if ($Configuration["ApiKeyPrefix"] -and $Configuration["ApiKeyPrefix"]["grommunioAuthJwt"]) {
            $apiKeyPrefix = $Configuration["ApiKeyPrefix"]["grommunioAuthJwt"]
        } else {
            $apiKeyPrefix = ""
        }
        if ($Configuration["Cookie"]) {
            $LocalVarCookieParameters['JWTCookie'] = $Configuration["Cookie"]
            Write-Verbose ("Using API key `JWTCookie` in the cookie for authentication in {0}" -f $MyInvocation.MyCommand)
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

Delete user store props

.DESCRIPTION

No description available.

.PARAMETER UserID
ID of the user

.PARAMETER DomainID
ID of the domain

.PARAMETER XCsrfToken
CSRF Token

.PARAMETER Properties
Comma separated list of properties to return

.PARAMETER WithHttpInfo

A switch when turned on will return a hash table of Response, StatusCode and Headers instead of just the Response

.OUTPUTS

None
#>
function Invoke-GroAdminDeleteStoreProps {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [Int32]
        ${UserID},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [Int32]
        ${DomainID},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${XCsrfToken},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${Properties},
        [Switch]
        $WithHttpInfo
    )

    Process {
        'Calling method: Invoke-GroAdminDeleteStoreProps' | Write-Debug
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

        $LocalVarUri = '/domains/{domainID}/users/{userID}/storeProps'
        if (!$UserID) {
            throw "Error! The required parameter `UserID` missing when calling deleteStoreProps."
        }
        $LocalVarUri = $LocalVarUri.replace('{userID}', [System.Web.HTTPUtility]::UrlEncode($UserID))
        if (!$DomainID) {
            throw "Error! The required parameter `DomainID` missing when calling deleteStoreProps."
        }
        $LocalVarUri = $LocalVarUri.replace('{domainID}', [System.Web.HTTPUtility]::UrlEncode($DomainID))

        if ($XCsrfToken) {
            $LocalVarHeaderParameters['X-Csrf-Token'] = $XCsrfToken
        }

        if ($Properties) {
            $LocalVarQueryParameters['properties'] = $Properties
        }

        if ($Configuration["ApiKeyPrefix"] -and $Configuration["ApiKeyPrefix"]["grommunioAuthJwt"]) {
            $apiKeyPrefix = $Configuration["ApiKeyPrefix"]["grommunioAuthJwt"]
        } else {
            $apiKeyPrefix = ""
        }
        if ($Configuration["Cookie"]) {
            $LocalVarCookieParameters['JWTCookie'] = $Configuration["Cookie"]
            Write-Verbose ("Using API key `JWTCookie` in the cookie for authentication in {0}" -f $MyInvocation.MyCommand)
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

Delete user

.DESCRIPTION

No description available.

.PARAMETER UserID
ID of the user

.PARAMETER DomainID
ID of the domain

.PARAMETER XCsrfToken
CSRF Token

.PARAMETER DeleteFiles
Delete user files on disk

.PARAMETER DeleteChatUser
Permanently delete chat user

.PARAMETER WithHttpInfo

A switch when turned on will return a hash table of Response, StatusCode and Headers instead of just the Response

.OUTPUTS

None
#>
function Invoke-GroAdminDeleteUser {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [Int32]
        ${UserID},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [Int32]
        ${DomainID},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${XCsrfToken},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [System.Nullable[Boolean]]
        ${DeleteFiles},
        [Parameter(Position = 4, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [System.Nullable[Boolean]]
        ${DeleteChatUser},
        [Switch]
        $WithHttpInfo
    )

    Process {
        'Calling method: Invoke-GroAdminDeleteUser' | Write-Debug
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

        $LocalVarUri = '/domains/{domainID}/users/{userID}'
        if (!$UserID) {
            throw "Error! The required parameter `UserID` missing when calling deleteUser."
        }
        $LocalVarUri = $LocalVarUri.replace('{userID}', [System.Web.HTTPUtility]::UrlEncode($UserID))
        if (!$DomainID) {
            throw "Error! The required parameter `DomainID` missing when calling deleteUser."
        }
        $LocalVarUri = $LocalVarUri.replace('{domainID}', [System.Web.HTTPUtility]::UrlEncode($DomainID))

        if ($XCsrfToken) {
            $LocalVarHeaderParameters['X-Csrf-Token'] = $XCsrfToken
        }

        if ($DeleteFiles) {
            $LocalVarQueryParameters['deleteFiles'] = $DeleteFiles
        }

        if ($DeleteChatUser) {
            $LocalVarQueryParameters['deleteChatUser'] = $DeleteChatUser
        }

        if ($Configuration["ApiKeyPrefix"] -and $Configuration["ApiKeyPrefix"]["grommunioAuthJwt"]) {
            $apiKeyPrefix = $Configuration["ApiKeyPrefix"]["grommunioAuthJwt"]
        } else {
            $apiKeyPrefix = ""
        }
        if ($Configuration["Cookie"]) {
            $LocalVarCookieParameters['JWTCookie'] = $Configuration["Cookie"]
            Write-Verbose ("Using API key `JWTCookie` in the cookie for authentication in {0}" -f $MyInvocation.MyCommand)
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

Get list of users that can send mails on the users behalf

.DESCRIPTION

No description available.

.PARAMETER UserID
ID of the user

.PARAMETER DomainID
ID of the domain

.PARAMETER WithHttpInfo

A switch when turned on will return a hash table of Response, StatusCode and Headers instead of just the Response

.OUTPUTS

GetServicesListDBConf200Response
#>
function Get-GroAdminDelegates {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [Int32]
        ${UserID},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [Int32]
        ${DomainID},
        [Switch]
        $WithHttpInfo
    )

    Process {
        'Calling method: Get-GroAdminDelegates' | Write-Debug
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

        $LocalVarUri = '/domains/{domainID}/users/{userID}/delegates'
        if (!$UserID) {
            throw "Error! The required parameter `UserID` missing when calling getDelegates."
        }
        $LocalVarUri = $LocalVarUri.replace('{userID}', [System.Web.HTTPUtility]::UrlEncode($UserID))
        if (!$DomainID) {
            throw "Error! The required parameter `DomainID` missing when calling getDelegates."
        }
        $LocalVarUri = $LocalVarUri.replace('{domainID}', [System.Web.HTTPUtility]::UrlEncode($DomainID))

        if ($Configuration["ApiKeyPrefix"] -and $Configuration["ApiKeyPrefix"]["grommunioAuthJwt"]) {
            $apiKeyPrefix = $Configuration["ApiKeyPrefix"]["grommunioAuthJwt"]
        } else {
            $apiKeyPrefix = ""
        }
        if ($Configuration["Cookie"]) {
            $LocalVarCookieParameters['JWTCookie'] = $Configuration["Cookie"]
            Write-Verbose ("Using API key `JWTCookie` in the cookie for authentication in {0}" -f $MyInvocation.MyCommand)
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
                                -ReturnType "GetServicesListDBConf200Response" `
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

Get effective domain sync policy

.DESCRIPTION

No description available.

.PARAMETER DomainID
ID of the domain

.PARAMETER WithHttpInfo

A switch when turned on will return a hash table of Response, StatusCode and Headers instead of just the Response

.OUTPUTS

GetUserSyncPolicy200Response
#>
function Get-GroAdminDomainSyncPolicy {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [Int32]
        ${DomainID},
        [Switch]
        $WithHttpInfo
    )

    Process {
        'Calling method: Get-GroAdminDomainSyncPolicy' | Write-Debug
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

        $LocalVarUri = '/domains/{domainID}/syncPolicy'
        if (!$DomainID) {
            throw "Error! The required parameter `DomainID` missing when calling getDomainSyncPolicy."
        }
        $LocalVarUri = $LocalVarUri.replace('{domainID}', [System.Web.HTTPUtility]::UrlEncode($DomainID))

        if ($Configuration["ApiKeyPrefix"] -and $Configuration["ApiKeyPrefix"]["grommunioAuthJwt"]) {
            $apiKeyPrefix = $Configuration["ApiKeyPrefix"]["grommunioAuthJwt"]
        } else {
            $apiKeyPrefix = ""
        }
        if ($Configuration["Cookie"]) {
            $LocalVarCookieParameters['JWTCookie'] = $Configuration["Cookie"]
            Write-Verbose ("Using API key `JWTCookie` in the cookie for authentication in {0}" -f $MyInvocation.MyCommand)
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
                                -ReturnType "GetUserSyncPolicy200Response" `
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

Get list of users that can send mails as the user

.DESCRIPTION

No description available.

.PARAMETER UserID
ID of the user

.PARAMETER DomainID
ID of the domain

.PARAMETER WithHttpInfo

A switch when turned on will return a hash table of Response, StatusCode and Headers instead of just the Response

.OUTPUTS

GetServicesListDBConf200Response
#>
function Get-GroAdminSendas {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [Int32]
        ${UserID},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [Int32]
        ${DomainID},
        [Switch]
        $WithHttpInfo
    )

    Process {
        'Calling method: Get-GroAdminSendas' | Write-Debug
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

        $LocalVarUri = '/domains/{domainID}/users/{userID}/sendas'
        if (!$UserID) {
            throw "Error! The required parameter `UserID` missing when calling getSendas."
        }
        $LocalVarUri = $LocalVarUri.replace('{userID}', [System.Web.HTTPUtility]::UrlEncode($UserID))
        if (!$DomainID) {
            throw "Error! The required parameter `DomainID` missing when calling getSendas."
        }
        $LocalVarUri = $LocalVarUri.replace('{domainID}', [System.Web.HTTPUtility]::UrlEncode($DomainID))

        if ($Configuration["ApiKeyPrefix"] -and $Configuration["ApiKeyPrefix"]["grommunioAuthJwt"]) {
            $apiKeyPrefix = $Configuration["ApiKeyPrefix"]["grommunioAuthJwt"]
        } else {
            $apiKeyPrefix = ""
        }
        if ($Configuration["Cookie"]) {
            $LocalVarCookieParameters['JWTCookie'] = $Configuration["Cookie"]
            Write-Verbose ("Using API key `JWTCookie` in the cookie for authentication in {0}" -f $MyInvocation.MyCommand)
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
                                -ReturnType "GetServicesListDBConf200Response" `
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

Get list of users that can access the users store

.DESCRIPTION

No description available.

.PARAMETER UserID
ID of the user

.PARAMETER DomainID
ID of the domain

.PARAMETER WithHttpInfo

A switch when turned on will return a hash table of Response, StatusCode and Headers instead of just the Response

.OUTPUTS

GetStoreAccessUsers200Response
#>
function Get-GroAdminStoreAccessUsers {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [Int32]
        ${UserID},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [Int32]
        ${DomainID},
        [Switch]
        $WithHttpInfo
    )

    Process {
        'Calling method: Get-GroAdminStoreAccessUsers' | Write-Debug
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

        $LocalVarUri = '/domains/{domainID}/users/{userID}/storeAccess'
        if (!$UserID) {
            throw "Error! The required parameter `UserID` missing when calling getStoreAccessUsers."
        }
        $LocalVarUri = $LocalVarUri.replace('{userID}', [System.Web.HTTPUtility]::UrlEncode($UserID))
        if (!$DomainID) {
            throw "Error! The required parameter `DomainID` missing when calling getStoreAccessUsers."
        }
        $LocalVarUri = $LocalVarUri.replace('{domainID}', [System.Web.HTTPUtility]::UrlEncode($DomainID))

        if ($Configuration["ApiKeyPrefix"] -and $Configuration["ApiKeyPrefix"]["grommunioAuthJwt"]) {
            $apiKeyPrefix = $Configuration["ApiKeyPrefix"]["grommunioAuthJwt"]
        } else {
            $apiKeyPrefix = ""
        }
        if ($Configuration["Cookie"]) {
            $LocalVarCookieParameters['JWTCookie'] = $Configuration["Cookie"]
            Write-Verbose ("Using API key `JWTCookie` in the cookie for authentication in {0}" -f $MyInvocation.MyCommand)
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
                                -ReturnType "GetStoreAccessUsers200Response" `
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

Get user store properties

.DESCRIPTION

No description available.

.PARAMETER UserID
ID of the user

.PARAMETER DomainID
ID of the domain

.PARAMETER Properties
Comma separated list of properties to return

.PARAMETER WithHttpInfo

A switch when turned on will return a hash table of Response, StatusCode and Headers instead of just the Response

.OUTPUTS

GetStoreProps200Response
#>
function Get-GroAdminStoreProps {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [Int32]
        ${UserID},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [Int32]
        ${DomainID},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${Properties},
        [Switch]
        $WithHttpInfo
    )

    Process {
        'Calling method: Get-GroAdminStoreProps' | Write-Debug
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

        $LocalVarUri = '/domains/{domainID}/users/{userID}/storeProps'
        if (!$UserID) {
            throw "Error! The required parameter `UserID` missing when calling getStoreProps."
        }
        $LocalVarUri = $LocalVarUri.replace('{userID}', [System.Web.HTTPUtility]::UrlEncode($UserID))
        if (!$DomainID) {
            throw "Error! The required parameter `DomainID` missing when calling getStoreProps."
        }
        $LocalVarUri = $LocalVarUri.replace('{domainID}', [System.Web.HTTPUtility]::UrlEncode($DomainID))

        if ($Properties) {
            $LocalVarQueryParameters['properties'] = $Properties
        }

        if ($Configuration["ApiKeyPrefix"] -and $Configuration["ApiKeyPrefix"]["grommunioAuthJwt"]) {
            $apiKeyPrefix = $Configuration["ApiKeyPrefix"]["grommunioAuthJwt"]
        } else {
            $apiKeyPrefix = ""
        }
        if ($Configuration["Cookie"]) {
            $LocalVarCookieParameters['JWTCookie'] = $Configuration["Cookie"]
            Write-Verbose ("Using API key `JWTCookie` in the cookie for authentication in {0}" -f $MyInvocation.MyCommand)
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
                                -ReturnType "GetStoreProps200Response" `
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

Get status of synced devices

.DESCRIPTION

No description available.

.PARAMETER UserID
ID of the user

.PARAMETER DomainID
ID of the domain

.PARAMETER WithHttpInfo

A switch when turned on will return a hash table of Response, StatusCode and Headers instead of just the Response

.OUTPUTS

GetSyncedDevices200Response
#>
function Get-GroAdminSyncedDevices {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [Int32]
        ${UserID},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [Int32]
        ${DomainID},
        [Switch]
        $WithHttpInfo
    )

    Process {
        'Calling method: Get-GroAdminSyncedDevices' | Write-Debug
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

        $LocalVarUri = '/domains/{domainID}/users/{userID}/sync'
        if (!$UserID) {
            throw "Error! The required parameter `UserID` missing when calling getSyncedDevices."
        }
        $LocalVarUri = $LocalVarUri.replace('{userID}', [System.Web.HTTPUtility]::UrlEncode($UserID))
        if (!$DomainID) {
            throw "Error! The required parameter `DomainID` missing when calling getSyncedDevices."
        }
        $LocalVarUri = $LocalVarUri.replace('{domainID}', [System.Web.HTTPUtility]::UrlEncode($DomainID))

        if ($Configuration["ApiKeyPrefix"] -and $Configuration["ApiKeyPrefix"]["grommunioAuthJwt"]) {
            $apiKeyPrefix = $Configuration["ApiKeyPrefix"]["grommunioAuthJwt"]
        } else {
            $apiKeyPrefix = ""
        }
        if ($Configuration["Cookie"]) {
            $LocalVarCookieParameters['JWTCookie'] = $Configuration["Cookie"]
            Write-Verbose ("Using API key `JWTCookie` in the cookie for authentication in {0}" -f $MyInvocation.MyCommand)
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
                                -ReturnType "GetSyncedDevices200Response" `
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

Get information about a specific user

.DESCRIPTION

No description available.

.PARAMETER UserID
ID of the user

.PARAMETER DomainID
ID of the domain

.PARAMETER Level
Set detail level of return value. Usually ranges from 0 to 2.

.PARAMETER WithHttpInfo

A switch when turned on will return a hash table of Response, StatusCode and Headers instead of just the Response

.OUTPUTS

User
#>
function Get-GroAdminUser {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [Int32]
        ${UserID},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [Int32]
        ${DomainID},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [System.Nullable[Int32]]
        ${Level},
        [Switch]
        $WithHttpInfo
    )

    Process {
        'Calling method: Get-GroAdminUser' | Write-Debug
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

        $LocalVarUri = '/domains/{domainID}/users/{userID}'
        if (!$UserID) {
            throw "Error! The required parameter `UserID` missing when calling getUser."
        }
        $LocalVarUri = $LocalVarUri.replace('{userID}', [System.Web.HTTPUtility]::UrlEncode($UserID))
        if (!$DomainID) {
            throw "Error! The required parameter `DomainID` missing when calling getUser."
        }
        $LocalVarUri = $LocalVarUri.replace('{domainID}', [System.Web.HTTPUtility]::UrlEncode($DomainID))

        if ($Level) {
            $LocalVarQueryParameters['level'] = $Level
        }

        if ($Configuration["ApiKeyPrefix"] -and $Configuration["ApiKeyPrefix"]["grommunioAuthJwt"]) {
            $apiKeyPrefix = $Configuration["ApiKeyPrefix"]["grommunioAuthJwt"]
        } else {
            $apiKeyPrefix = ""
        }
        if ($Configuration["Cookie"]) {
            $LocalVarCookieParameters['JWTCookie'] = $Configuration["Cookie"]
            Write-Verbose ("Using API key `JWTCookie` in the cookie for authentication in {0}" -f $MyInvocation.MyCommand)
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

Get lists of users

.DESCRIPTION

No description available.

.PARAMETER DomainID
ID of the domain

.PARAMETER Level
Set detail level of return value. Usually ranges from 0 to 2.

.PARAMETER Limit
Maximum number of results to return

.PARAMETER Offset
Index of the first element to return

.PARAMETER Match
Match by substring

.PARAMETER MatchFields
Comma separated list of attributes to restrict matching to.

.PARAMETER MatchProps
Comma separated list of user properties to match

.PARAMETER FilterProp
Filter by user property

.PARAMETER Sort
Sort by attribute. Can be given multiple times.

.PARAMETER ID
Filter one or more IDs

.PARAMETER Username
Filter by username

.PARAMETER Mlist
Hide MList users

.PARAMETER Properties
Comma separated list of properties to return

.PARAMETER WithHttpInfo

A switch when turned on will return a hash table of Response, StatusCode and Headers instead of just the Response

.OUTPUTS

GetAllUsers200Response
#>
function Get-GroAdminUsers {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [Int32]
        ${DomainID},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [System.Nullable[Int32]]
        ${Level},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [System.Nullable[Int32]]
        ${Limit},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [System.Nullable[Int32]]
        ${Offset},
        [Parameter(Position = 4, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${Match},
        [Parameter(Position = 5, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${MatchFields},
        [Parameter(Position = 6, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${MatchProps},
        [Parameter(Position = 7, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${FilterProp},
        [Parameter(Position = 8, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${Sort},
        [Parameter(Position = 9, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [System.Nullable[Int32][]]
        ${ID},
        [Parameter(Position = 10, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${Username},
        [Parameter(Position = 11, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [ValidateSet("")]
        [String]
        ${Mlist},
        [Parameter(Position = 12, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${Properties},
        [Switch]
        $WithHttpInfo
    )

    Process {
        'Calling method: Get-GroAdminUsers' | Write-Debug
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

        $LocalVarUri = '/domains/{domainID}/users'
        if (!$DomainID) {
            throw "Error! The required parameter `DomainID` missing when calling getUsers."
        }
        $LocalVarUri = $LocalVarUri.replace('{domainID}', [System.Web.HTTPUtility]::UrlEncode($DomainID))

        if ($Level) {
            $LocalVarQueryParameters['level'] = $Level
        }

        if ($Limit) {
            $LocalVarQueryParameters['limit'] = $Limit
        }

        if ($Offset) {
            $LocalVarQueryParameters['offset'] = $Offset
        }

        if ($Match) {
            $LocalVarQueryParameters['match'] = $Match
        }

        if ($MatchFields) {
            $LocalVarQueryParameters['matchFields'] = $MatchFields
        }

        if ($MatchProps) {
            $LocalVarQueryParameters['matchProps'] = $MatchProps
        }

        if ($FilterProp) {
            $LocalVarQueryParameters['filterProp'] = $FilterProp
        }

        if ($Sort) {
            $LocalVarQueryParameters['sort'] = $Sort
        }

        if ($ID) {
            $LocalVarQueryParameters['ID'] = $ID
        }

        if ($Username) {
            $LocalVarQueryParameters['username'] = $Username
        }

        if ($Mlist) {
            $LocalVarQueryParameters['mlist'] = $Mlist
        }

        if ($Properties) {
            $LocalVarQueryParameters['properties'] = $Properties
        }

        if ($Configuration["ApiKeyPrefix"] -and $Configuration["ApiKeyPrefix"]["grommunioAuthJwt"]) {
            $apiKeyPrefix = $Configuration["ApiKeyPrefix"]["grommunioAuthJwt"]
        } else {
            $apiKeyPrefix = ""
        }
        if ($Configuration["Cookie"]) {
            $LocalVarCookieParameters['JWTCookie'] = $Configuration["Cookie"]
            Write-Verbose ("Using API key `JWTCookie` in the cookie for authentication in {0}" -f $MyInvocation.MyCommand)
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
                                -ReturnType "GetAllUsers200Response" `
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

Get user's out of office state

.DESCRIPTION

No description available.

.PARAMETER DomainID
ID of the domain

.PARAMETER UserID
ID of the user

.PARAMETER WithHttpInfo

A switch when turned on will return a hash table of Response, StatusCode and Headers instead of just the Response

.OUTPUTS

UserOofState
#>
function Invoke-GroAdminOofSizeLarge {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [Int32]
        ${DomainID},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [Int32]
        ${UserID},
        [Switch]
        $WithHttpInfo
    )

    Process {
        'Calling method: Invoke-GroAdminOofSizeLarge' | Write-Debug
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

        $LocalVarUri = '/domains/{domainID}/users/{userID}/oof'
        if (!$DomainID) {
            throw "Error! The required parameter `DomainID` missing when calling oofSizeLarge."
        }
        $LocalVarUri = $LocalVarUri.replace('{domainID}', [System.Web.HTTPUtility]::UrlEncode($DomainID))
        if (!$UserID) {
            throw "Error! The required parameter `UserID` missing when calling oofSizeLarge."
        }
        $LocalVarUri = $LocalVarUri.replace('{userID}', [System.Web.HTTPUtility]::UrlEncode($UserID))

        if ($Configuration["ApiKeyPrefix"] -and $Configuration["ApiKeyPrefix"]["grommunioAuthJwt"]) {
            $apiKeyPrefix = $Configuration["ApiKeyPrefix"]["grommunioAuthJwt"]
        } else {
            $apiKeyPrefix = ""
        }
        if ($Configuration["Cookie"]) {
            $LocalVarCookieParameters['JWTCookie'] = $Configuration["Cookie"]
            Write-Verbose ("Using API key `JWTCookie` in the cookie for authentication in {0}" -f $MyInvocation.MyCommand)
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
                                -ReturnType "UserOofState" `
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

Update store properties

.DESCRIPTION

No description available.

.PARAMETER UserID
ID of the user

.PARAMETER DomainID
ID of the domain

.PARAMETER XCsrfToken
CSRF Token

.PARAMETER RequestBody
No description available.

.PARAMETER WithHttpInfo

A switch when turned on will return a hash table of Response, StatusCode and Headers instead of just the Response

.OUTPUTS

PatchStoreProps200Response
#>
function Invoke-GroAdminPatchStoreProps {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [Int32]
        ${UserID},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [Int32]
        ${DomainID},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${XCsrfToken},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [System.Collections.Hashtable]
        ${RequestBody},
        [Switch]
        $WithHttpInfo
    )

    Process {
        'Calling method: Invoke-GroAdminPatchStoreProps' | Write-Debug
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

        $LocalVarUri = '/domains/{domainID}/users/{userID}/storeProps'
        if (!$UserID) {
            throw "Error! The required parameter `UserID` missing when calling patchStoreProps."
        }
        $LocalVarUri = $LocalVarUri.replace('{userID}', [System.Web.HTTPUtility]::UrlEncode($UserID))
        if (!$DomainID) {
            throw "Error! The required parameter `DomainID` missing when calling patchStoreProps."
        }
        $LocalVarUri = $LocalVarUri.replace('{domainID}', [System.Web.HTTPUtility]::UrlEncode($DomainID))

        if ($XCsrfToken) {
            $LocalVarHeaderParameters['X-Csrf-Token'] = $XCsrfToken
        }

        $LocalVarBodyParameter = $RequestBody | ConvertTo-Json -Depth 100

        $LocalVarResult = Invoke-GroAdminApiClient -Method 'PATCH' `
                                -Uri $LocalVarUri `
                                -Accepts $LocalVarAccepts `
                                -ContentTypes $LocalVarContentTypes `
                                -Body $LocalVarBodyParameter `
                                -HeaderParameters $LocalVarHeaderParameters `
                                -QueryParameters $LocalVarQueryParameters `
                                -FormParameters $LocalVarFormParameters `
                                -CookieParameters $LocalVarCookieParameters `
                                -ReturnType "PatchStoreProps200Response" `
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

Update user

.DESCRIPTION

No description available.

.PARAMETER UserID
ID of the user

.PARAMETER DomainID
ID of the domain

.PARAMETER XCsrfToken
CSRF Token

.PARAMETER UserUpdate
No description available.

.PARAMETER WithHttpInfo

A switch when turned on will return a hash table of Response, StatusCode and Headers instead of just the Response

.OUTPUTS

User
#>
function Invoke-GroAdminPatchUser {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [Int32]
        ${UserID},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [Int32]
        ${DomainID},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${XCsrfToken},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [PSCustomObject]
        ${UserUpdate},
        [Switch]
        $WithHttpInfo
    )

    Process {
        'Calling method: Invoke-GroAdminPatchUser' | Write-Debug
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

        $LocalVarUri = '/domains/{domainID}/users/{userID}'
        if (!$UserID) {
            throw "Error! The required parameter `UserID` missing when calling patchUser."
        }
        $LocalVarUri = $LocalVarUri.replace('{userID}', [System.Web.HTTPUtility]::UrlEncode($UserID))
        if (!$DomainID) {
            throw "Error! The required parameter `DomainID` missing when calling patchUser."
        }
        $LocalVarUri = $LocalVarUri.replace('{domainID}', [System.Web.HTTPUtility]::UrlEncode($DomainID))

        if ($XCsrfToken) {
            $LocalVarHeaderParameters['X-Csrf-Token'] = $XCsrfToken
        }

        $LocalVarBodyParameter = $UserUpdate | ConvertTo-Json -Depth 100

        if ($Configuration["ApiKeyPrefix"] -and $Configuration["ApiKeyPrefix"]["grommunioAuthJwt"]) {
            $apiKeyPrefix = $Configuration["ApiKeyPrefix"]["grommunioAuthJwt"]
        } else {
            $apiKeyPrefix = ""
        }
        if ($Configuration["Cookie"]) {
            $LocalVarCookieParameters['JWTCookie'] = $Configuration["Cookie"]
            Write-Verbose ("Using API key `JWTCookie` in the cookie for authentication in {0}" -f $MyInvocation.MyCommand)
        }

        $LocalVarResult = Invoke-GroAdminApiClient -Method 'PATCH' `
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

Request a device wipe

.DESCRIPTION

No description available.

.PARAMETER UserID
ID of the user

.PARAMETER DomainID
ID of the domain

.PARAMETER DeviceID
Device ID

.PARAMETER XCsrfToken
CSRF Token

.PARAMETER PostDeviceWipeRequest
No description available.

.PARAMETER WithHttpInfo

A switch when turned on will return a hash table of Response, StatusCode and Headers instead of just the Response

.OUTPUTS

None
#>
function Submit-GroAdminDeviceWipe {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [Int32]
        ${UserID},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [Int32]
        ${DomainID},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${DeviceID},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${XCsrfToken},
        [Parameter(Position = 4, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [PSCustomObject]
        ${PostDeviceWipeRequest},
        [Switch]
        $WithHttpInfo
    )

    Process {
        'Calling method: Submit-GroAdminDeviceWipe' | Write-Debug
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

        $LocalVarUri = '/domains/{domainID}/users/{userID}/sync/{deviceID}/wipe'
        if (!$UserID) {
            throw "Error! The required parameter `UserID` missing when calling postDeviceWipe."
        }
        $LocalVarUri = $LocalVarUri.replace('{userID}', [System.Web.HTTPUtility]::UrlEncode($UserID))
        if (!$DomainID) {
            throw "Error! The required parameter `DomainID` missing when calling postDeviceWipe."
        }
        $LocalVarUri = $LocalVarUri.replace('{domainID}', [System.Web.HTTPUtility]::UrlEncode($DomainID))
        if (!$DeviceID) {
            throw "Error! The required parameter `DeviceID` missing when calling postDeviceWipe."
        }
        $LocalVarUri = $LocalVarUri.replace('{deviceID}', [System.Web.HTTPUtility]::UrlEncode($DeviceID))

        if ($XCsrfToken) {
            $LocalVarHeaderParameters['X-Csrf-Token'] = $XCsrfToken
        }

        $LocalVarBodyParameter = $PostDeviceWipeRequest | ConvertTo-Json -Depth 100

        if ($Configuration["ApiKeyPrefix"] -and $Configuration["ApiKeyPrefix"]["grommunioAuthJwt"]) {
            $apiKeyPrefix = $Configuration["ApiKeyPrefix"]["grommunioAuthJwt"]
        } else {
            $apiKeyPrefix = ""
        }
        if ($Configuration["Cookie"]) {
            $LocalVarCookieParameters['JWTCookie'] = $Configuration["Cookie"]
            Write-Verbose ("Using API key `JWTCookie` in the cookie for authentication in {0}" -f $MyInvocation.MyCommand)
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

Grant store access to another user

.DESCRIPTION

No description available.

.PARAMETER UserID
ID of the user

.PARAMETER DomainID
ID of the domain

.PARAMETER XCsrfToken
CSRF Token

.PARAMETER PostStoreAccessUserRequest
No description available.

.PARAMETER WithHttpInfo

A switch when turned on will return a hash table of Response, StatusCode and Headers instead of just the Response

.OUTPUTS

None
#>
function Submit-GroAdminStoreAccessUser {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [Int32]
        ${UserID},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [Int32]
        ${DomainID},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${XCsrfToken},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [PSCustomObject]
        ${PostStoreAccessUserRequest},
        [Switch]
        $WithHttpInfo
    )

    Process {
        'Calling method: Submit-GroAdminStoreAccessUser' | Write-Debug
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

        $LocalVarUri = '/domains/{domainID}/users/{userID}/storeAccess'
        if (!$UserID) {
            throw "Error! The required parameter `UserID` missing when calling postStoreAccessUser."
        }
        $LocalVarUri = $LocalVarUri.replace('{userID}', [System.Web.HTTPUtility]::UrlEncode($UserID))
        if (!$DomainID) {
            throw "Error! The required parameter `DomainID` missing when calling postStoreAccessUser."
        }
        $LocalVarUri = $LocalVarUri.replace('{domainID}', [System.Web.HTTPUtility]::UrlEncode($DomainID))

        if ($XCsrfToken) {
            $LocalVarHeaderParameters['X-Csrf-Token'] = $XCsrfToken
        }

        $LocalVarBodyParameter = $PostStoreAccessUserRequest | ConvertTo-Json -Depth 100

        if ($Configuration["ApiKeyPrefix"] -and $Configuration["ApiKeyPrefix"]["grommunioAuthJwt"]) {
            $apiKeyPrefix = $Configuration["ApiKeyPrefix"]["grommunioAuthJwt"]
        } else {
            $apiKeyPrefix = ""
        }
        if ($Configuration["Cookie"]) {
            $LocalVarCookieParameters['JWTCookie'] = $Configuration["Cookie"]
            Write-Verbose ("Using API key `JWTCookie` in the cookie for authentication in {0}" -f $MyInvocation.MyCommand)
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

Create new user

.DESCRIPTION

No description available.

.PARAMETER DomainID
ID of the domain

.PARAMETER XCsrfToken
CSRF Token

.PARAMETER UserInit
No description available.

.PARAMETER WithHttpInfo

A switch when turned on will return a hash table of Response, StatusCode and Headers instead of just the Response

.OUTPUTS

User
#>
function Submit-GroAdminUser {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [Int32]
        ${DomainID},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${XCsrfToken},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [PSCustomObject]
        ${UserInit},
        [Switch]
        $WithHttpInfo
    )

    Process {
        'Calling method: Submit-GroAdminUser' | Write-Debug
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

        $LocalVarUri = '/domains/{domainID}/users'
        if (!$DomainID) {
            throw "Error! The required parameter `DomainID` missing when calling postUser."
        }
        $LocalVarUri = $LocalVarUri.replace('{domainID}', [System.Web.HTTPUtility]::UrlEncode($DomainID))

        if ($XCsrfToken) {
            $LocalVarHeaderParameters['X-Csrf-Token'] = $XCsrfToken
        }

        $LocalVarBodyParameter = $UserInit | ConvertTo-Json -Depth 100

        if ($Configuration["ApiKeyPrefix"] -and $Configuration["ApiKeyPrefix"]["grommunioAuthJwt"]) {
            $apiKeyPrefix = $Configuration["ApiKeyPrefix"]["grommunioAuthJwt"]
        } else {
            $apiKeyPrefix = ""
        }
        if ($Configuration["Cookie"]) {
            $LocalVarCookieParameters['JWTCookie'] = $Configuration["Cookie"]
            Write-Verbose ("Using API key `JWTCookie` in the cookie for authentication in {0}" -f $MyInvocation.MyCommand)
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

Set list of users that can send mails on the users behalf

.DESCRIPTION

No description available.

.PARAMETER UserID
ID of the user

.PARAMETER DomainID
ID of the domain

.PARAMETER XCsrfToken
CSRF Token

.PARAMETER RequestBody
No description available.

.PARAMETER WithHttpInfo

A switch when turned on will return a hash table of Response, StatusCode and Headers instead of just the Response

.OUTPUTS

None
#>
function Send-GroAdminDelegates {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [Int32]
        ${UserID},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [Int32]
        ${DomainID},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${XCsrfToken},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String[]]
        ${RequestBody},
        [Switch]
        $WithHttpInfo
    )

    Process {
        'Calling method: Send-GroAdminDelegates' | Write-Debug
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

        $LocalVarUri = '/domains/{domainID}/users/{userID}/delegates'
        if (!$UserID) {
            throw "Error! The required parameter `UserID` missing when calling putDelegates."
        }
        $LocalVarUri = $LocalVarUri.replace('{userID}', [System.Web.HTTPUtility]::UrlEncode($UserID))
        if (!$DomainID) {
            throw "Error! The required parameter `DomainID` missing when calling putDelegates."
        }
        $LocalVarUri = $LocalVarUri.replace('{domainID}', [System.Web.HTTPUtility]::UrlEncode($DomainID))

        if ($XCsrfToken) {
            $LocalVarHeaderParameters['X-Csrf-Token'] = $XCsrfToken
        }

        $LocalVarBodyParameter = ConvertTo-Json @($RequestBody) -Depth 100

        if ($Configuration["ApiKeyPrefix"] -and $Configuration["ApiKeyPrefix"]["grommunioAuthJwt"]) {
            $apiKeyPrefix = $Configuration["ApiKeyPrefix"]["grommunioAuthJwt"]
        } else {
            $apiKeyPrefix = ""
        }
        if ($Configuration["Cookie"]) {
            $LocalVarCookieParameters['JWTCookie'] = $Configuration["Cookie"]
            Write-Verbose ("Using API key `JWTCookie` in the cookie for authentication in {0}" -f $MyInvocation.MyCommand)
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

Request a device resync

.DESCRIPTION

No description available.

.PARAMETER UserID
ID of the user

.PARAMETER DomainID
ID of the domain

.PARAMETER DeviceID
Device ID

.PARAMETER XCsrfToken
CSRF Token

.PARAMETER WithHttpInfo

A switch when turned on will return a hash table of Response, StatusCode and Headers instead of just the Response

.OUTPUTS

None
#>
function Send-GroAdminDeviceResync {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [Int32]
        ${UserID},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [Int32]
        ${DomainID},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${DeviceID},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${XCsrfToken},
        [Switch]
        $WithHttpInfo
    )

    Process {
        'Calling method: Send-GroAdminDeviceResync' | Write-Debug
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

        $LocalVarUri = '/domains/{domainID}/users/{userID}/sync/{deviceID}/resync'
        if (!$UserID) {
            throw "Error! The required parameter `UserID` missing when calling putDeviceResync."
        }
        $LocalVarUri = $LocalVarUri.replace('{userID}', [System.Web.HTTPUtility]::UrlEncode($UserID))
        if (!$DomainID) {
            throw "Error! The required parameter `DomainID` missing when calling putDeviceResync."
        }
        $LocalVarUri = $LocalVarUri.replace('{domainID}', [System.Web.HTTPUtility]::UrlEncode($DomainID))
        if (!$DeviceID) {
            throw "Error! The required parameter `DeviceID` missing when calling putDeviceResync."
        }
        $LocalVarUri = $LocalVarUri.replace('{deviceID}', [System.Web.HTTPUtility]::UrlEncode($DeviceID))

        if ($XCsrfToken) {
            $LocalVarHeaderParameters['X-Csrf-Token'] = $XCsrfToken
        }

        if ($Configuration["ApiKeyPrefix"] -and $Configuration["ApiKeyPrefix"]["grommunioAuthJwt"]) {
            $apiKeyPrefix = $Configuration["ApiKeyPrefix"]["grommunioAuthJwt"]
        } else {
            $apiKeyPrefix = ""
        }
        if ($Configuration["Cookie"]) {
            $LocalVarCookieParameters['JWTCookie'] = $Configuration["Cookie"]
            Write-Verbose ("Using API key `JWTCookie` in the cookie for authentication in {0}" -f $MyInvocation.MyCommand)
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

Update user from LDAP

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

        if ($Configuration["ApiKeyPrefix"] -and $Configuration["ApiKeyPrefix"]["grommunioAuthJwt"]) {
            $apiKeyPrefix = $Configuration["ApiKeyPrefix"]["grommunioAuthJwt"]
        } else {
            $apiKeyPrefix = ""
        }
        if ($Configuration["Cookie"]) {
            $LocalVarCookieParameters['JWTCookie'] = $Configuration["Cookie"]
            Write-Verbose ("Using API key `JWTCookie` in the cookie for authentication in {0}" -f $MyInvocation.MyCommand)
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

Set list of users that can send mails as the user

.DESCRIPTION

No description available.

.PARAMETER UserID
ID of the user

.PARAMETER DomainID
ID of the domain

.PARAMETER XCsrfToken
CSRF Token

.PARAMETER RequestBody
No description available.

.PARAMETER WithHttpInfo

A switch when turned on will return a hash table of Response, StatusCode and Headers instead of just the Response

.OUTPUTS

None
#>
function Send-GroAdminSendas {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [Int32]
        ${UserID},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [Int32]
        ${DomainID},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${XCsrfToken},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String[]]
        ${RequestBody},
        [Switch]
        $WithHttpInfo
    )

    Process {
        'Calling method: Send-GroAdminSendas' | Write-Debug
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

        $LocalVarUri = '/domains/{domainID}/users/{userID}/sendas'
        if (!$UserID) {
            throw "Error! The required parameter `UserID` missing when calling putSendas."
        }
        $LocalVarUri = $LocalVarUri.replace('{userID}', [System.Web.HTTPUtility]::UrlEncode($UserID))
        if (!$DomainID) {
            throw "Error! The required parameter `DomainID` missing when calling putSendas."
        }
        $LocalVarUri = $LocalVarUri.replace('{domainID}', [System.Web.HTTPUtility]::UrlEncode($DomainID))

        if ($XCsrfToken) {
            $LocalVarHeaderParameters['X-Csrf-Token'] = $XCsrfToken
        }

        $LocalVarBodyParameter = ConvertTo-Json @($RequestBody) -Depth 100

        if ($Configuration["ApiKeyPrefix"] -and $Configuration["ApiKeyPrefix"]["grommunioAuthJwt"]) {
            $apiKeyPrefix = $Configuration["ApiKeyPrefix"]["grommunioAuthJwt"]
        } else {
            $apiKeyPrefix = ""
        }
        if ($Configuration["Cookie"]) {
            $LocalVarCookieParameters['JWTCookie'] = $Configuration["Cookie"]
            Write-Verbose ("Using API key `JWTCookie` in the cookie for authentication in {0}" -f $MyInvocation.MyCommand)
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

Overwrite the list of users with store access

.DESCRIPTION

No description available.

.PARAMETER UserID
ID of the user

.PARAMETER DomainID
ID of the domain

.PARAMETER XCsrfToken
CSRF Token

.PARAMETER PutStoreAccessUserRequest
No description available.

.PARAMETER WithHttpInfo

A switch when turned on will return a hash table of Response, StatusCode and Headers instead of just the Response

.OUTPUTS

None
#>
function Send-GroAdminStoreAccessUser {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [Int32]
        ${UserID},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [Int32]
        ${DomainID},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${XCsrfToken},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [PSCustomObject]
        ${PutStoreAccessUserRequest},
        [Switch]
        $WithHttpInfo
    )

    Process {
        'Calling method: Send-GroAdminStoreAccessUser' | Write-Debug
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

        $LocalVarUri = '/domains/{domainID}/users/{userID}/storeAccess'
        if (!$UserID) {
            throw "Error! The required parameter `UserID` missing when calling putStoreAccessUser."
        }
        $LocalVarUri = $LocalVarUri.replace('{userID}', [System.Web.HTTPUtility]::UrlEncode($UserID))
        if (!$DomainID) {
            throw "Error! The required parameter `DomainID` missing when calling putStoreAccessUser."
        }
        $LocalVarUri = $LocalVarUri.replace('{domainID}', [System.Web.HTTPUtility]::UrlEncode($DomainID))

        if ($XCsrfToken) {
            $LocalVarHeaderParameters['X-Csrf-Token'] = $XCsrfToken
        }

        $LocalVarBodyParameter = $PutStoreAccessUserRequest | ConvertTo-Json -Depth 100

        if ($Configuration["ApiKeyPrefix"] -and $Configuration["ApiKeyPrefix"]["grommunioAuthJwt"]) {
            $apiKeyPrefix = $Configuration["ApiKeyPrefix"]["grommunioAuthJwt"]
        } else {
            $apiKeyPrefix = ""
        }
        if ($Configuration["Cookie"]) {
            $LocalVarCookieParameters['JWTCookie'] = $Configuration["Cookie"]
            Write-Verbose ("Using API key `JWTCookie` in the cookie for authentication in {0}" -f $MyInvocation.MyCommand)
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

Remove device (issue a resync)

.DESCRIPTION

No description available.

.PARAMETER UserID
ID of the user

.PARAMETER DomainID
ID of the domain

.PARAMETER DeviceID
Device ID

.PARAMETER XCsrfToken
CSRF Token

.PARAMETER WithHttpInfo

A switch when turned on will return a hash table of Response, StatusCode and Headers instead of just the Response

.OUTPUTS

None
#>
function Remove-GroAdminDeviceResync {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [Int32]
        ${UserID},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [Int32]
        ${DomainID},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${DeviceID},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${XCsrfToken},
        [Switch]
        $WithHttpInfo
    )

    Process {
        'Calling method: Remove-GroAdminDeviceResync' | Write-Debug
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

        $LocalVarUri = '/domains/{domainID}/users/{userID}/sync/{deviceID}'
        if (!$UserID) {
            throw "Error! The required parameter `UserID` missing when calling removeDeviceResync."
        }
        $LocalVarUri = $LocalVarUri.replace('{userID}', [System.Web.HTTPUtility]::UrlEncode($UserID))
        if (!$DomainID) {
            throw "Error! The required parameter `DomainID` missing when calling removeDeviceResync."
        }
        $LocalVarUri = $LocalVarUri.replace('{domainID}', [System.Web.HTTPUtility]::UrlEncode($DomainID))
        if (!$DeviceID) {
            throw "Error! The required parameter `DeviceID` missing when calling removeDeviceResync."
        }
        $LocalVarUri = $LocalVarUri.replace('{deviceID}', [System.Web.HTTPUtility]::UrlEncode($DeviceID))

        if ($XCsrfToken) {
            $LocalVarHeaderParameters['X-Csrf-Token'] = $XCsrfToken
        }

        if ($Configuration["ApiKeyPrefix"] -and $Configuration["ApiKeyPrefix"]["grommunioAuthJwt"]) {
            $apiKeyPrefix = $Configuration["ApiKeyPrefix"]["grommunioAuthJwt"]
        } else {
            $apiKeyPrefix = ""
        }
        if ($Configuration["Cookie"]) {
            $LocalVarCookieParameters['JWTCookie'] = $Configuration["Cookie"]
            Write-Verbose ("Using API key `JWTCookie` in the cookie for authentication in {0}" -f $MyInvocation.MyCommand)
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

Remove device states

.DESCRIPTION

No description available.

.PARAMETER UserID
ID of the user

.PARAMETER DomainID
ID of the domain

.PARAMETER XCsrfToken
CSRF Token

.PARAMETER WithHttpInfo

A switch when turned on will return a hash table of Response, StatusCode and Headers instead of just the Response

.OUTPUTS

None
#>
function Remove-GroAdminDeviceStates {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [Int32]
        ${UserID},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [Int32]
        ${DomainID},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${XCsrfToken},
        [Switch]
        $WithHttpInfo
    )

    Process {
        'Calling method: Remove-GroAdminDeviceStates' | Write-Debug
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

        $LocalVarUri = '/domains/{domainID}/users/{userID}/sync'
        if (!$UserID) {
            throw "Error! The required parameter `UserID` missing when calling removeDeviceStates."
        }
        $LocalVarUri = $LocalVarUri.replace('{userID}', [System.Web.HTTPUtility]::UrlEncode($UserID))
        if (!$DomainID) {
            throw "Error! The required parameter `DomainID` missing when calling removeDeviceStates."
        }
        $LocalVarUri = $LocalVarUri.replace('{domainID}', [System.Web.HTTPUtility]::UrlEncode($DomainID))

        if ($XCsrfToken) {
            $LocalVarHeaderParameters['X-Csrf-Token'] = $XCsrfToken
        }

        if ($Configuration["ApiKeyPrefix"] -and $Configuration["ApiKeyPrefix"]["grommunioAuthJwt"]) {
            $apiKeyPrefix = $Configuration["ApiKeyPrefix"]["grommunioAuthJwt"]
        } else {
            $apiKeyPrefix = ""
        }
        if ($Configuration["Cookie"]) {
            $LocalVarCookieParameters['JWTCookie'] = $Configuration["Cookie"]
            Write-Verbose ("Using API key `JWTCookie` in the cookie for authentication in {0}" -f $MyInvocation.MyCommand)
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

Set user's out of office state

.DESCRIPTION

No description available.

.PARAMETER DomainID
ID of the domain

.PARAMETER UserID
ID of the user

.PARAMETER XCsrfToken
CSRF Token

.PARAMETER UserOofState
No description available.

.PARAMETER WithHttpInfo

A switch when turned on will return a hash table of Response, StatusCode and Headers instead of just the Response

.OUTPUTS

None
#>
function Set-GroAdminOofSize {
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
        [PSCustomObject]
        ${UserOofState},
        [Switch]
        $WithHttpInfo
    )

    Process {
        'Calling method: Set-GroAdminOofSize' | Write-Debug
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

        $LocalVarUri = '/domains/{domainID}/users/{userID}/oof'
        if (!$DomainID) {
            throw "Error! The required parameter `DomainID` missing when calling setOofSize."
        }
        $LocalVarUri = $LocalVarUri.replace('{domainID}', [System.Web.HTTPUtility]::UrlEncode($DomainID))
        if (!$UserID) {
            throw "Error! The required parameter `UserID` missing when calling setOofSize."
        }
        $LocalVarUri = $LocalVarUri.replace('{userID}', [System.Web.HTTPUtility]::UrlEncode($UserID))

        if ($XCsrfToken) {
            $LocalVarHeaderParameters['X-Csrf-Token'] = $XCsrfToken
        }

        $LocalVarBodyParameter = $UserOofState | ConvertTo-Json -Depth 100

        if ($Configuration["ApiKeyPrefix"] -and $Configuration["ApiKeyPrefix"]["grommunioAuthJwt"]) {
            $apiKeyPrefix = $Configuration["ApiKeyPrefix"]["grommunioAuthJwt"]
        } else {
            $apiKeyPrefix = ""
        }
        if ($Configuration["Cookie"]) {
            $LocalVarCookieParameters['JWTCookie'] = $Configuration["Cookie"]
            Write-Verbose ("Using API key `JWTCookie` in the cookie for authentication in {0}" -f $MyInvocation.MyCommand)
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

Set user password

.DESCRIPTION

No description available.

.PARAMETER DomainID
ID of the domain

.PARAMETER UserID
ID of the user

.PARAMETER XCsrfToken
CSRF Token

.PARAMETER SetPasswordRequest
No description available.

.PARAMETER WithHttpInfo

A switch when turned on will return a hash table of Response, StatusCode and Headers instead of just the Response

.OUTPUTS

None
#>
function Set-GroAdminPassword {
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
        [PSCustomObject]
        ${SetPasswordRequest},
        [Switch]
        $WithHttpInfo
    )

    Process {
        'Calling method: Set-GroAdminPassword' | Write-Debug
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

        $LocalVarUri = '/domains/{domainID}/users/{userID}/password'
        if (!$DomainID) {
            throw "Error! The required parameter `DomainID` missing when calling setPassword."
        }
        $LocalVarUri = $LocalVarUri.replace('{domainID}', [System.Web.HTTPUtility]::UrlEncode($DomainID))
        if (!$UserID) {
            throw "Error! The required parameter `UserID` missing when calling setPassword."
        }
        $LocalVarUri = $LocalVarUri.replace('{userID}', [System.Web.HTTPUtility]::UrlEncode($UserID))

        if ($XCsrfToken) {
            $LocalVarHeaderParameters['X-Csrf-Token'] = $XCsrfToken
        }

        $LocalVarBodyParameter = $SetPasswordRequest | ConvertTo-Json -Depth 100

        if ($Configuration["ApiKeyPrefix"] -and $Configuration["ApiKeyPrefix"]["grommunioAuthJwt"]) {
            $apiKeyPrefix = $Configuration["ApiKeyPrefix"]["grommunioAuthJwt"]
        } else {
            $apiKeyPrefix = ""
        }
        if ($Configuration["Cookie"]) {
            $LocalVarCookieParameters['JWTCookie'] = $Configuration["Cookie"]
            Write-Verbose ("Using API key `JWTCookie` in the cookie for authentication in {0}" -f $MyInvocation.MyCommand)
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
                                -ReturnType "" `
                                -IsBodyNullable $false

        if ($WithHttpInfo.IsPresent) {
            return $LocalVarResult
        } else {
            return $LocalVarResult["Response"]
        }
    }
}

