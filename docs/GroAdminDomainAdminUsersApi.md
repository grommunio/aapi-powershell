# GrommunioAdmin.GrommunioAdmin/Api.GroAdminDomainAdminUsersApi

All URIs are relative to */api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Stop-GroAdminWipe**](GroAdminDomainAdminUsersApi.md#Stop-GroAdminWipe) | **DELETE** /domains/{domainID}/users/{userID}/sync/{deviceID}/wipe | cancelWipe
[**Invoke-GroAdminDeleteStoreAccessUser**](GroAdminDomainAdminUsersApi.md#Invoke-GroAdminDeleteStoreAccessUser) | **DELETE** /domains/{domainID}/users/{userID}/storeAccess/{username} | deleteStoreAccessUser
[**Invoke-GroAdminDeleteStoreProps**](GroAdminDomainAdminUsersApi.md#Invoke-GroAdminDeleteStoreProps) | **DELETE** /domains/{domainID}/users/{userID}/storeProps | deleteStoreProps
[**Invoke-GroAdminDeleteUser**](GroAdminDomainAdminUsersApi.md#Invoke-GroAdminDeleteUser) | **DELETE** /domains/{domainID}/users/{userID} | deleteUser
[**Get-GroAdminDelegates**](GroAdminDomainAdminUsersApi.md#Get-GroAdminDelegates) | **GET** /domains/{domainID}/users/{userID}/delegates | getDelegates
[**Get-GroAdminDomainSyncPolicy**](GroAdminDomainAdminUsersApi.md#Get-GroAdminDomainSyncPolicy) | **GET** /domains/{domainID}/syncPolicy | getDomainSyncPolicy
[**Get-GroAdminSendas**](GroAdminDomainAdminUsersApi.md#Get-GroAdminSendas) | **GET** /domains/{domainID}/users/{userID}/sendas | getSendas
[**Get-GroAdminStoreAccessUsers**](GroAdminDomainAdminUsersApi.md#Get-GroAdminStoreAccessUsers) | **GET** /domains/{domainID}/users/{userID}/storeAccess | getStoreAccessUsers
[**Get-GroAdminStoreProps**](GroAdminDomainAdminUsersApi.md#Get-GroAdminStoreProps) | **GET** /domains/{domainID}/users/{userID}/storeProps | getStoreProps
[**Get-GroAdminSyncedDevices**](GroAdminDomainAdminUsersApi.md#Get-GroAdminSyncedDevices) | **GET** /domains/{domainID}/users/{userID}/sync | getSyncedDevices
[**Get-GroAdminUser**](GroAdminDomainAdminUsersApi.md#Get-GroAdminUser) | **GET** /domains/{domainID}/users/{userID} | getUser
[**Get-GroAdminUsers**](GroAdminDomainAdminUsersApi.md#Get-GroAdminUsers) | **GET** /domains/{domainID}/users | getUsers
[**Invoke-GroAdminOofSizeLarge**](GroAdminDomainAdminUsersApi.md#Invoke-GroAdminOofSizeLarge) | **GET** /domains/{domainID}/users/{userID}/oof | oofSizeLarge
[**Invoke-GroAdminPatchStoreProps**](GroAdminDomainAdminUsersApi.md#Invoke-GroAdminPatchStoreProps) | **PATCH** /domains/{domainID}/users/{userID}/storeProps | patchStoreProps
[**Invoke-GroAdminPatchUser**](GroAdminDomainAdminUsersApi.md#Invoke-GroAdminPatchUser) | **PATCH** /domains/{domainID}/users/{userID} | patchUser
[**Submit-GroAdminDeviceWipe**](GroAdminDomainAdminUsersApi.md#Submit-GroAdminDeviceWipe) | **POST** /domains/{domainID}/users/{userID}/sync/{deviceID}/wipe | postDeviceWipe
[**Submit-GroAdminStoreAccessUser**](GroAdminDomainAdminUsersApi.md#Submit-GroAdminStoreAccessUser) | **POST** /domains/{domainID}/users/{userID}/storeAccess | postStoreAccessUser
[**Submit-GroAdminUser**](GroAdminDomainAdminUsersApi.md#Submit-GroAdminUser) | **POST** /domains/{domainID}/users | postUser
[**Send-GroAdminDelegates**](GroAdminDomainAdminUsersApi.md#Send-GroAdminDelegates) | **PUT** /domains/{domainID}/users/{userID}/delegates | putDelegates
[**Send-GroAdminDeviceResync**](GroAdminDomainAdminUsersApi.md#Send-GroAdminDeviceResync) | **PUT** /domains/{domainID}/users/{userID}/sync/{deviceID}/resync | putDeviceResync
[**Send-GroAdminDownsync**](GroAdminDomainAdminUsersApi.md#Send-GroAdminDownsync) | **PUT** /domains/{domainID}/users/{userID}/downsync | putDownsync
[**Send-GroAdminSendas**](GroAdminDomainAdminUsersApi.md#Send-GroAdminSendas) | **PUT** /domains/{domainID}/users/{userID}/sendas | putSendas
[**Send-GroAdminStoreAccessUser**](GroAdminDomainAdminUsersApi.md#Send-GroAdminStoreAccessUser) | **PUT** /domains/{domainID}/users/{userID}/storeAccess | putStoreAccessUser
[**Remove-GroAdminDeviceResync**](GroAdminDomainAdminUsersApi.md#Remove-GroAdminDeviceResync) | **DELETE** /domains/{domainID}/users/{userID}/sync/{deviceID} | removeDeviceResync
[**Remove-GroAdminDeviceStates**](GroAdminDomainAdminUsersApi.md#Remove-GroAdminDeviceStates) | **DELETE** /domains/{domainID}/users/{userID}/sync | removeDeviceStates
[**Set-GroAdminOofSize**](GroAdminDomainAdminUsersApi.md#Set-GroAdminOofSize) | **PUT** /domains/{domainID}/users/{userID}/oof | setOofSize
[**Set-GroAdminPassword**](GroAdminDomainAdminUsersApi.md#Set-GroAdminPassword) | **PUT** /domains/{domainID}/users/{userID}/password | setPassword


<a name="Stop-GroAdminWipe"></a>
# **Stop-GroAdminWipe**
> void Stop-GroAdminWipe<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-UserID] <Int32><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-DomainID] <Int32><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-DeviceID] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-XCsrfToken] <String><br>

cancelWipe

Cancel wipe request

### Example
```powershell
$UserID = 56 # Int32 | ID of the user
$DomainID = 56 # Int32 | ID of the domain
$DeviceID = "MyDeviceID" # String | Device ID
$XCsrfToken = "MyXCsrfToken" # String | CSRF Token (optional)

# cancelWipe
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

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-GroAdminDeleteStoreAccessUser"></a>
# **Invoke-GroAdminDeleteStoreAccessUser**
> void Invoke-GroAdminDeleteStoreAccessUser<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-UserID] <Int32><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-DomainID] <Int32><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Username] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-XCsrfToken] <String><br>

deleteStoreAccessUser

Remove user from store access list

### Example
```powershell
$UserID = 56 # Int32 | ID of the user
$DomainID = 56 # Int32 | ID of the domain
$Username = "MyUsername" # String | E-mail address of the user
$XCsrfToken = "MyXCsrfToken" # String | CSRF Token (optional)

# deleteStoreAccessUser
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

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-GroAdminDeleteStoreProps"></a>
# **Invoke-GroAdminDeleteStoreProps**
> void Invoke-GroAdminDeleteStoreProps<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-UserID] <Int32><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-DomainID] <Int32><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-XCsrfToken] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Properties] <String><br>

deleteStoreProps

Delete user store props

### Example
```powershell
$UserID = 56 # Int32 | ID of the user
$DomainID = 56 # Int32 | ID of the domain
$XCsrfToken = "MyXCsrfToken" # String | CSRF Token (optional)
$Properties = "MyProperties" # String | Comma separated list of properties to return (optional)

# deleteStoreProps
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

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-GroAdminDeleteUser"></a>
# **Invoke-GroAdminDeleteUser**
> void Invoke-GroAdminDeleteUser<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-UserID] <Int32><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-DomainID] <Int32><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-XCsrfToken] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-DeleteFiles] <System.Nullable[Boolean]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-DeleteChatUser] <System.Nullable[Boolean]><br>

deleteUser

Delete user

### Example
```powershell
$UserID = 56 # Int32 | ID of the user
$DomainID = 56 # Int32 | ID of the domain
$XCsrfToken = "MyXCsrfToken" # String | CSRF Token (optional)
$DeleteFiles = $true # Boolean | Delete user files on disk (optional) (default to $false)
$DeleteChatUser = $true # Boolean | Permanently delete chat user (optional) (default to $true)

# deleteUser
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

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Get-GroAdminDelegates"></a>
# **Get-GroAdminDelegates**
> DomainsUsersDelegatesResponse Get-GroAdminDelegates<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-UserID] <Int32><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-DomainID] <Int32><br>

getDelegates

Get list of users that can send mails on the users behalf

### Example
```powershell
$UserID = 56 # Int32 | ID of the user
$DomainID = 56 # Int32 | ID of the domain

# getDelegates
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

[**DomainsUsersDelegatesResponse**](DomainsUsersDelegatesResponse.md) (PSCustomObject)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Get-GroAdminDomainSyncPolicy"></a>
# **Get-GroAdminDomainSyncPolicy**
> DomainsSyncPolicyResponse Get-GroAdminDomainSyncPolicy<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-DomainID] <Int32><br>

getDomainSyncPolicy

Get effective domain sync policy

### Example
```powershell
$DomainID = 56 # Int32 | ID of the domain

# getDomainSyncPolicy
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

[**DomainsSyncPolicyResponse**](DomainsSyncPolicyResponse.md) (PSCustomObject)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Get-GroAdminSendas"></a>
# **Get-GroAdminSendas**
> DomainsUsersSendasResponse Get-GroAdminSendas<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-UserID] <Int32><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-DomainID] <Int32><br>

getSendas

Get list of users that can send mails as the user

### Example
```powershell
$UserID = 56 # Int32 | ID of the user
$DomainID = 56 # Int32 | ID of the domain

# getSendas
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

[**DomainsUsersSendasResponse**](DomainsUsersSendasResponse.md) (PSCustomObject)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Get-GroAdminStoreAccessUsers"></a>
# **Get-GroAdminStoreAccessUsers**
> DomainsUsersStoreAccessResponse Get-GroAdminStoreAccessUsers<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-UserID] <Int32><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-DomainID] <Int32><br>

getStoreAccessUsers

Get list of users that can access the users store

### Example
```powershell
$UserID = 56 # Int32 | ID of the user
$DomainID = 56 # Int32 | ID of the domain

# getStoreAccessUsers
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

[**DomainsUsersStoreAccessResponse**](DomainsUsersStoreAccessResponse.md) (PSCustomObject)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Get-GroAdminStoreProps"></a>
# **Get-GroAdminStoreProps**
> DomainsUsersStorePropsResponse Get-GroAdminStoreProps<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-UserID] <Int32><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-DomainID] <Int32><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Properties] <String><br>

getStoreProps

Get user store properties

### Example
```powershell
$UserID = 56 # Int32 | ID of the user
$DomainID = 56 # Int32 | ID of the domain
$Properties = "MyProperties" # String | Comma separated list of properties to return (optional)

# getStoreProps
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

[**DomainsUsersStorePropsResponse**](DomainsUsersStorePropsResponse.md) (PSCustomObject)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Get-GroAdminSyncedDevices"></a>
# **Get-GroAdminSyncedDevices**
> DomainsUsersSyncResponse Get-GroAdminSyncedDevices<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-UserID] <Int32><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-DomainID] <Int32><br>

getSyncedDevices

Get status of synced devices

### Example
```powershell
$UserID = 56 # Int32 | ID of the user
$DomainID = 56 # Int32 | ID of the domain

# getSyncedDevices
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

[**DomainsUsersSyncResponse**](DomainsUsersSyncResponse.md) (PSCustomObject)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Get-GroAdminUser"></a>
# **Get-GroAdminUser**
> User Get-GroAdminUser<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-UserID] <Int32><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-DomainID] <Int32><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Level] <System.Nullable[Int32]><br>

getUser

Get information about a specific user

### Example
```powershell
$UserID = 56 # Int32 | ID of the user
$DomainID = 56 # Int32 | ID of the domain
$Level = 56 # Int32 | Set detail level of return value. Usually ranges from 0 to 2. (optional)

# getUser
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

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Get-GroAdminUsers"></a>
# **Get-GroAdminUsers**
> DomainsUsersResponse Get-GroAdminUsers<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-DomainID] <Int32><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Level] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Limit] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Offset] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Match] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-MatchFields] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Sort] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ID] <System.Nullable[Int32][]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Username] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Properties] <String><br>

getUsers

Get lists of users

### Example
```powershell
$DomainID = 56 # Int32 | ID of the domain
$Level = 56 # Int32 | Set detail level of return value. Usually ranges from 0 to 2. (optional)
$Limit = 56 # Int32 | Maximum number of results to return (optional) (default to 50)
$Offset = 56 # Int32 | Index of the first element to return (optional) (default to 0)
$Match = "MyMatch" # String | Match by substring (optional)
$MatchFields = "MyMatchFields" # String | Comma separated list of attributes to restrict matching to. (optional)
$Sort = "MySort" # String | Sort by attribute. Can be given multiple times. (optional)
$ID = 0 # Int32[] | Filter one or more IDs (optional)
$Username = "MyUsername" # String | Filter by username (optional)
$Properties = "MyProperties" # String | Comma separated list of properties to return (optional)

# getUsers
try {
    $Result = Get-GroAdminUsers -DomainID $DomainID -Level $Level -Limit $Limit -Offset $Offset -Match $Match -MatchFields $MatchFields -Sort $Sort -ID $ID -Username $Username -Properties $Properties
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
 **Sort** | **String**| Sort by attribute. Can be given multiple times. | [optional] 
 **ID** | [**Int32[]**](Int32.md)| Filter one or more IDs | [optional] 
 **Username** | **String**| Filter by username | [optional] 
 **Properties** | **String**| Comma separated list of properties to return | [optional] 

### Return type

[**DomainsUsersResponse**](DomainsUsersResponse.md) (PSCustomObject)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-GroAdminOofSizeLarge"></a>
# **Invoke-GroAdminOofSizeLarge**
> UserOofState Invoke-GroAdminOofSizeLarge<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-DomainID] <Int32><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-UserID] <Int32><br>

oofSizeLarge

Get user's out of office state

### Example
```powershell
$DomainID = 56 # Int32 | ID of the domain
$UserID = 56 # Int32 | ID of the user

# oofSizeLarge
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

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-GroAdminPatchStoreProps"></a>
# **Invoke-GroAdminPatchStoreProps**
> DomainsUsersStorePropsResponse1 Invoke-GroAdminPatchStoreProps<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-UserID] <Int32><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-DomainID] <Int32><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-XCsrfToken] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-RequestBody] <System.Collections.Hashtable><br>

patchStoreProps

Update store properties

### Example
```powershell
$UserID = 56 # Int32 | ID of the user
$DomainID = 56 # Int32 | ID of the domain
$XCsrfToken = "MyXCsrfToken" # String | CSRF Token (optional)
$RequestBody = $PatchStorePropsRequestValue = Initialize-PatchStorePropsRequestValue 
$RequestBody = @{ key_example = $PatchStorePropsRequestValue } # System.Collections.Hashtable |  (optional)

# patchStoreProps
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

[**DomainsUsersStorePropsResponse1**](DomainsUsersStorePropsResponse1.md) (PSCustomObject)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-GroAdminPatchUser"></a>
# **Invoke-GroAdminPatchUser**
> User Invoke-GroAdminPatchUser<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-UserID] <Int32><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-DomainID] <Int32><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-XCsrfToken] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PatchUserRequest] <PSCustomObject><br>

patchUser

Update user

### Example
```powershell
$UserID = 56 # Int32 | ID of the user
$DomainID = 56 # Int32 | ID of the domain
$XCsrfToken = "MyXCsrfToken" # String | CSRF Token (optional)
$UserStatus = Initialize-UserStatus 

$SrcAuth = Initialize-SrcAuth 
$Protocol = Initialize-Protocol 
$FetchmailEntry = Initialize-FetchmailEntry -ID 0 -Mailbox "MyMailbox" -Active $false -SrcServer "MySrcServer" -SrcUser "MySrcUser" -SrcPassword "MySrcPassword" -Date "MyDate" -SrcAuth $SrcAuth -SrcFolder "MySrcFolder" -Fetchall $false -Keep $false -Protocol $Protocol -UseSSL $false -SslCertCheck $false -SslCertPath "MySslCertPath" -SslFingerprint "MySslFingerprint" -ExtraOptions "MyExtraOptions"

$Allowbluetooth = Initialize-Allowbluetooth 
$Allowbrowser = Initialize-Allowbrowser 
$Allowcam = Initialize-Allowcam 
$Allowconsumeremail = Initialize-Allowconsumeremail 
$Allowdesktopsync = Initialize-Allowdesktopsync 
$Allowhtmlemail = Initialize-Allowhtmlemail 
$Allowinternetsharing = Initialize-Allowinternetsharing 
$Allowirda = Initialize-Allowirda 
$Allowpopimapemail = Initialize-Allowpopimapemail 
$Allowremotedesk = Initialize-Allowremotedesk 
$Allowsimpledevpw = Initialize-Allowsimpledevpw 
$Allowsmimeencalgneg = Initialize-Allowsmimeencalgneg 
$Allowsmimesoftcerts = Initialize-Allowsmimesoftcerts 
$Allowstoragecard = Initialize-Allowstoragecard 
$Allowtextmessaging = Initialize-Allowtextmessaging 
$Allowunsignedapps = Initialize-Allowunsignedapps 
$Allowunsigninstallpacks = Initialize-Allowunsigninstallpacks 
$Allowwifi = Initialize-Allowwifi 
$Alphanumpwreq = Initialize-Alphanumpwreq 
$Attenabled = Initialize-Attenabled 
$Devencenabled = Initialize-Devencenabled 
$Devpwenabled = Initialize-Devpwenabled 
$SyncPolicyMaxattsize = Initialize-SyncPolicyMaxattsize 
$Maxcalagefilter = Initialize-Maxcalagefilter 
$Maxemailagefilter = Initialize-Maxemailagefilter 
$Pwrecoveryenabled = Initialize-Pwrecoveryenabled 
$Reqdevenc = Initialize-Reqdevenc 
$Reqencsmimealgorithm = Initialize-Reqencsmimealgorithm 
$Reqencsmimemessages = Initialize-Reqencsmimemessages 
$Reqmansyncroam = Initialize-Reqmansyncroam 
$Reqsignedsmimealgorithm = Initialize-Reqsignedsmimealgorithm 
$Reqsignedsmimemessages = Initialize-Reqsignedsmimemessages 
$DomainCommonSyncPolicy = Initialize-DomainCommonSyncPolicy -Allowbluetooth $Allowbluetooth -Allowbrowser $Allowbrowser -Allowcam $Allowcam -Allowconsumeremail $Allowconsumeremail -Allowdesktopsync $Allowdesktopsync -Allowhtmlemail $Allowhtmlemail -Allowinternetsharing $Allowinternetsharing -Allowirda $Allowirda -Allowpopimapemail $Allowpopimapemail -Allowremotedesk $Allowremotedesk -Allowsimpledevpw $Allowsimpledevpw -Allowsmimeencalgneg $Allowsmimeencalgneg -Allowsmimesoftcerts $Allowsmimesoftcerts -Allowstoragecard $Allowstoragecard -Allowtextmessaging $Allowtextmessaging -Allowunsignedapps $Allowunsignedapps -Allowunsigninstallpacks $Allowunsigninstallpacks -Allowwifi $Allowwifi -Alphanumpwreq $Alphanumpwreq -Approvedapplist "MyApprovedapplist" -Attenabled $Attenabled -Devencenabled $Devencenabled -Devpwenabled $Devpwenabled -Devpwexpiration 0 -Devpwhistory 0 -Maxattsize $SyncPolicyMaxattsize -Maxcalagefilter $Maxcalagefilter -Maxdevpwfailedattempts 0 -Maxemailagefilter $Maxemailagefilter -Maxemailbodytruncsize 0 -Maxemailhtmlbodytruncsize 0 -Maxinacttimedevlock 0 -Mindevcomplexchars 0 -Mindevpwlenngth 0 -Pwrecoveryenabled $Pwrecoveryenabled -Reqdevenc $Reqdevenc -Reqencsmimealgorithm $Reqencsmimealgorithm -Reqencsmimemessages $Reqencsmimemessages -Reqmansyncroam $Reqmansyncroam -Reqsignedsmimealgorithm $Reqsignedsmimealgorithm -Reqsignedsmimemessages $Reqsignedsmimemessages -Unapprovedinromapplist "MyUnapprovedinromapplist"

$ForwardType = Initialize-ForwardType 
$UserForward = Initialize-UserForward -ForwardType $ForwardType -Destination "MyDestination"

$PatchUserRequest = Initialize-PatchUserRequest -Username "MyUsername" -Properties  -Aliases "MyAliases" -Status $UserStatus -Pop3Imap $false -Smtp $false -ChangePassword $false -PublicAddress $false -PrivChat $false -PrivVideo $false -PrivFiles $false -PrivArchive $false -LdapID "MyLdapID" -Fetchmail $FetchmailEntry -SyncPolicy $DomainCommonSyncPolicy -Chat $false -ChatAdmin $false -Lang "MyLang" -Forward $UserForward -Homeserver 0 # PatchUserRequest |  (optional)

# patchUser
try {
    $Result = Invoke-GroAdminPatchUser -UserID $UserID -DomainID $DomainID -XCsrfToken $XCsrfToken -PatchUserRequest $PatchUserRequest
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
 **PatchUserRequest** | [**PatchUserRequest**](PatchUserRequest.md)|  | [optional] 

### Return type

[**User**](User.md) (PSCustomObject)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Submit-GroAdminDeviceWipe"></a>
# **Submit-GroAdminDeviceWipe**
> void Submit-GroAdminDeviceWipe<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-UserID] <Int32><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-DomainID] <Int32><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-DeviceID] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-XCsrfToken] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PostDeviceWipeRequest] <PSCustomObject><br>

postDeviceWipe

Request a device wipe

### Example
```powershell
$UserID = 56 # Int32 | ID of the user
$DomainID = 56 # Int32 | ID of the domain
$DeviceID = "MyDeviceID" # String | Device ID
$XCsrfToken = "MyXCsrfToken" # String | CSRF Token (optional)
$PostDeviceWipeRequest = Initialize-PostDeviceWipeRequest -Password "MyPassword" # PostDeviceWipeRequest |  (optional)

# postDeviceWipe
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

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Submit-GroAdminStoreAccessUser"></a>
# **Submit-GroAdminStoreAccessUser**
> void Submit-GroAdminStoreAccessUser<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-UserID] <Int32><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-DomainID] <Int32><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-XCsrfToken] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PostStoreAccessUserRequest] <PSCustomObject><br>

