#
# grommunio Admin API
# grommunio administration REST API
# Version: 1.19.0
#

<#
.SYNOPSIS

Get device last connect time for user

.DESCRIPTION

No description available.

.PARAMETER Username
E-mail address of the user

.PARAMETER Devices
Restrict request to these device IDs

.PARAMETER WithHttpInfo

A switch when turned on will return a hash table of Response, StatusCode and Headers instead of just the Response

.OUTPUTS

GetUserDeviceWipeStatus200Response
#>
function Get-GroAdminUserDeviceLastConnect {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${Username},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String[]]
        ${Devices},
        [Switch]
        $WithHttpInfo
    )

    Process {
        'Calling method: Get-GroAdminUserDeviceLastConnect' | Write-Debug
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

        $LocalVarUri = '/service/lastconnect/{username}'
        if (!$Username) {
            throw "Error! The required parameter `Username` missing when calling getUserDeviceLastConnect."
        }
        $LocalVarUri = $LocalVarUri.replace('{username}', [System.Web.HTTPUtility]::UrlEncode($Username))

        if ($Devices) {
            $LocalVarQueryParameters['devices'] = $Devices
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
                                -ReturnType "GetUserDeviceWipeStatus200Response" `
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

Get device wipe status for user

.DESCRIPTION

No description available.

.PARAMETER Username
E-mail address of the user

.PARAMETER Devices
Restrict request to these device IDs

.PARAMETER WithHttpInfo

A switch when turned on will return a hash table of Response, StatusCode and Headers instead of just the Response

.OUTPUTS

GetUserDeviceWipeStatus200Response
#>
function Get-GroAdminUserDeviceWipeStatus {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${Username},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String[]]
        ${Devices},
        [Switch]
        $WithHttpInfo
    )

    Process {
        'Calling method: Get-GroAdminUserDeviceWipeStatus' | Write-Debug
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

        $LocalVarUri = '/service/wipe/{username}'
        if (!$Username) {
            throw "Error! The required parameter `Username` missing when calling getUserDeviceWipeStatus."
        }
        $LocalVarUri = $LocalVarUri.replace('{username}', [System.Web.HTTPUtility]::UrlEncode($Username))

        if ($Devices) {
            $LocalVarQueryParameters['devices'] = $Devices
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
                                -ReturnType "GetUserDeviceWipeStatus200Response" `
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

Get basic user information

.DESCRIPTION

No description available.

.PARAMETER Username
E-mail address of the user

.PARAMETER WithHttpInfo

A switch when turned on will return a hash table of Response, StatusCode and Headers instead of just the Response

.OUTPUTS

GetUserInformation200Response
#>
function Get-GroAdminUserInformation {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${Username},
        [Switch]
        $WithHttpInfo
    )

    Process {
        'Calling method: Get-GroAdminUserInformation' | Write-Debug
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

        $LocalVarUri = '/service/userinfo/{username}'
        if (!$Username) {
            throw "Error! The required parameter `Username` missing when calling getUserInformation."
        }
        $LocalVarUri = $LocalVarUri.replace('{username}', [System.Web.HTTPUtility]::UrlEncode($Username))

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
                                -ReturnType "GetUserInformation200Response" `
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

Get sync policy for specific user

.DESCRIPTION

No description available.

.PARAMETER Username
E-mail address of the user

.PARAMETER WithHttpInfo

A switch when turned on will return a hash table of Response, StatusCode and Headers instead of just the Response

.OUTPUTS

GetUserSyncPolicy200Response
#>
function Get-GroAdminUserSyncPolicy {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${Username},
        [Switch]
        $WithHttpInfo
    )

    Process {
        'Calling method: Get-GroAdminUserSyncPolicy' | Write-Debug
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

        $LocalVarUri = '/service/syncPolicy/{username}'
        if (!$Username) {
            throw "Error! The required parameter `Username` missing when calling getUserSyncPolicy."
        }
        $LocalVarUri = $LocalVarUri.replace('{username}', [System.Web.HTTPUtility]::UrlEncode($Username))

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

Change current users password

.DESCRIPTION

No description available.

.PARAMETER XCsrfToken
CSRF Token

.PARAMETER PutPasswdRequest
No description available.

.PARAMETER WithHttpInfo

A switch when turned on will return a hash table of Response, StatusCode and Headers instead of just the Response

.OUTPUTS

None
#>
function Send-GroAdminPasswd {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${XCsrfToken},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [PSCustomObject]
        ${PutPasswdRequest},
        [Switch]
        $WithHttpInfo
    )

    Process {
        'Calling method: Send-GroAdminPasswd' | Write-Debug
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

        $LocalVarUri = '/passwd'

        if ($XCsrfToken) {
            $LocalVarHeaderParameters['X-Csrf-Token'] = $XCsrfToken
        }

        $LocalVarBodyParameter = $PutPasswdRequest | ConvertTo-Json -Depth 100

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

Set device wipe status for user

.DESCRIPTION

No description available.

.PARAMETER Username
E-mail address of the user

.PARAMETER SetUserDeviceWipeStatusRequest
No description available.

.PARAMETER XCsrfToken
CSRF Token

.PARAMETER Devices
Restrict request to these device IDs

.PARAMETER WithHttpInfo

A switch when turned on will return a hash table of Response, StatusCode and Headers instead of just the Response

.OUTPUTS

None
#>
function Set-GroAdminUserDeviceWipeStatus {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${Username},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [PSCustomObject]
        ${SetUserDeviceWipeStatusRequest},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${XCsrfToken},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String[]]
        ${Devices},
        [Switch]
        $WithHttpInfo
    )

    Process {
        'Calling method: Set-GroAdminUserDeviceWipeStatus' | Write-Debug
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

        $LocalVarUri = '/service/wipe/{username}'
        if (!$Username) {
            throw "Error! The required parameter `Username` missing when calling setUserDeviceWipeStatus."
        }
        $LocalVarUri = $LocalVarUri.replace('{username}', [System.Web.HTTPUtility]::UrlEncode($Username))

        if ($XCsrfToken) {
            $LocalVarHeaderParameters['X-Csrf-Token'] = $XCsrfToken
        }

        if ($Devices) {
            $LocalVarQueryParameters['devices'] = $Devices
        }

        if (!$SetUserDeviceWipeStatusRequest) {
            throw "Error! The required parameter `SetUserDeviceWipeStatusRequest` missing when calling setUserDeviceWipeStatus."
        }

        $LocalVarBodyParameter = $SetUserDeviceWipeStatusRequest | ConvertTo-Json -Depth 100

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

