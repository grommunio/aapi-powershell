#
# grommunio Admin API
# grommunio administration REST API
# Version: 1.9.2
#

<#
.SYNOPSIS

cancelWipe

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

deleteStoreAccessUser

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

deleteStoreProps

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

deleteUser

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

getDelegates

.DESCRIPTION

No description available.

.PARAMETER UserID
ID of the user

.PARAMETER DomainID
ID of the domain

.PARAMETER WithHttpInfo

A switch when turned on will return a hash table of Response, StatusCode and Headers instead of just the Response

.OUTPUTS

DomainsUsersDelegatesResponse
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

        $LocalVarResult = Invoke-GroAdminApiClient -Method 'GET' `
                                -Uri $LocalVarUri `
                                -Accepts $LocalVarAccepts `
                                -ContentTypes $LocalVarContentTypes `
                                -Body $LocalVarBodyParameter `
                                -HeaderParameters $LocalVarHeaderParameters `
                                -QueryParameters $LocalVarQueryParameters `
                                -FormParameters $LocalVarFormParameters `
                                -CookieParameters $LocalVarCookieParameters `
                                -ReturnType "DomainsUsersDelegatesResponse" `
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

getDomainSyncPolicy

.DESCRIPTION

No description available.

.PARAMETER DomainID
ID of the domain

.PARAMETER WithHttpInfo

A switch when turned on will return a hash table of Response, StatusCode and Headers instead of just the Response

.OUTPUTS

DomainsSyncPolicyResponse
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

        $LocalVarResult = Invoke-GroAdminApiClient -Method 'GET' `
                                -Uri $LocalVarUri `
                                -Accepts $LocalVarAccepts `
                                -ContentTypes $LocalVarContentTypes `
                                -Body $LocalVarBodyParameter `
                                -HeaderParameters $LocalVarHeaderParameters `
                                -QueryParameters $LocalVarQueryParameters `
                                -FormParameters $LocalVarFormParameters `
                                -CookieParameters $LocalVarCookieParameters `
                                -ReturnType "DomainsSyncPolicyResponse" `
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

getSendas

.DESCRIPTION

No description available.

.PARAMETER UserID
ID of the user

.PARAMETER DomainID
ID of the domain

.PARAMETER WithHttpInfo

A switch when turned on will return a hash table of Response, StatusCode and Headers instead of just the Response

.OUTPUTS

DomainsUsersSendasResponse
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

        $LocalVarResult = Invoke-GroAdminApiClient -Method 'GET' `
                                -Uri $LocalVarUri `
                                -Accepts $LocalVarAccepts `
                                -ContentTypes $LocalVarContentTypes `
                                -Body $LocalVarBodyParameter `
                                -HeaderParameters $LocalVarHeaderParameters `
                                -QueryParameters $LocalVarQueryParameters `
                                -FormParameters $LocalVarFormParameters `
                                -CookieParameters $LocalVarCookieParameters `
                                -ReturnType "DomainsUsersSendasResponse" `
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

getStoreAccessUsers

.DESCRIPTION

No description available.

.PARAMETER UserID
ID of the user

.PARAMETER DomainID
ID of the domain

.PARAMETER WithHttpInfo

A switch when turned on will return a hash table of Response, StatusCode and Headers instead of just the Response

.OUTPUTS

DomainsUsersStoreAccessResponse
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

        $LocalVarResult = Invoke-GroAdminApiClient -Method 'GET' `
                                -Uri $LocalVarUri `
                                -Accepts $LocalVarAccepts `
                                -ContentTypes $LocalVarContentTypes `
                                -Body $LocalVarBodyParameter `
                                -HeaderParameters $LocalVarHeaderParameters `
                                -QueryParameters $LocalVarQueryParameters `
                                -FormParameters $LocalVarFormParameters `
                                -CookieParameters $LocalVarCookieParameters `
                                -ReturnType "DomainsUsersStoreAccessResponse" `
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

getStoreProps

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

DomainsUsersStorePropsResponse
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

        $LocalVarResult = Invoke-GroAdminApiClient -Method 'GET' `
                                -Uri $LocalVarUri `
                                -Accepts $LocalVarAccepts `
                                -ContentTypes $LocalVarContentTypes `
                                -Body $LocalVarBodyParameter `
                                -HeaderParameters $LocalVarHeaderParameters `
                                -QueryParameters $LocalVarQueryParameters `
                                -FormParameters $LocalVarFormParameters `
                                -CookieParameters $LocalVarCookieParameters `
                                -ReturnType "DomainsUsersStorePropsResponse" `
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

getSyncedDevices

.DESCRIPTION

No description available.

.PARAMETER UserID
ID of the user

.PARAMETER DomainID
ID of the domain

.PARAMETER WithHttpInfo

A switch when turned on will return a hash table of Response, StatusCode and Headers instead of just the Response

.OUTPUTS