postStoreAccessUser

Grant store access to another user

### Example
```powershell
$UserID = 56 # Int32 | ID of the user
$DomainID = 56 # Int32 | ID of the domain
$XCsrfToken = "MyXCsrfToken" # String | CSRF Token (optional)
$PostStoreAccessUserRequest = Initialize-PostStoreAccessUserRequest -Username "MyUsername" # PostStoreAccessUserRequest |  (optional)

# postStoreAccessUser
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

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Submit-GroAdminUser"></a>
# **Submit-GroAdminUser**
> User Submit-GroAdminUser<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-DomainID] <Int32><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-XCsrfToken] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PostUserRequest] <PSCustomObject><br>

postUser

Create new user

### Example
```powershell
$DomainID = 56 # Int32 | ID of the domain
$XCsrfToken = "MyXCsrfToken" # String | CSRF Token (optional)
$UserStatus = Initialize-UserStatus 

$SrcAuth = Initialize-SrcAuth 
$Protocol = Initialize-Protocol 
$FetchmailEntry = Initialize-FetchmailEntry -ID 0 -Mailbox "MyMailbox" -Active $false -SrcServer "MySrcServer" -SrcUser "MySrcUser" -SrcPassword "MySrcPassword" -Date "MyDate" -SrcAuth $SrcAuth -SrcFolder "MySrcFolder" -Fetchall $false -Keep $false -Protocol $Protocol -UseSSL $false -SslCertCheck $false -SslCertPath "MySslCertPath" -SslFingerprint "MySslFingerprint" -ExtraOptions "MyExtraOptions"

