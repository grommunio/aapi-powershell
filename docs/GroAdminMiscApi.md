# GrommunioAdmin.GrommunioAdmin\Api.GroAdminMiscApi

All URIs are relative to */api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Invoke-GroAdminCheckFormat**](GroAdminMiscApi.md#Invoke-GroAdminCheckFormat) | **GET** /chkFormat | Check format of input
[**Invoke-GroAdminDeleteMailq**](GroAdminMiscApi.md#Invoke-GroAdminDeleteMailq) | **POST** /system/mailq/delete | Delete entries from postfix mail queue
[**Clear-GroAdminMailq**](GroAdminMiscApi.md#Clear-GroAdminMailq) | **POST** /system/mailq/flush | Flush postfix mail queue
[**Get-GroAdminAbout**](GroAdminMiscApi.md#Get-GroAdminAbout) | **GET** /about | Get general information about the backend
[**Get-GroAdminDomainDnsCheck**](GroAdminMiscApi.md#Get-GroAdminDomainDnsCheck) | **GET** /domains/{domainID}/dnsCheck | Get detailed dns check for domain
[**Get-GroAdminMailq**](GroAdminMiscApi.md#Get-GroAdminMailq) | **GET** /system/mailq | Retrieve mailq output
[**Get-GroAdminProfile**](GroAdminMiscApi.md#Get-GroAdminProfile) | **GET** /profile | Get information about currently logged in user
[**Get-GroAdminStatus**](GroAdminMiscApi.md#Get-GroAdminStatus) | **GET** /status | Check API connectivity and status
[**Get-GroAdminUserDomains**](GroAdminMiscApi.md#Get-GroAdminUserDomains) | **GET** /domains | Get list of domains the user has access to
[**Get-GroAdminUsernames**](GroAdminMiscApi.md#Get-GroAdminUsernames) | **GET** /users | Get list of usernames
[**Submit-GroAdminLogin**](GroAdminMiscApi.md#Submit-GroAdminLogin) | **POST** /login | Login user
[**Submit-GroAdminRequeue**](GroAdminMiscApi.md#Submit-GroAdminRequeue) | **POST** /system/mailq/requeue | Requeue entries from postfix mail queue
[**Send-GroAdminPasswd**](GroAdminMiscApi.md#Send-GroAdminPasswd) | **PUT** /passwd | Change current users password
[**Invoke-GroAdminRemoteCLI**](GroAdminMiscApi.md#Invoke-GroAdminRemoteCLI) | **POST** /system/cli | Remote CLI invocation
[**Reset-GroAdminPasswd**](GroAdminMiscApi.md#Reset-GroAdminPasswd) | **PUT** /passwd/{username} | Change user password
[**Sync-GroAdminTop**](GroAdminMiscApi.md#Sync-GroAdminTop) | **GET** /system/sync/top | Get grommunio-sync usage information


<a id="Invoke-GroAdminCheckFormat"></a>
# **Invoke-GroAdminCheckFormat**
> CheckFormat200Response Invoke-GroAdminCheckFormat<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Domain] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Email] <String><br>

Check format of input

### Example
```powershell
$Domain = "MyDomain" # String | Check format of domain name (optional)
$Email = "MyEmail" # String | Check format of e-mail address (optional)

# Check format of input
try {
    $Result = Invoke-GroAdminCheckFormat -Domain $Domain -Email $Email
} catch {
    Write-Host ("Exception occurred when calling Invoke-GroAdminCheckFormat: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Domain** | **String**| Check format of domain name | [optional] 
 **Email** | **String**| Check format of e-mail address | [optional] 

### Return type

[**CheckFormat200Response**](CheckFormat200Response.md) (PSCustomObject)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-GroAdminDeleteMailq"></a>
# **Invoke-GroAdminDeleteMailq**
> void Invoke-GroAdminDeleteMailq<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-XCsrfToken] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Queue] <String><br>

Delete entries from postfix mail queue

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: JWTCookie
$Configuration.ApiKey.grommunioAuthJwt = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.grommunioAuthJwt = "Bearer"

$XCsrfToken = "MyXCsrfToken" # String | CSRF Token (optional)
$Queue = "MyQueue" # String | Comma separated list of postfix queue IDs (optional) (default to "ALL")

# Delete entries from postfix mail queue
try {
    $Result = Invoke-GroAdminDeleteMailq -XCsrfToken $XCsrfToken -Queue $Queue
} catch {
    Write-Host ("Exception occurred when calling Invoke-GroAdminDeleteMailq: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **XCsrfToken** | **String**| CSRF Token | [optional] 
 **Queue** | **String**| Comma separated list of postfix queue IDs | [optional] [default to &quot;ALL&quot;]

### Return type

void (empty response body)

### Authorization

[JWTCookie](../README.md#JWTCookie)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Clear-GroAdminMailq"></a>
# **Clear-GroAdminMailq**
> void Clear-GroAdminMailq<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Queue] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-XCsrfToken] <String><br>

Flush postfix mail queue

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: JWTCookie
$Configuration.ApiKey.grommunioAuthJwt = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.grommunioAuthJwt = "Bearer"

$Queue = "MyQueue" # String | Postfix queue ID
$XCsrfToken = "MyXCsrfToken" # String | CSRF Token (optional)

# Flush postfix mail queue
try {
    $Result = Clear-GroAdminMailq -Queue $Queue -XCsrfToken $XCsrfToken
} catch {
    Write-Host ("Exception occurred when calling Clear-GroAdminMailq: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Queue** | **String**| Postfix queue ID | 
 **XCsrfToken** | **String**| CSRF Token | [optional] 

### Return type

void (empty response body)

### Authorization

[JWTCookie](../README.md#JWTCookie)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-GroAdminAbout"></a>
# **Get-GroAdminAbout**
> GetAbout200Response Get-GroAdminAbout<br>

Get general information about the backend

### Example
```powershell

# Get general information about the backend
try {
    $Result = Get-GroAdminAbout
} catch {
    Write-Host ("Exception occurred when calling Get-GroAdminAbout: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**GetAbout200Response**](GetAbout200Response.md) (PSCustomObject)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-GroAdminDomainDnsCheck"></a>
# **Get-GroAdminDomainDnsCheck**
> DomainDnsCheck Get-GroAdminDomainDnsCheck<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-DomainID] <Int32><br>

Get detailed dns check for domain

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: JWTCookie
$Configuration.ApiKey.grommunioAuthJwt = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.grommunioAuthJwt = "Bearer"

$DomainID = 56 # Int32 | ID of the domain

# Get detailed dns check for domain
try {
    $Result = Get-GroAdminDomainDnsCheck -DomainID $DomainID
} catch {
    Write-Host ("Exception occurred when calling Get-GroAdminDomainDnsCheck: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **DomainID** | **Int32**| ID of the domain | 

### Return type

[**DomainDnsCheck**](DomainDnsCheck.md) (PSCustomObject)

### Authorization

[JWTCookie](../README.md#JWTCookie)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-GroAdminMailq"></a>
# **Get-GroAdminMailq**
> GetMailq200Response Get-GroAdminMailq<br>

Retrieve mailq output

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: JWTCookie
$Configuration.ApiKey.grommunioAuthJwt = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.grommunioAuthJwt = "Bearer"


# Retrieve mailq output
try {
    $Result = Get-GroAdminMailq
} catch {
    Write-Host ("Exception occurred when calling Get-GroAdminMailq: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**GetMailq200Response**](GetMailq200Response.md) (PSCustomObject)

### Authorization

[JWTCookie](../README.md#JWTCookie)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-GroAdminProfile"></a>
# **Get-GroAdminProfile**
> GetProfile200Response Get-GroAdminProfile<br>

Get information about currently logged in user

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: JWTCookie
$Configuration.ApiKey.grommunioAuthJwt = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.grommunioAuthJwt = "Bearer"


# Get information about currently logged in user
try {
    $Result = Get-GroAdminProfile
} catch {
    Write-Host ("Exception occurred when calling Get-GroAdminProfile: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**GetProfile200Response**](GetProfile200Response.md) (PSCustomObject)

### Authorization

[JWTCookie](../README.md#JWTCookie)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-GroAdminStatus"></a>
# **Get-GroAdminStatus**
> GetStatus200Response Get-GroAdminStatus<br>

Check API connectivity and status

### Example
```powershell

# Check API connectivity and status
try {
    $Result = Get-GroAdminStatus
} catch {
    Write-Host ("Exception occurred when calling Get-GroAdminStatus: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**GetStatus200Response**](GetStatus200Response.md) (PSCustomObject)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-GroAdminUserDomains"></a>
# **Get-GroAdminUserDomains**
> GetDomains200Response Get-GroAdminUserDomains<br>

Get list of domains the user has access to

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: JWTCookie
$Configuration.ApiKey.grommunioAuthJwt = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.grommunioAuthJwt = "Bearer"


# Get list of domains the user has access to
try {
    $Result = Get-GroAdminUserDomains
} catch {
    Write-Host ("Exception occurred when calling Get-GroAdminUserDomains: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**GetDomains200Response**](GetDomains200Response.md) (PSCustomObject)

### Authorization

[JWTCookie](../README.md#JWTCookie)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-GroAdminUsernames"></a>
# **Get-GroAdminUsernames**
> GetUsernames200Response Get-GroAdminUsernames<br>

Get list of usernames

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: JWTCookie
$Configuration.ApiKey.grommunioAuthJwt = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.grommunioAuthJwt = "Bearer"


# Get list of usernames
try {
    $Result = Get-GroAdminUsernames
} catch {
    Write-Host ("Exception occurred when calling Get-GroAdminUsernames: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**GetUsernames200Response**](GetUsernames200Response.md) (PSCustomObject)

### Authorization

[JWTCookie](../README.md#JWTCookie)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Submit-GroAdminLogin"></a>
# **Submit-GroAdminLogin**
> PostLogin200Response Submit-GroAdminLogin<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-User] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Pass] <String><br>

Login user

### Example
```powershell
$User = "MyUser" # String | Username (optional)
$Pass = "MyPass" # String | User password (optional)

# Login user
try {
    $Result = Submit-GroAdminLogin -User $User -Pass $Pass
} catch {
    Write-Host ("Exception occurred when calling Submit-GroAdminLogin: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **User** | **String**| Username | [optional] 
 **Pass** | **String**| User password | [optional] 

### Return type

[**PostLogin200Response**](PostLogin200Response.md) (PSCustomObject)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Submit-GroAdminRequeue"></a>
# **Submit-GroAdminRequeue**
> void Submit-GroAdminRequeue<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-XCsrfToken] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Queue] <String><br>

Requeue entries from postfix mail queue

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: JWTCookie
$Configuration.ApiKey.grommunioAuthJwt = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.grommunioAuthJwt = "Bearer"

$XCsrfToken = "MyXCsrfToken" # String | CSRF Token (optional)
$Queue = "MyQueue" # String | Comma separated list of postfix queue IDs (optional) (default to "ALL")

# Requeue entries from postfix mail queue
try {
    $Result = Submit-GroAdminRequeue -XCsrfToken $XCsrfToken -Queue $Queue
} catch {
    Write-Host ("Exception occurred when calling Submit-GroAdminRequeue: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **XCsrfToken** | **String**| CSRF Token | [optional] 
 **Queue** | **String**| Comma separated list of postfix queue IDs | [optional] [default to &quot;ALL&quot;]

### Return type

void (empty response body)

### Authorization

[JWTCookie](../README.md#JWTCookie)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Send-GroAdminPasswd"></a>
# **Send-GroAdminPasswd**
> void Send-GroAdminPasswd<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-XCsrfToken] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PutPasswdRequest] <PSCustomObject><br>

Change current users password

### Example
```powershell
$XCsrfToken = "MyXCsrfToken" # String | CSRF Token (optional)
$PutPasswdRequest = Initialize-PutPasswdRequest -New "MyNew" -Old "MyOld" -User "MyUser" # PutPasswdRequest |  (optional)

# Change current users password
try {
    $Result = Send-GroAdminPasswd -XCsrfToken $XCsrfToken -PutPasswdRequest $PutPasswdRequest
} catch {
    Write-Host ("Exception occurred when calling Send-GroAdminPasswd: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **XCsrfToken** | **String**| CSRF Token | [optional] 
 **PutPasswdRequest** | [**PutPasswdRequest**](PutPasswdRequest.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-GroAdminRemoteCLI"></a>
# **Invoke-GroAdminRemoteCLI**
> RemoteCLI200Response Invoke-GroAdminRemoteCLI<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-RemoteCLIRequest] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-XCsrfToken] <String><br>

Remote CLI invocation

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: JWTCookie
$Configuration.ApiKey.grommunioAuthJwt = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.grommunioAuthJwt = "Bearer"

$RemoteCLIRequest = Initialize-RemoteCLIRequest -Command "MyCommand" -Mode "exec" -Color $false -Fs @{ key_example = "MyInner" } # RemoteCLIRequest | 
$XCsrfToken = "MyXCsrfToken" # String | CSRF Token (optional)

# Remote CLI invocation
try {
    $Result = Invoke-GroAdminRemoteCLI -RemoteCLIRequest $RemoteCLIRequest -XCsrfToken $XCsrfToken
} catch {
    Write-Host ("Exception occurred when calling Invoke-GroAdminRemoteCLI: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **RemoteCLIRequest** | [**RemoteCLIRequest**](RemoteCLIRequest.md)|  | 
 **XCsrfToken** | **String**| CSRF Token | [optional] 

### Return type

[**RemoteCLI200Response**](RemoteCLI200Response.md) (PSCustomObject)

### Authorization

[JWTCookie](../README.md#JWTCookie)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Reset-GroAdminPasswd"></a>
# **Reset-GroAdminPasswd**
> void Reset-GroAdminPasswd<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Username] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-XCsrfToken] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ResetPasswdRequest] <PSCustomObject><br>

Change user password

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: JWTCookie
$Configuration.ApiKey.grommunioAuthJwt = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.grommunioAuthJwt = "Bearer"

$Username = "MyUsername" # String | E-mail address of the user
$XCsrfToken = "MyXCsrfToken" # String | CSRF Token (optional)
$ResetPasswdRequest = Initialize-ResetPasswdRequest -New "MyNew" # ResetPasswdRequest |  (optional)

# Change user password
try {
    $Result = Reset-GroAdminPasswd -Username $Username -XCsrfToken $XCsrfToken -ResetPasswdRequest $ResetPasswdRequest
} catch {
    Write-Host ("Exception occurred when calling Reset-GroAdminPasswd: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Username** | **String**| E-mail address of the user | 
 **XCsrfToken** | **String**| CSRF Token | [optional] 
 **ResetPasswdRequest** | [**ResetPasswdRequest**](ResetPasswdRequest.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

[JWTCookie](../README.md#JWTCookie)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Sync-GroAdminTop"></a>
# **Sync-GroAdminTop**
> SyncTop200Response Sync-GroAdminTop<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-FilterUpdated] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-FilterEnded] <System.Nullable[Int32]><br>

Get grommunio-sync usage information

Get current usage. Should be called at least twice to provide useful information.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: JWTCookie
$Configuration.ApiKey.grommunioAuthJwt = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.grommunioAuthJwt = "Bearer"

$FilterUpdated = 56 # Int32 | Maximum number of seconds since the last update (optional)
$FilterEnded = 56 # Int32 | Maximum number of seconds since the process ended (optional)

# Get grommunio-sync usage information
try {
    $Result = Sync-GroAdminTop -FilterUpdated $FilterUpdated -FilterEnded $FilterEnded
} catch {
    Write-Host ("Exception occurred when calling Sync-GroAdminTop: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **FilterUpdated** | **Int32**| Maximum number of seconds since the last update | [optional] 
 **FilterEnded** | **Int32**| Maximum number of seconds since the process ended | [optional] 

### Return type

[**SyncTop200Response**](SyncTop200Response.md) (PSCustomObject)

### Authorization

[JWTCookie](../README.md#JWTCookie)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

