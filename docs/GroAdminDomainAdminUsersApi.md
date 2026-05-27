# GrommunioAdmin.GrommunioAdmin\Api.GroAdminDomainAdminUsersApi

All URIs are relative to */api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Stop-GroAdminWipe**](GroAdminDomainAdminUsersApi.md#Stop-GroAdminWipe) | **DELETE** /domains/{domainID}/users/{userID}/sync/{deviceID}/wipe | Cancel wipe request
[**Invoke-GroAdminDeleteStoreAccessUser**](GroAdminDomainAdminUsersApi.md#Invoke-GroAdminDeleteStoreAccessUser) | **DELETE** /domains/{domainID}/users/{userID}/storeAccess/{username} | Remove user from store access list
[**Invoke-GroAdminDeleteStoreProps**](GroAdminDomainAdminUsersApi.md#Invoke-GroAdminDeleteStoreProps) | **DELETE** /domains/{domainID}/users/{userID}/storeProps | Delete user store props
[**Invoke-GroAdminDeleteUser**](GroAdminDomainAdminUsersApi.md#Invoke-GroAdminDeleteUser) | **DELETE** /domains/{domainID}/users/{userID} | Delete user
[**Get-GroAdminDelegates**](GroAdminDomainAdminUsersApi.md#Get-GroAdminDelegates) | **GET** /domains/{domainID}/users/{userID}/delegates | Get list of users that can send mails on the users behalf
[**Get-GroAdminDomainSyncPolicy**](GroAdminDomainAdminUsersApi.md#Get-GroAdminDomainSyncPolicy) | **GET** /domains/{domainID}/syncPolicy | Get effective domain sync policy
[**Get-GroAdminSendas**](GroAdminDomainAdminUsersApi.md#Get-GroAdminSendas) | **GET** /domains/{domainID}/users/{userID}/sendas | Get list of users that can send mails as the user
[**Get-GroAdminStoreAccessUsers**](GroAdminDomainAdminUsersApi.md#Get-GroAdminStoreAccessUsers) | **GET** /domains/{domainID}/users/{userID}/storeAccess | Get list of users that can access the users store
[**Get-GroAdminStoreProps**](GroAdminDomainAdminUsersApi.md#Get-GroAdminStoreProps) | **GET** /domains/{domainID}/users/{userID}/storeProps | Get user store properties
[**Get-GroAdminSyncedDevices**](GroAdminDomainAdminUsersApi.md#Get-GroAdminSyncedDevices) | **GET** /domains/{domainID}/users/{userID}/sync | Get status of synced devices
[**Get-GroAdminUser**](GroAdminDomainAdminUsersApi.md#Get-GroAdminUser) | **GET** /domains/{domainID}/users/{userID} | Get information about a specific user
[**Get-GroAdminUsers**](GroAdminDomainAdminUsersApi.md#Get-GroAdminUsers) | **GET** /domains/{domainID}/users | Get lists of users
[**Invoke-GroAdminOofSizeLarge**](GroAdminDomainAdminUsersApi.md#Invoke-GroAdminOofSizeLarge) | **GET** /domains/{domainID}/users/{userID}/oof | Get user&#39;s out of office state
[**Invoke-GroAdminPatchStoreProps**](GroAdminDomainAdminUsersApi.md#Invoke-GroAdminPatchStoreProps) | **PATCH** /domains/{domainID}/users/{userID}/storeProps | Update store properties
[**Invoke-GroAdminPatchUser**](GroAdminDomainAdminUsersApi.md#Invoke-GroAdminPatchUser) | **PATCH** /domains/{domainID}/users/{userID} | Update user
[**Submit-GroAdminDeviceWipe**](GroAdminDomainAdminUsersApi.md#Submit-GroAdminDeviceWipe) | **POST** /domains/{domainID}/users/{userID}/sync/{deviceID}/wipe | Request a device wipe
[**Submit-GroAdminStoreAccessUser**](GroAdminDomainAdminUsersApi.md#Submit-GroAdminStoreAccessUser) | **POST** /domains/{domainID}/users/{userID}/storeAccess | Grant store access to another user
[**Submit-GroAdminUser**](GroAdminDomainAdminUsersApi.md#Submit-GroAdminUser) | **POST** /domains/{domainID}/users | Create new user
[**Send-GroAdminDelegates**](GroAdminDomainAdminUsersApi.md#Send-GroAdminDelegates) | **PUT** /domains/{domainID}/users/{userID}/delegates | Set list of users that can send mails on the users behalf
[**Send-GroAdminDeviceResync**](GroAdminDomainAdminUsersApi.md#Send-GroAdminDeviceResync) | **PUT** /domains/{domainID}/users/{userID}/sync/{deviceID}/resync | Request a device resync
[**Send-GroAdminDownsync**](GroAdminDomainAdminUsersApi.md#Send-GroAdminDownsync) | **PUT** /domains/{domainID}/users/{userID}/downsync | Update user from LDAP
[**Send-GroAdminSendas**](GroAdminDomainAdminUsersApi.md#Send-GroAdminSendas) | **PUT** /domains/{domainID}/users/{userID}/sendas | Set list of users that can send mails as the user
[**Send-GroAdminStoreAccessUser**](GroAdminDomainAdminUsersApi.md#Send-GroAdminStoreAccessUser) | **PUT** /domains/{domainID}/users/{userID}/storeAccess | Overwrite the list of users with store access
[**Remove-GroAdminDeviceResync**](GroAdminDomainAdminUsersApi.md#Remove-GroAdminDeviceResync) | **DELETE** /domains/{domainID}/users/{userID}/sync/{deviceID} | Remove device (issue a resync)
[**Remove-GroAdminDeviceStates**](GroAdminDomainAdminUsersApi.md#Remove-GroAdminDeviceStates) | **DELETE** /domains/{domainID}/users/{userID}/sync | Remove device states
[**Set-GroAdminOofSize**](GroAdminDomainAdminUsersApi.md#Set-GroAdminOofSize) | **PUT** /domains/{domainID}/users/{userID}/oof | Set user&#39;s out of office state
[**Set-GroAdminPassword**](GroAdminDomainAdminUsersApi.md#Set-GroAdminPassword) | **PUT** /domains/{domainID}/users/{userID}/password | Set user password


<a id="Stop-GroAdminWipe"></a>
# **Stop-GroAdminWipe**
> void Stop-GroAdminWipe<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-UserID] <Int32><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-DomainID] <Int32><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-DeviceID] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-XCsrfToken] <String><br>

Cancel wipe request

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: JWTCookie
$Configuration.ApiKey.grommunioAuthJwt = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.grommunioAuthJwt = "Bearer"

$UserID = 56 # Int32 | ID of the user
$DomainID = 56 # Int32 | ID of the domain
$DeviceID = "MyDeviceID" # String | Device ID
$XCsrfToken = "MyXCsrfToken" # String | CSRF Token (optional)

# Cancel wipe request
try {
    $Result = Stop-GroAdminWipe -UserID $UserID -DomainID $DomainID -DeviceID $DeviceID -XCsrfToken $XCsrfToken
} catch {
    Write-Host ("Exception occurred when calling Stop-GroAdminWipe: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **UserID** | **Int32**| ID of the user | 
 **DomainID** | **Int32**| ID of the domain | 
 **DeviceID** | **String**| Device ID | 
 **XCsrfToken** | **String**| CSRF Token | [optional] 

### Return type

void (empty response body)

### Authorization

[JWTCookie](../README.md#JWTCookie)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-GroAdminDeleteStoreAccessUser"></a>
# **Invoke-GroAdminDeleteStoreAccessUser**
> void Invoke-GroAdminDeleteStoreAccessUser<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-UserID] <Int32><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-DomainID] <Int32><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Username] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-XCsrfToken] <String><br>

Remove user from store access list

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: JWTCookie
$Configuration.ApiKey.grommunioAuthJwt = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.grommunioAuthJwt = "Bearer"

$UserID = 56 # Int32 | ID of the user
$DomainID = 56 # Int32 | ID of the domain
$Username = "MyUsername" # String | E-mail address of the user
$XCsrfToken = "MyXCsrfToken" # String | CSRF Token (optional)

# Remove user from store access list
try {
    $Result = Invoke-GroAdminDeleteStoreAccessUser -UserID $UserID -DomainID $DomainID -Username $Username -XCsrfToken $XCsrfToken
} catch {
    Write-Host ("Exception occurred when calling Invoke-GroAdminDeleteStoreAccessUser: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **UserID** | **Int32**| ID of the user | 
 **DomainID** | **Int32**| ID of the domain | 
 **Username** | **String**| E-mail address of the user | 
 **XCsrfToken** | **String**| CSRF Token | [optional] 

### Return type

void (empty response body)

### Authorization

[JWTCookie](../README.md#JWTCookie)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-GroAdminDeleteStoreProps"></a>
# **Invoke-GroAdminDeleteStoreProps**
> void Invoke-GroAdminDeleteStoreProps<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-UserID] <Int32><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-DomainID] <Int32><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-XCsrfToken] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Properties] <String><br>

Delete user store props

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: JWTCookie
$Configuration.ApiKey.grommunioAuthJwt = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.grommunioAuthJwt = "Bearer"

$UserID = 56 # Int32 | ID of the user
$DomainID = 56 # Int32 | ID of the domain
$XCsrfToken = "MyXCsrfToken" # String | CSRF Token (optional)
$Properties = "MyProperties" # String | Comma separated list of properties to return (optional)

# Delete user store props
try {
    $Result = Invoke-GroAdminDeleteStoreProps -UserID $UserID -DomainID $DomainID -XCsrfToken $XCsrfToken -Properties $Properties
} catch {
    Write-Host ("Exception occurred when calling Invoke-GroAdminDeleteStoreProps: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **UserID** | **Int32**| ID of the user | 
 **DomainID** | **Int32**| ID of the domain | 
 **XCsrfToken** | **String**| CSRF Token | [optional] 
 **Properties** | **String**| Comma separated list of properties to return | [optional] 

### Return type

void (empty response body)

### Authorization

[JWTCookie](../README.md#JWTCookie)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-GroAdminDeleteUser"></a>
# **Invoke-GroAdminDeleteUser**
> void Invoke-GroAdminDeleteUser<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-UserID] <Int32><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-DomainID] <Int32><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-XCsrfToken] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-DeleteFiles] <System.Nullable[Boolean]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-DeleteChatUser] <System.Nullable[Boolean]><br>

Delete user

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: JWTCookie
$Configuration.ApiKey.grommunioAuthJwt = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.grommunioAuthJwt = "Bearer"

$UserID = 56 # Int32 | ID of the user
$DomainID = 56 # Int32 | ID of the domain
$XCsrfToken = "MyXCsrfToken" # String | CSRF Token (optional)
$DeleteFiles = $true # Boolean | Delete user files on disk (optional) (default to $false)
$DeleteChatUser = $true # Boolean | Permanently delete chat user (optional) (default to $true)

# Delete user
try {
    $Result = Invoke-GroAdminDeleteUser -UserID $UserID -DomainID $DomainID -XCsrfToken $XCsrfToken -DeleteFiles $DeleteFiles -DeleteChatUser $DeleteChatUser
} catch {
    Write-Host ("Exception occurred when calling Invoke-GroAdminDeleteUser: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **UserID** | **Int32**| ID of the user | 
 **DomainID** | **Int32**| ID of the domain | 
 **XCsrfToken** | **String**| CSRF Token | [optional] 
 **DeleteFiles** | **Boolean**| Delete user files on disk | [optional] [default to $false]
 **DeleteChatUser** | **Boolean**| Permanently delete chat user | [optional] [default to $true]

### Return type

void (empty response body)

### Authorization

[JWTCookie](../README.md#JWTCookie)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-GroAdminDelegates"></a>
# **Get-GroAdminDelegates**
> GetServicesListDBConf200Response Get-GroAdminDelegates<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-UserID] <Int32><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-DomainID] <Int32><br>

Get list of users that can send mails on the users behalf

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: JWTCookie
$Configuration.ApiKey.grommunioAuthJwt = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.grommunioAuthJwt = "Bearer"

$UserID = 56 # Int32 | ID of the user
$DomainID = 56 # Int32 | ID of the domain

# Get list of users that can send mails on the users behalf
try {
    $Result = Get-GroAdminDelegates -UserID $UserID -DomainID $DomainID
} catch {
    Write-Host ("Exception occurred when calling Get-GroAdminDelegates: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **UserID** | **Int32**| ID of the user | 
 **DomainID** | **Int32**| ID of the domain | 

### Return type

[**GetServicesListDBConf200Response**](GetServicesListDBConf200Response.md) (PSCustomObject)

### Authorization

[JWTCookie](../README.md#JWTCookie)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-GroAdminDomainSyncPolicy"></a>
# **Get-GroAdminDomainSyncPolicy**
> GetUserSyncPolicy200Response Get-GroAdminDomainSyncPolicy<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-DomainID] <Int32><br>

Get effective domain sync policy

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: JWTCookie
$Configuration.ApiKey.grommunioAuthJwt = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.grommunioAuthJwt = "Bearer"

$DomainID = 56 # Int32 | ID of the domain

# Get effective domain sync policy
try {
    $Result = Get-GroAdminDomainSyncPolicy -DomainID $DomainID
} catch {
    Write-Host ("Exception occurred when calling Get-GroAdminDomainSyncPolicy: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **DomainID** | **Int32**| ID of the domain | 

### Return type

[**GetUserSyncPolicy200Response**](GetUserSyncPolicy200Response.md) (PSCustomObject)

### Authorization

[JWTCookie](../README.md#JWTCookie)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-GroAdminSendas"></a>
# **Get-GroAdminSendas**
> GetServicesListDBConf200Response Get-GroAdminSendas<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-UserID] <Int32><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-DomainID] <Int32><br>

Get list of users that can send mails as the user

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: JWTCookie
$Configuration.ApiKey.grommunioAuthJwt = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.grommunioAuthJwt = "Bearer"

$UserID = 56 # Int32 | ID of the user
$DomainID = 56 # Int32 | ID of the domain

# Get list of users that can send mails as the user
try {
    $Result = Get-GroAdminSendas -UserID $UserID -DomainID $DomainID
} catch {
    Write-Host ("Exception occurred when calling Get-GroAdminSendas: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **UserID** | **Int32**| ID of the user | 
 **DomainID** | **Int32**| ID of the domain | 

### Return type

[**GetServicesListDBConf200Response**](GetServicesListDBConf200Response.md) (PSCustomObject)

### Authorization

[JWTCookie](../README.md#JWTCookie)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-GroAdminStoreAccessUsers"></a>
# **Get-GroAdminStoreAccessUsers**
> GetStoreAccessUsers200Response Get-GroAdminStoreAccessUsers<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-UserID] <Int32><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-DomainID] <Int32><br>

Get list of users that can access the users store

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: JWTCookie
$Configuration.ApiKey.grommunioAuthJwt = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.grommunioAuthJwt = "Bearer"

$UserID = 56 # Int32 | ID of the user
$DomainID = 56 # Int32 | ID of the domain

# Get list of users that can access the users store
try {
    $Result = Get-GroAdminStoreAccessUsers -UserID $UserID -DomainID $DomainID
} catch {
    Write-Host ("Exception occurred when calling Get-GroAdminStoreAccessUsers: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **UserID** | **Int32**| ID of the user | 
 **DomainID** | **Int32**| ID of the domain | 

### Return type

[**GetStoreAccessUsers200Response**](GetStoreAccessUsers200Response.md) (PSCustomObject)

### Authorization

[JWTCookie](../README.md#JWTCookie)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-GroAdminStoreProps"></a>
# **Get-GroAdminStoreProps**
> GetStoreProps200Response Get-GroAdminStoreProps<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-UserID] <Int32><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-DomainID] <Int32><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Properties] <String><br>

Get user store properties

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: JWTCookie
$Configuration.ApiKey.grommunioAuthJwt = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.grommunioAuthJwt = "Bearer"

$UserID = 56 # Int32 | ID of the user
$DomainID = 56 # Int32 | ID of the domain
$Properties = "MyProperties" # String | Comma separated list of properties to return (optional)

# Get user store properties
try {
    $Result = Get-GroAdminStoreProps -UserID $UserID -DomainID $DomainID -Properties $Properties
} catch {
    Write-Host ("Exception occurred when calling Get-GroAdminStoreProps: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **UserID** | **Int32**| ID of the user | 
 **DomainID** | **Int32**| ID of the domain | 
 **Properties** | **String**| Comma separated list of properties to return | [optional] 

### Return type

[**GetStoreProps200Response**](GetStoreProps200Response.md) (PSCustomObject)

### Authorization

[JWTCookie](../README.md#JWTCookie)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-GroAdminSyncedDevices"></a>
# **Get-GroAdminSyncedDevices**
> GetSyncedDevices200Response Get-GroAdminSyncedDevices<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-UserID] <Int32><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-DomainID] <Int32><br>

Get status of synced devices

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: JWTCookie
$Configuration.ApiKey.grommunioAuthJwt = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.grommunioAuthJwt = "Bearer"

$UserID = 56 # Int32 | ID of the user
$DomainID = 56 # Int32 | ID of the domain

# Get status of synced devices
try {
    $Result = Get-GroAdminSyncedDevices -UserID $UserID -DomainID $DomainID
} catch {
    Write-Host ("Exception occurred when calling Get-GroAdminSyncedDevices: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **UserID** | **Int32**| ID of the user | 
 **DomainID** | **Int32**| ID of the domain | 

### Return type

[**GetSyncedDevices200Response**](GetSyncedDevices200Response.md) (PSCustomObject)

### Authorization

[JWTCookie](../README.md#JWTCookie)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-GroAdminUser"></a>
# **Get-GroAdminUser**
> User Get-GroAdminUser<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-UserID] <Int32><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-DomainID] <Int32><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Level] <System.Nullable[Int32]><br>

Get information about a specific user

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: JWTCookie
$Configuration.ApiKey.grommunioAuthJwt = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.grommunioAuthJwt = "Bearer"

$UserID = 56 # Int32 | ID of the user
$DomainID = 56 # Int32 | ID of the domain
$Level = 56 # Int32 | Set detail level of return value. Usually ranges from 0 to 2. (optional)

# Get information about a specific user
try {
    $Result = Get-GroAdminUser -UserID $UserID -DomainID $DomainID -Level $Level
} catch {
    Write-Host ("Exception occurred when calling Get-GroAdminUser: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **UserID** | **Int32**| ID of the user | 
 **DomainID** | **Int32**| ID of the domain | 
 **Level** | **Int32**| Set detail level of return value. Usually ranges from 0 to 2. | [optional] 

### Return type

[**User**](User.md) (PSCustomObject)

### Authorization

[JWTCookie](../README.md#JWTCookie)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-GroAdminUsers"></a>
# **Get-GroAdminUsers**
> GetAllUsers200Response Get-GroAdminUsers<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-DomainID] <Int32><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Level] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Limit] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Offset] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Match] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-MatchFields] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-MatchProps] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-FilterProp] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Sort] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ID] <System.Nullable[Int32][]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Username] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Mlist] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Properties] <String><br>

Get lists of users

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: JWTCookie
$Configuration.ApiKey.grommunioAuthJwt = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.grommunioAuthJwt = "Bearer"

$DomainID = 56 # Int32 | ID of the domain
$Level = 56 # Int32 | Set detail level of return value. Usually ranges from 0 to 2. (optional)
$Limit = 56 # Int32 | Maximum number of results to return (optional) (default to 50)
$Offset = 56 # Int32 | Index of the first element to return (optional) (default to 0)
$Match = "MyMatch" # String | Match by substring (optional)
$MatchFields = "MyMatchFields" # String | Comma separated list of attributes to restrict matching to. (optional)
$MatchProps = "MyMatchProps" # String | Comma separated list of user properties to match (optional)
$FilterProp = "MyFilterProp" # String | Filter by user property (optional)
$Sort = "MySort" # String | Sort by attribute. Can be given multiple times. (optional)
$ID = 0 # Int32[] | Filter one or more IDs (optional)
$Username = "MyUsername" # String | Filter by username (optional)
$Mlist = "" # String | Hide MList users (optional)
$Properties = "MyProperties" # String | Comma separated list of properties to return (optional)

# Get lists of users
try {
    $Result = Get-GroAdminUsers -DomainID $DomainID -Level $Level -Limit $Limit -Offset $Offset -Match $Match -MatchFields $MatchFields -MatchProps $MatchProps -FilterProp $FilterProp -Sort $Sort -ID $ID -Username $Username -Mlist $Mlist -Properties $Properties
} catch {
    Write-Host ("Exception occurred when calling Get-GroAdminUsers: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **DomainID** | **Int32**| ID of the domain | 
 **Level** | **Int32**| Set detail level of return value. Usually ranges from 0 to 2. | [optional] 
 **Limit** | **Int32**| Maximum number of results to return | [optional] [default to 50]
 **Offset** | **Int32**| Index of the first element to return | [optional] [default to 0]
 **Match** | **String**| Match by substring | [optional] 
 **MatchFields** | **String**| Comma separated list of attributes to restrict matching to. | [optional] 
 **MatchProps** | **String**| Comma separated list of user properties to match | [optional] 
 **FilterProp** | **String**| Filter by user property | [optional] 
 **Sort** | **String**| Sort by attribute. Can be given multiple times. | [optional] 
 **ID** | [**Int32[]**](Int32.md)| Filter one or more IDs | [optional] 
 **Username** | **String**| Filter by username | [optional] 
 **Mlist** | **String**| Hide MList users | [optional] 
 **Properties** | **String**| Comma separated list of properties to return | [optional] 

### Return type

[**GetAllUsers200Response**](GetAllUsers200Response.md) (PSCustomObject)

### Authorization

[JWTCookie](../README.md#JWTCookie)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-GroAdminOofSizeLarge"></a>
# **Invoke-GroAdminOofSizeLarge**
> UserOofState Invoke-GroAdminOofSizeLarge<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-DomainID] <Int32><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-UserID] <Int32><br>

Get user's out of office state

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: JWTCookie
$Configuration.ApiKey.grommunioAuthJwt = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.grommunioAuthJwt = "Bearer"

$DomainID = 56 # Int32 | ID of the domain
$UserID = 56 # Int32 | ID of the user

# Get user's out of office state
try {
    $Result = Invoke-GroAdminOofSizeLarge -DomainID $DomainID -UserID $UserID
} catch {
    Write-Host ("Exception occurred when calling Invoke-GroAdminOofSizeLarge: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **DomainID** | **Int32**| ID of the domain | 
 **UserID** | **Int32**| ID of the user | 

### Return type

[**UserOofState**](UserOofState.md) (PSCustomObject)

### Authorization

[JWTCookie](../README.md#JWTCookie)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-GroAdminPatchStoreProps"></a>
# **Invoke-GroAdminPatchStoreProps**
> PatchStoreProps200Response Invoke-GroAdminPatchStoreProps<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-UserID] <Int32><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-DomainID] <Int32><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-XCsrfToken] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-RequestBody] <System.Collections.Hashtable><br>

Update store properties

### Example
```powershell
$UserID = 56 # Int32 | ID of the user
$DomainID = 56 # Int32 | ID of the domain
$XCsrfToken = "MyXCsrfToken" # String | CSRF Token (optional)
$RequestBody = $PatchStorePropsRequestValue = Initialize-PatchStorePropsRequestValue 
$RequestBody = @{ key_example = $PatchStorePropsRequestValue } # System.Collections.Hashtable |  (optional)

# Update store properties
try {
    $Result = Invoke-GroAdminPatchStoreProps -UserID $UserID -DomainID $DomainID -XCsrfToken $XCsrfToken -RequestBody $RequestBody
} catch {
    Write-Host ("Exception occurred when calling Invoke-GroAdminPatchStoreProps: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **UserID** | **Int32**| ID of the user | 
 **DomainID** | **Int32**| ID of the domain | 
 **XCsrfToken** | **String**| CSRF Token | [optional] 
 **RequestBody** | [**System.Collections.Hashtable**](PatchStorePropsRequestValue.md)|  | [optional] 

### Return type

[**PatchStoreProps200Response**](PatchStoreProps200Response.md) (PSCustomObject)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-GroAdminPatchUser"></a>
# **Invoke-GroAdminPatchUser**
> User Invoke-GroAdminPatchUser<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-UserID] <Int32><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-DomainID] <Int32><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-XCsrfToken] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-UserUpdate] <PSCustomObject><br>

Update user

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: JWTCookie
$Configuration.ApiKey.grommunioAuthJwt = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.grommunioAuthJwt = "Bearer"

$UserID = 56 # Int32 | ID of the user
$DomainID = 56 # Int32 | ID of the domain
$XCsrfToken = "MyXCsrfToken" # String | CSRF Token (optional)
$AltnamesInner = Initialize-AltnamesInner -Altname "MyAltname" -Magic 0
$FetchmailEntry = Initialize-FetchmailEntry -ID 0 -Mailbox "MyMailbox" -Active $false -SrcServer "MySrcServer" -SrcUser "MySrcUser" -SrcPassword "MySrcPassword" -Date "MyDate" -SrcAuth "password" -SrcFolder "MySrcFolder" -Fetchall $false -Keep $false -Protocol "POP3" -UseSSL $false -SslCertCheck $false -SslCertPath "MySslCertPath" -SslFingerprint "MySslFingerprint" -ExtraOptions "MyExtraOptions"

$SyncPolicyMaxattsize = Initialize-SyncPolicyMaxattsize 
$SyncPolicy = Initialize-SyncPolicy -Allowbluetooth "0" -Allowbrowser "0" -Allowcam "0" -Allowconsumeremail "0" -Allowdesktopsync "0" -Allowhtmlemail "0" -Allowinternetsharing "0" -Allowirda "0" -Allowpopimapemail "0" -Allowremotedesk "0" -Allowsimpledevpw "0" -Allowsmimeencalgneg "0" -Allowsmimesoftcerts "0" -Allowstoragecard "0" -Allowtextmessaging "0" -Allowunsignedapps "0" -Allowunsigninstallpacks "0" -Allowwifi "0" -Alphanumpwreq "0" -Approvedapplist "MyApprovedapplist" -Attenabled "0" -Devencenabled "0" -Devpwenabled "0" -Devpwexpiration 0 -Devpwhistory 0 -Maxattsize $SyncPolicyMaxattsize -Maxcalagefilter "0" -Maxdevpwfailedattempts 0 -Maxemailagefilter "0" -Maxemailbodytruncsize 0 -Maxemailhtmlbodytruncsize 0 -Maxinacttimedevlock 0 -Mindevcomplexchars 0 -Mindevpwlenngth 0 -Pwrecoveryenabled "0" -Reqdevenc "0" -Reqencsmimealgorithm "0" -Reqencsmimemessages "0" -Reqmansyncroam "0" -Reqsignedsmimealgorithm "0" -Reqsignedsmimemessages "0" -Reqstoragecardenc 0 -Unapprovedinromapplist "MyUnapprovedinromapplist"

$Forward = Initialize-Forward -ForwardType "0" -Destination "MyDestination"
$UserUpdate = Initialize-UserUpdate -Username "MyUsername" -Properties @{ key_example =  } -Altnames $AltnamesInner -Aliases "MyAliases" -Status "0" -Pop3Imap $false -Smtp $false -ChangePassword $false -PublicAddress $false -PrivChat $false -PrivVideo $false -PrivFiles $false -PrivArchive $false -PrivWeb $false -PrivEas $false -PrivDav $false -LdapID "null" -Fetchmail $FetchmailEntry -SyncPolicy $SyncPolicy -Chat $false -ChatAdmin $false -Lang "MyLang" -Forward $Forward -Homeserver 0 # UserUpdate |  (optional)

# Update user
try {
    $Result = Invoke-GroAdminPatchUser -UserID $UserID -DomainID $DomainID -XCsrfToken $XCsrfToken -UserUpdate $UserUpdate
} catch {
    Write-Host ("Exception occurred when calling Invoke-GroAdminPatchUser: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **UserID** | **Int32**| ID of the user | 
 **DomainID** | **Int32**| ID of the domain | 
 **XCsrfToken** | **String**| CSRF Token | [optional] 
 **UserUpdate** | [**UserUpdate**](UserUpdate.md)|  | [optional] 

### Return type

[**User**](User.md) (PSCustomObject)

### Authorization

[JWTCookie](../README.md#JWTCookie)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Submit-GroAdminDeviceWipe"></a>
# **Submit-GroAdminDeviceWipe**
> void Submit-GroAdminDeviceWipe<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-UserID] <Int32><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-DomainID] <Int32><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-DeviceID] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-XCsrfToken] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PostDeviceWipeRequest] <PSCustomObject><br>

Request a device wipe

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: JWTCookie
$Configuration.ApiKey.grommunioAuthJwt = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.grommunioAuthJwt = "Bearer"

$UserID = 56 # Int32 | ID of the user
$DomainID = 56 # Int32 | ID of the domain
$DeviceID = "MyDeviceID" # String | Device ID
$XCsrfToken = "MyXCsrfToken" # String | CSRF Token (optional)
$PostDeviceWipeRequest = Initialize-PostDeviceWipeRequest -Password "MyPassword" -Status "2" # PostDeviceWipeRequest |  (optional)

# Request a device wipe
try {
    $Result = Submit-GroAdminDeviceWipe -UserID $UserID -DomainID $DomainID -DeviceID $DeviceID -XCsrfToken $XCsrfToken -PostDeviceWipeRequest $PostDeviceWipeRequest
} catch {
    Write-Host ("Exception occurred when calling Submit-GroAdminDeviceWipe: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **UserID** | **Int32**| ID of the user | 
 **DomainID** | **Int32**| ID of the domain | 
 **DeviceID** | **String**| Device ID | 
 **XCsrfToken** | **String**| CSRF Token | [optional] 
 **PostDeviceWipeRequest** | [**PostDeviceWipeRequest**](PostDeviceWipeRequest.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

[JWTCookie](../README.md#JWTCookie)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Submit-GroAdminStoreAccessUser"></a>
# **Submit-GroAdminStoreAccessUser**
> void Submit-GroAdminStoreAccessUser<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-UserID] <Int32><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-DomainID] <Int32><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-XCsrfToken] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PostStoreAccessUserRequest] <PSCustomObject><br>

Grant store access to another user

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: JWTCookie
$Configuration.ApiKey.grommunioAuthJwt = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.grommunioAuthJwt = "Bearer"

$UserID = 56 # Int32 | ID of the user
$DomainID = 56 # Int32 | ID of the domain
$XCsrfToken = "MyXCsrfToken" # String | CSRF Token (optional)
$PostStoreAccessUserRequest = Initialize-PostStoreAccessUserRequest -Username "MyUsername" # PostStoreAccessUserRequest |  (optional)

# Grant store access to another user
try {
    $Result = Submit-GroAdminStoreAccessUser -UserID $UserID -DomainID $DomainID -XCsrfToken $XCsrfToken -PostStoreAccessUserRequest $PostStoreAccessUserRequest
} catch {
    Write-Host ("Exception occurred when calling Submit-GroAdminStoreAccessUser: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **UserID** | **Int32**| ID of the user | 
 **DomainID** | **Int32**| ID of the domain | 
 **XCsrfToken** | **String**| CSRF Token | [optional] 
 **PostStoreAccessUserRequest** | [**PostStoreAccessUserRequest**](PostStoreAccessUserRequest.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

[JWTCookie](../README.md#JWTCookie)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Submit-GroAdminUser"></a>
# **Submit-GroAdminUser**
> User Submit-GroAdminUser<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-DomainID] <Int32><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-XCsrfToken] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-UserInit] <PSCustomObject><br>

Create new user

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: JWTCookie
$Configuration.ApiKey.grommunioAuthJwt = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.grommunioAuthJwt = "Bearer"

$DomainID = 56 # Int32 | ID of the domain
$XCsrfToken = "MyXCsrfToken" # String | CSRF Token (optional)
$AltnamesInner = Initialize-AltnamesInner -Altname "MyAltname" -Magic 0
$FetchmailEntry = Initialize-FetchmailEntry -ID 0 -Mailbox "MyMailbox" -Active $false -SrcServer "MySrcServer" -SrcUser "MySrcUser" -SrcPassword "MySrcPassword" -Date "MyDate" -SrcAuth "password" -SrcFolder "MySrcFolder" -Fetchall $false -Keep $false -Protocol "POP3" -UseSSL $false -SslCertCheck $false -SslCertPath "MySslCertPath" -SslFingerprint "MySslFingerprint" -ExtraOptions "MyExtraOptions"

$SyncPolicyMaxattsize = Initialize-SyncPolicyMaxattsize 
$SyncPolicy = Initialize-SyncPolicy -Allowbluetooth "0" -Allowbrowser "0" -Allowcam "0" -Allowconsumeremail "0" -Allowdesktopsync "0" -Allowhtmlemail "0" -Allowinternetsharing "0" -Allowirda "0" -Allowpopimapemail "0" -Allowremotedesk "0" -Allowsimpledevpw "0" -Allowsmimeencalgneg "0" -Allowsmimesoftcerts "0" -Allowstoragecard "0" -Allowtextmessaging "0" -Allowunsignedapps "0" -Allowunsigninstallpacks "0" -Allowwifi "0" -Alphanumpwreq "0" -Approvedapplist "MyApprovedapplist" -Attenabled "0" -Devencenabled "0" -Devpwenabled "0" -Devpwexpiration 0 -Devpwhistory 0 -Maxattsize $SyncPolicyMaxattsize -Maxcalagefilter "0" -Maxdevpwfailedattempts 0 -Maxemailagefilter "0" -Maxemailbodytruncsize 0 -Maxemailhtmlbodytruncsize 0 -Maxinacttimedevlock 0 -Mindevcomplexchars 0 -Mindevpwlenngth 0 -Pwrecoveryenabled "0" -Reqdevenc "0" -Reqencsmimealgorithm "0" -Reqencsmimemessages "0" -Reqmansyncroam "0" -Reqsignedsmimealgorithm "0" -Reqsignedsmimemessages "0" -Reqstoragecardenc 0 -Unapprovedinromapplist "MyUnapprovedinromapplist"

$Forward = Initialize-Forward -ForwardType "0" -Destination "MyDestination"
$UserInit = Initialize-UserInit -Username "MyUsername" -Password "MyPassword" -DomainID 0 -Properties @{ key_example =  } -Altnames $AltnamesInner -Aliases "MyAliases" -Status "0" -Pop3Imap $false -Smtp $false -ChangePassword $false -PublicAddress $false -PrivChat $false -PrivVideo $false -PrivFiles $false -PrivArchive $false -PrivWeb $false -PrivEas $false -PrivDav $false -Fetchmail $FetchmailEntry -SyncPolicy $SyncPolicy -Chat $false -ChatAdmin $false -Lang "MyLang" -Forward $Forward -Homeserver 0 # UserInit |  (optional)

# Create new user
try {
    $Result = Submit-GroAdminUser -DomainID $DomainID -XCsrfToken $XCsrfToken -UserInit $UserInit
} catch {
    Write-Host ("Exception occurred when calling Submit-GroAdminUser: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **DomainID** | **Int32**| ID of the domain | 
 **XCsrfToken** | **String**| CSRF Token | [optional] 
 **UserInit** | [**UserInit**](UserInit.md)|  | [optional] 

### Return type

[**User**](User.md) (PSCustomObject)

### Authorization

[JWTCookie](../README.md#JWTCookie)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Send-GroAdminDelegates"></a>
# **Send-GroAdminDelegates**
> void Send-GroAdminDelegates<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-UserID] <Int32><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-DomainID] <Int32><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-XCsrfToken] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-RequestBody] <String[]><br>

Set list of users that can send mails on the users behalf

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: JWTCookie
$Configuration.ApiKey.grommunioAuthJwt = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.grommunioAuthJwt = "Bearer"

$UserID = 56 # Int32 | ID of the user
$DomainID = 56 # Int32 | ID of the domain
$XCsrfToken = "MyXCsrfToken" # String | CSRF Token (optional)
$RequestBody = "MyRequestBody" # String[] |  (optional)

# Set list of users that can send mails on the users behalf
try {
    $Result = Send-GroAdminDelegates -UserID $UserID -DomainID $DomainID -XCsrfToken $XCsrfToken -RequestBody $RequestBody
} catch {
    Write-Host ("Exception occurred when calling Send-GroAdminDelegates: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **UserID** | **Int32**| ID of the user | 
 **DomainID** | **Int32**| ID of the domain | 
 **XCsrfToken** | **String**| CSRF Token | [optional] 
 **RequestBody** | [**String[]**](String.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

[JWTCookie](../README.md#JWTCookie)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Send-GroAdminDeviceResync"></a>
# **Send-GroAdminDeviceResync**
> void Send-GroAdminDeviceResync<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-UserID] <Int32><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-DomainID] <Int32><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-DeviceID] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-XCsrfToken] <String><br>

Request a device resync

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: JWTCookie
$Configuration.ApiKey.grommunioAuthJwt = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.grommunioAuthJwt = "Bearer"

$UserID = 56 # Int32 | ID of the user
$DomainID = 56 # Int32 | ID of the domain
$DeviceID = "MyDeviceID" # String | Device ID
$XCsrfToken = "MyXCsrfToken" # String | CSRF Token (optional)

# Request a device resync
try {
    $Result = Send-GroAdminDeviceResync -UserID $UserID -DomainID $DomainID -DeviceID $DeviceID -XCsrfToken $XCsrfToken
} catch {
    Write-Host ("Exception occurred when calling Send-GroAdminDeviceResync: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **UserID** | **Int32**| ID of the user | 
 **DomainID** | **Int32**| ID of the domain | 
 **DeviceID** | **String**| Device ID | 
 **XCsrfToken** | **String**| CSRF Token | [optional] 

### Return type

void (empty response body)

### Authorization

[JWTCookie](../README.md#JWTCookie)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Send-GroAdminDownsync"></a>
# **Send-GroAdminDownsync**
> User Send-GroAdminDownsync<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-DomainID] <Int32><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-UserID] <Int32><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-XCsrfToken] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ID] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Lang] <String><br>

Update user from LDAP

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: JWTCookie
$Configuration.ApiKey.grommunioAuthJwt = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.grommunioAuthJwt = "Bearer"

$DomainID = 56 # Int32 | ID of the domain
$UserID = 56 # Int32 | ID of the user
$XCsrfToken = "MyXCsrfToken" # String | CSRF Token (optional)
$ID = "MyID" # String | Optional LDAP object ID (optional)
$Lang = "MyLang" # String | Default language for imported users (optional) (default to "")

# Update user from LDAP
try {
    $Result = Send-GroAdminDownsync -DomainID $DomainID -UserID $UserID -XCsrfToken $XCsrfToken -ID $ID -Lang $Lang
} catch {
    Write-Host ("Exception occurred when calling Send-GroAdminDownsync: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **DomainID** | **Int32**| ID of the domain | 
 **UserID** | **Int32**| ID of the user | 
 **XCsrfToken** | **String**| CSRF Token | [optional] 
 **ID** | **String**| Optional LDAP object ID | [optional] 
 **Lang** | **String**| Default language for imported users | [optional] [default to &quot;&quot;]

### Return type

[**User**](User.md) (PSCustomObject)

### Authorization

[JWTCookie](../README.md#JWTCookie)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Send-GroAdminSendas"></a>
# **Send-GroAdminSendas**
> void Send-GroAdminSendas<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-UserID] <Int32><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-DomainID] <Int32><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-XCsrfToken] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-RequestBody] <String[]><br>

Set list of users that can send mails as the user

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: JWTCookie
$Configuration.ApiKey.grommunioAuthJwt = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.grommunioAuthJwt = "Bearer"

$UserID = 56 # Int32 | ID of the user
$DomainID = 56 # Int32 | ID of the domain
$XCsrfToken = "MyXCsrfToken" # String | CSRF Token (optional)
$RequestBody = "MyRequestBody" # String[] |  (optional)

# Set list of users that can send mails as the user
try {
    $Result = Send-GroAdminSendas -UserID $UserID -DomainID $DomainID -XCsrfToken $XCsrfToken -RequestBody $RequestBody
} catch {
    Write-Host ("Exception occurred when calling Send-GroAdminSendas: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **UserID** | **Int32**| ID of the user | 
 **DomainID** | **Int32**| ID of the domain | 
 **XCsrfToken** | **String**| CSRF Token | [optional] 
 **RequestBody** | [**String[]**](String.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

[JWTCookie](../README.md#JWTCookie)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Send-GroAdminStoreAccessUser"></a>
# **Send-GroAdminStoreAccessUser**
> void Send-GroAdminStoreAccessUser<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-UserID] <Int32><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-DomainID] <Int32><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-XCsrfToken] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PutStoreAccessUserRequest] <PSCustomObject><br>

Overwrite the list of users with store access

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: JWTCookie
$Configuration.ApiKey.grommunioAuthJwt = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.grommunioAuthJwt = "Bearer"

$UserID = 56 # Int32 | ID of the user
$DomainID = 56 # Int32 | ID of the domain
$XCsrfToken = "MyXCsrfToken" # String | CSRF Token (optional)
$PutStoreAccessUserRequest = Initialize-PutStoreAccessUserRequest -Usernames "MyUsernames" # PutStoreAccessUserRequest |  (optional)

# Overwrite the list of users with store access
try {
    $Result = Send-GroAdminStoreAccessUser -UserID $UserID -DomainID $DomainID -XCsrfToken $XCsrfToken -PutStoreAccessUserRequest $PutStoreAccessUserRequest
} catch {
    Write-Host ("Exception occurred when calling Send-GroAdminStoreAccessUser: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **UserID** | **Int32**| ID of the user | 
 **DomainID** | **Int32**| ID of the domain | 
 **XCsrfToken** | **String**| CSRF Token | [optional] 
 **PutStoreAccessUserRequest** | [**PutStoreAccessUserRequest**](PutStoreAccessUserRequest.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

[JWTCookie](../README.md#JWTCookie)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Remove-GroAdminDeviceResync"></a>
# **Remove-GroAdminDeviceResync**
> void Remove-GroAdminDeviceResync<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-UserID] <Int32><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-DomainID] <Int32><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-DeviceID] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-XCsrfToken] <String><br>

Remove device (issue a resync)

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: JWTCookie
$Configuration.ApiKey.grommunioAuthJwt = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.grommunioAuthJwt = "Bearer"

$UserID = 56 # Int32 | ID of the user
$DomainID = 56 # Int32 | ID of the domain
$DeviceID = "MyDeviceID" # String | Device ID
$XCsrfToken = "MyXCsrfToken" # String | CSRF Token (optional)

# Remove device (issue a resync)
try {
    $Result = Remove-GroAdminDeviceResync -UserID $UserID -DomainID $DomainID -DeviceID $DeviceID -XCsrfToken $XCsrfToken
} catch {
    Write-Host ("Exception occurred when calling Remove-GroAdminDeviceResync: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **UserID** | **Int32**| ID of the user | 
 **DomainID** | **Int32**| ID of the domain | 
 **DeviceID** | **String**| Device ID | 
 **XCsrfToken** | **String**| CSRF Token | [optional] 

### Return type

void (empty response body)

### Authorization

[JWTCookie](../README.md#JWTCookie)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Remove-GroAdminDeviceStates"></a>
# **Remove-GroAdminDeviceStates**
> void Remove-GroAdminDeviceStates<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-UserID] <Int32><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-DomainID] <Int32><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-XCsrfToken] <String><br>

Remove device states

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: JWTCookie
$Configuration.ApiKey.grommunioAuthJwt = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.grommunioAuthJwt = "Bearer"

$UserID = 56 # Int32 | ID of the user
$DomainID = 56 # Int32 | ID of the domain
$XCsrfToken = "MyXCsrfToken" # String | CSRF Token (optional)

# Remove device states
try {
    $Result = Remove-GroAdminDeviceStates -UserID $UserID -DomainID $DomainID -XCsrfToken $XCsrfToken
} catch {
    Write-Host ("Exception occurred when calling Remove-GroAdminDeviceStates: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **UserID** | **Int32**| ID of the user | 
 **DomainID** | **Int32**| ID of the domain | 
 **XCsrfToken** | **String**| CSRF Token | [optional] 

### Return type

void (empty response body)

### Authorization

[JWTCookie](../README.md#JWTCookie)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Set-GroAdminOofSize"></a>
# **Set-GroAdminOofSize**
> void Set-GroAdminOofSize<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-DomainID] <Int32><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-UserID] <Int32><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-XCsrfToken] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-UserOofState] <PSCustomObject><br>

Set user's out of office state

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: JWTCookie
$Configuration.ApiKey.grommunioAuthJwt = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.grommunioAuthJwt = "Bearer"

$DomainID = 56 # Int32 | ID of the domain
$UserID = 56 # Int32 | ID of the user
$XCsrfToken = "MyXCsrfToken" # String | CSRF Token (optional)
$UserOofState = Initialize-UserOofState -State "0" -ExternalAudience "0" -StartTime "MyStartTime" -EndTime "MyEndTime" -InternalSubject "MyInternalSubject" -InternalReply "MyInternalReply" -ExternalSubject "MyExternalSubject" -ExternalReply "MyExternalReply" # UserOofState |  (optional)

# Set user's out of office state
try {
    $Result = Set-GroAdminOofSize -DomainID $DomainID -UserID $UserID -XCsrfToken $XCsrfToken -UserOofState $UserOofState
} catch {
    Write-Host ("Exception occurred when calling Set-GroAdminOofSize: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **DomainID** | **Int32**| ID of the domain | 
 **UserID** | **Int32**| ID of the user | 
 **XCsrfToken** | **String**| CSRF Token | [optional] 
 **UserOofState** | [**UserOofState**](UserOofState.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

[JWTCookie](../README.md#JWTCookie)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Set-GroAdminPassword"></a>
# **Set-GroAdminPassword**
> void Set-GroAdminPassword<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-DomainID] <Int32><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-UserID] <Int32><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-XCsrfToken] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SetPasswordRequest] <PSCustomObject><br>

Set user password

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: JWTCookie
$Configuration.ApiKey.grommunioAuthJwt = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.grommunioAuthJwt = "Bearer"

$DomainID = 56 # Int32 | ID of the domain
$UserID = 56 # Int32 | ID of the user
$XCsrfToken = "MyXCsrfToken" # String | CSRF Token (optional)
$SetPasswordRequest = Initialize-SetPasswordRequest -New "MyNew" # SetPasswordRequest |  (optional)

# Set user password
try {
    $Result = Set-GroAdminPassword -DomainID $DomainID -UserID $UserID -XCsrfToken $XCsrfToken -SetPasswordRequest $SetPasswordRequest
} catch {
    Write-Host ("Exception occurred when calling Set-GroAdminPassword: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **DomainID** | **Int32**| ID of the domain | 
 **UserID** | **Int32**| ID of the user | 
 **XCsrfToken** | **String**| CSRF Token | [optional] 
 **SetPasswordRequest** | [**SetPasswordRequest**](SetPasswordRequest.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

[JWTCookie](../README.md#JWTCookie)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