$Allowbluetooth = Initialize-Allowbluetooth 
$Allowbrowser = Initialize-Allowbrowser 
$Allowcam = Initialize-Allowcam 
$Allowconsumeremail = Initialize-Allowconsumeremail 
$Allowdesktopsync = Initialize-Allowdesktopsync 
$Allowhtmlemail = Initialize-Allowhtmlemail 
$Allowinternetsharing = Initialize-Allowinternetsharing 
$Allowirda = Initialize-Allowirda 
$Allowpopimapemail = Initialize-Allowpopimapemail 
$Allowremotedesk = Initialize-Allowremotedesk 
$Allowsimpledevpw = Initialize-Allowsimpledevpw 
$Allowsmimeencalgneg = Initialize-Allowsmimeencalgneg 
$Allowsmimesoftcerts = Initialize-Allowsmimesoftcerts 
$Allowstoragecard = Initialize-Allowstoragecard 
$Allowtextmessaging = Initialize-Allowtextmessaging 
$Allowunsignedapps = Initialize-Allowunsignedapps 
$Allowunsigninstallpacks = Initialize-Allowunsigninstallpacks 
$Allowwifi = Initialize-Allowwifi 
$Alphanumpwreq = Initialize-Alphanumpwreq 
$Attenabled = Initialize-Attenabled 
$Devencenabled = Initialize-Devencenabled 
$Devpwenabled = Initialize-Devpwenabled 
$SyncPolicyMaxattsize = Initialize-SyncPolicyMaxattsize 
$Maxcalagefilter = Initialize-Maxcalagefilter 
$Maxemailagefilter = Initialize-Maxemailagefilter 
$Pwrecoveryenabled = Initialize-Pwrecoveryenabled 
$Reqdevenc = Initialize-Reqdevenc 
$Reqencsmimealgorithm = Initialize-Reqencsmimealgorithm 
$Reqencsmimemessages = Initialize-Reqencsmimemessages 
$Reqmansyncroam = Initialize-Reqmansyncroam 
$Reqsignedsmimealgorithm = Initialize-Reqsignedsmimealgorithm 
$Reqsignedsmimemessages = Initialize-Reqsignedsmimemessages 
$DomainCommonSyncPolicy = Initialize-DomainCommonSyncPolicy -Allowbluetooth $Allowbluetooth -Allowbrowser $Allowbrowser -Allowcam $Allowcam -Allowconsumeremail $Allowconsumeremail -Allowdesktopsync $Allowdesktopsync -Allowhtmlemail $Allowhtmlemail -Allowinternetsharing $Allowinternetsharing -Allowirda $Allowirda -Allowpopimapemail $Allowpopimapemail -Allowremotedesk $Allowremotedesk -Allowsimpledevpw $Allowsimpledevpw -Allowsmimeencalgneg $Allowsmimeencalgneg -Allowsmimesoftcerts $Allowsmimesoftcerts -Allowstoragecard $Allowstoragecard -Allowtextmessaging $Allowtextmessaging -Allowunsignedapps $Allowunsignedapps -Allowunsigninstallpacks $Allowunsigninstallpacks -Allowwifi $Allowwifi -Alphanumpwreq $Alphanumpwreq -Approvedapplist "MyApprovedapplist" -Attenabled $Attenabled -Devencenabled $Devencenabled -Devpwenabled $Devpwenabled -Devpwexpiration 0 -Devpwhistory 0 -Maxattsize $SyncPolicyMaxattsize -Maxcalagefilter $Maxcalagefilter -Maxdevpwfailedattempts 0 -Maxemailagefilter $Maxemailagefilter -Maxemailbodytruncsize 0 -Maxemailhtmlbodytruncsize 0 -Maxinacttimedevlock 0 -Mindevcomplexchars 0 -Mindevpwlenngth 0 -Pwrecoveryenabled $Pwrecoveryenabled -Reqdevenc $Reqdevenc -Reqencsmimealgorithm $Reqencsmimealgorithm -Reqencsmimemessages $Reqencsmimemessages -Reqmansyncroam $Reqmansyncroam -Reqsignedsmimealgorithm $Reqsignedsmimealgorithm -Reqsignedsmimemessages $Reqsignedsmimemessages -Unapprovedinromapplist "MyUnapprovedinromapplist"