DomainsUsersSyncResponse
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

        $LocalVarResult = Invoke-GroAdminApiClient -Method 'GET' `
                                -Uri $LocalVarUri `
                                -Accepts $LocalVarAccepts `
                                -ContentTypes $LocalVarContentTypes `
                                -Body $LocalVarBodyParameter `
                                -HeaderParameters $LocalVarHeaderParameters `
                                -QueryParameters $LocalVarQueryParameters `
                                -FormParameters $LocalVarFormParameters `
                                -CookieParameters $LocalVarCookieParameters `
                                -ReturnType "DomainsUsersSyncResponse" `
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

getUser

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

getUsers

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

.PARAMETER Sort
Sort by attribute. Can be given multiple times.

.PARAMETER ID
Filter one or more IDs

.PARAMETER Username
Filter by username

.PARAMETER Properties
Comma separated list of properties to return

.PARAMETER WithHttpInfo

A switch when turned on will return a hash table of Response, StatusCode and Headers instead of just the Response

.OUTPUTS

DomainsUsersResponse
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
        ${Sort},
        [Parameter(Position = 7, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [System.Nullable[Int32][]]
        ${ID},
        [Parameter(Position = 8, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${Username},
        [Parameter(Position = 9, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
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

        if ($Sort) {
            $LocalVarQueryParameters['sort'] = $Sort
        }

        if ($ID) {
            $LocalVarQueryParameters['ID'] = $ID
        }

        if ($Username) {
            $LocalVarQueryParameters['username'] = $Username
        }

        if ($Properties) {
            $LocalVarQueryParameters['properties'] = $Properties
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
                                -ReturnType "DomainsUsersResponse" `
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

oofSizeLarge

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

patchStoreProps

.DESCRIPTION

No description available.

.PARAMETER UserID
ID of the user

.PARAMETER DomainID
ID of the domain

.PARAMETER XCsrfToken
CSRF Token

.PARAMETER RequestBody


.PARAMETER WithHttpInfo

A switch when turned on will return a hash table of Response, StatusCode and Headers instead of just the Response

.OUTPUTS

DomainsUsersStorePropsResponse1
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
                                -ReturnType "DomainsUsersStorePropsResponse1" `
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

patchUser

.DESCRIPTION

No description available.

.PARAMETER UserID
ID of the user

.PARAMETER DomainID
ID of the domain

.PARAMETER XCsrfToken
CSRF Token

.PARAMETER PatchUserRequest


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
        ${PatchUserRequest},
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

        $LocalVarBodyParameter = $PatchUserRequest | ConvertTo-Json -Depth 100

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

postDeviceWipe

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

postStoreAccessUser

.DESCRIPTION

No description available.

.PARAMETER UserID
ID of the user

.PARAMETER DomainID
ID of the domain

.PARAMETER XCsrfToken
CSRF Token

.PARAMETER PostStoreAccessUserRequest


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

postUser

.DESCRIPTION

No description available.

.PARAMETER DomainID
ID of the domain

.PARAMETER XCsrfToken
CSRF Token

.PARAMETER PostUserRequest


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
        ${PostUserRequest},
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

        $LocalVarBodyParameter = $PostUserRequest | ConvertTo-Json -Depth 100

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

putDelegates

.DESCRIPTION

No description available.

.PARAMETER UserID
ID of the user

.PARAMETER DomainID
ID of the domain

.PARAMETER XCsrfToken
CSRF Token

.PARAMETER RequestBody


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

        $LocalVarBodyParameter = $RequestBody | ConvertTo-Json -Depth 100

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

putDeviceResync

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

putSendas

.DESCRIPTION

No description available.

.PARAMETER UserID
ID of the user

.PARAMETER DomainID
ID of the domain

.PARAMETER XCsrfToken
CSRF Token

.PARAMETER RequestBody


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

        $LocalVarBodyParameter = $RequestBody | ConvertTo-Json -Depth 100

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

putStoreAccessUser

.DESCRIPTION

No description available.

.PARAMETER UserID
ID of the user

.PARAMETER DomainID
ID of the domain

.PARAMETER XCsrfToken
CSRF Token

.PARAMETER PutStoreAccessUserRequest


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

removeDeviceResync

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

removeDeviceStates

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

setOofSize

.DESCRIPTION

No description available.

.PARAMETER DomainID
ID of the domain

.PARAMETER UserID
ID of the user

.PARAMETER XCsrfToken
CSRF Token

.PARAMETER SetOofSizeRequest


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
        ${SetOofSizeRequest},
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

        $LocalVarBodyParameter = $SetOofSizeRequest | ConvertTo-Json -Depth 100

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

setPassword

.DESCRIPTION

No description available.

.PARAMETER DomainID
ID of the domain

.PARAMETER UserID
ID of the user

.PARAMETER XCsrfToken
CSRF Token

.PARAMETER SetPasswordRequest


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