$ForwardType = Initialize-ForwardType 
$UserForward = Initialize-UserForward -ForwardType $ForwardType -Destination "MyDestination"

$PostUserRequest = Initialize-PostUserRequest -Username "MyUsername" -Password "MyPassword" -DomainID 0 -Properties  -Aliases "MyAliases" -Status $UserStatus -Pop3Imap $false -Smtp $false -ChangePassword $false -PublicAddress $false -PrivChat $false -PrivVideo $false -PrivFiles $false -PrivArchive $false -Fetchmail $FetchmailEntry -SyncPolicy $DomainCommonSyncPolicy -Chat $false -ChatAdmin $false -Lang "MyLang" -Forward $UserForward -Homeserver 0 # PostUserRequest |  (optional)

# postUser
try {
    $Result = Submit-GroAdminUser -DomainID $DomainID -XCsrfToken $XCsrfToken -PostUserRequest $PostUserRequest
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
 **PostUserRequest** | [**PostUserRequest**](PostUserRequest.md)|  | [optional] 

### Return type

[**User**](User.md) (PSCustomObject)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Send-GroAdminDelegates"></a>
# **Send-GroAdminDelegates**
> void Send-GroAdminDelegates<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-UserID] <Int32><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-DomainID] <Int32><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-XCsrfToken] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-RequestBody] <String[]><br>

putDelegates

Set list of users that can send mails on the users behalf

### Example
```powershell
$UserID = 56 # Int32 | ID of the user
$DomainID = 56 # Int32 | ID of the domain
$XCsrfToken = "MyXCsrfToken" # String | CSRF Token (optional)
$RequestBody = "MyRequestBody" # String[] |  (optional)

# putDelegates
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

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Send-GroAdminDeviceResync"></a>
# **Send-GroAdminDeviceResync**
> void Send-GroAdminDeviceResync<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-UserID] <Int32><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-DomainID] <Int32><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-DeviceID] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-XCsrfToken] <String><br>

putDeviceResync

Request a device resync

### Example
```powershell
$UserID = 56 # Int32 | ID of the user
$DomainID = 56 # Int32 | ID of the domain
$DeviceID = "MyDeviceID" # String | Device ID
$XCsrfToken = "MyXCsrfToken" # String | CSRF Token (optional)

# putDeviceResync
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

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Send-GroAdminDownsync"></a>
# **Send-GroAdminDownsync**
> User Send-GroAdminDownsync<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-DomainID] <Int32><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-UserID] <Int32><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-XCsrfToken] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ID] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Lang] <String><br>

putDownsync

Update user from LDAP

### Example
```powershell
$DomainID = 56 # Int32 | ID of the domain
$UserID = 56 # Int32 | ID of the user
$XCsrfToken = "MyXCsrfToken" # String | CSRF Token (optional)
$ID = "MyID" # String | Optional LDAP object ID (optional)
$Lang = "MyLang" # String | Default language for imported users (optional)

# putDownsync
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
 **Lang** | **String**| Default language for imported users | [optional] 

### Return type

[**User**](User.md) (PSCustomObject)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Send-GroAdminSendas"></a>
# **Send-GroAdminSendas**
> void Send-GroAdminSendas<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-UserID] <Int32><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-DomainID] <Int32><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-XCsrfToken] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-RequestBody] <String[]><br>

putSendas

Set list of users that can send mails as the user

### Example
```powershell
$UserID = 56 # Int32 | ID of the user
$DomainID = 56 # Int32 | ID of the domain
$XCsrfToken = "MyXCsrfToken" # String | CSRF Token (optional)
$RequestBody = "MyRequestBody" # String[] |  (optional)

# putSendas
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

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Send-GroAdminStoreAccessUser"></a>
# **Send-GroAdminStoreAccessUser**
> void Send-GroAdminStoreAccessUser<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-UserID] <Int32><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-DomainID] <Int32><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-XCsrfToken] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PutStoreAccessUserRequest] <PSCustomObject><br>

putStoreAccessUser

Overwrite the list of users with store access

### Example
```powershell
$UserID = 56 # Int32 | ID of the user
$DomainID = 56 # Int32 | ID of the domain
$XCsrfToken = "MyXCsrfToken" # String | CSRF Token (optional)
$PutStoreAccessUserRequest = Initialize-PutStoreAccessUserRequest -Usernames "MyUsernames" # PutStoreAccessUserRequest |  (optional)

# putStoreAccessUser
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

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Remove-GroAdminDeviceResync"></a>
# **Remove-GroAdminDeviceResync**
> void Remove-GroAdminDeviceResync<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-UserID] <Int32><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-DomainID] <Int32><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-DeviceID] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-XCsrfToken] <String><br>

removeDeviceResync

Remove device (issue a resync)

### Example
```powershell
$UserID = 56 # Int32 | ID of the user
$DomainID = 56 # Int32 | ID of the domain
$DeviceID = "MyDeviceID" # String | Device ID
$XCsrfToken = "MyXCsrfToken" # String | CSRF Token (optional)

# removeDeviceResync
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

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Remove-GroAdminDeviceStates"></a>
# **Remove-GroAdminDeviceStates**
> void Remove-GroAdminDeviceStates<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-UserID] <Int32><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-DomainID] <Int32><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-XCsrfToken] <String><br>

removeDeviceStates

Remove device states

### Example
```powershell
$UserID = 56 # Int32 | ID of the user
$DomainID = 56 # Int32 | ID of the domain
$XCsrfToken = "MyXCsrfToken" # String | CSRF Token (optional)

# removeDeviceStates
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

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Set-GroAdminOofSize"></a>
# **Set-GroAdminOofSize**
> void Set-GroAdminOofSize<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-DomainID] <Int32><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-UserID] <Int32><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-XCsrfToken] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SetOofSizeRequest] <PSCustomObject><br>

setOofSize

Set user's out of office state

### Example
```powershell
$DomainID = 56 # Int32 | ID of the domain
$UserID = 56 # Int32 | ID of the user
$XCsrfToken = "MyXCsrfToken" # String | CSRF Token (optional)
$State1 = Initialize-State1 
$ExternalAudience = Initialize-ExternalAudience 
$SetOofSizeRequest = Initialize-SetOofSizeRequest -State $State1 -ExternalAudience $ExternalAudience -StartTime "MyStartTime" -EndTime "MyEndTime" -InternalSubject "MyInternalSubject" -InternalReply "MyInternalReply" -ExternalSubject "MyExternalSubject" -ExternalReply "MyExternalReply" # SetOofSizeRequest |  (optional)

# setOofSize
try {
    $Result = Set-GroAdminOofSize -DomainID $DomainID -UserID $UserID -XCsrfToken $XCsrfToken -SetOofSizeRequest $SetOofSizeRequest
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
 **SetOofSizeRequest** | [**SetOofSizeRequest**](SetOofSizeRequest.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Set-GroAdminPassword"></a>
# **Set-GroAdminPassword**
> void Set-GroAdminPassword<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-DomainID] <Int32><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-UserID] <Int32><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-XCsrfToken] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SetPasswordRequest] <PSCustomObject><br>

setPassword

Set user password

### Example
```powershell
$DomainID = 56 # Int32 | ID of the domain
$UserID = 56 # Int32 | ID of the user
$XCsrfToken = "MyXCsrfToken" # String | CSRF Token (optional)
$SetPasswordRequest = Initialize-SetPasswordRequest -New "MyNew" # SetPasswordRequest |  (optional)

# setPassword
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

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

