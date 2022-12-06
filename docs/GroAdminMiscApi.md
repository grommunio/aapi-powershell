# GrommunioAdmin.GrommunioAdmin/Api.GroAdminMiscApi

All URIs are relative to */api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Invoke-GroAdminCheckFormat**](GroAdminMiscApi.md#Invoke-GroAdminCheckFormat) | **GET** /chkFormat | checkFormat
[**Invoke-GroAdminDeleteMailq**](GroAdminMiscApi.md#Invoke-GroAdminDeleteMailq) | **POST** /system/mailq/delete | deleteMailq
[**Clear-GroAdminMailq**](GroAdminMiscApi.md#Clear-GroAdminMailq) | **POST** /system/mailq/flush | flushMailq
[**Get-GroAdminAbout**](GroAdminMiscApi.md#Get-GroAdminAbout) | **GET** /about | getAbout
[**Get-GroAdminMailq**](GroAdminMiscApi.md#Get-GroAdminMailq) | **GET** /system/mailq | getMailq
[**Get-GroAdminProfile**](GroAdminMiscApi.md#Get-GroAdminProfile) | **GET** /profile | getProfile
[**Get-GroAdminStatus**](GroAdminMiscApi.md#Get-GroAdminStatus) | **GET** /status | getStatus
[**Get-GroAdminUserDomains**](GroAdminMiscApi.md#Get-GroAdminUserDomains) | **GET** /domains | getUserDomains
[**Submit-GroAdminLogin**](GroAdminMiscApi.md#Submit-GroAdminLogin) | **POST** /login | postLogin
[**Submit-GroAdminRequeue**](GroAdminMiscApi.md#Submit-GroAdminRequeue) | **POST** /system/mailq/requeue | postRequeue
[**Send-GroAdminPasswd**](GroAdminMiscApi.md#Send-GroAdminPasswd) | **PUT** /passwd | putPasswd
[**Invoke-GroAdminRemoteCLI**](GroAdminMiscApi.md#Invoke-GroAdminRemoteCLI) | **POST** /system/cli | remoteCLI
[**Sync-GroAdminTop**](GroAdminMiscApi.md#Sync-GroAdminTop) | **GET** /system/sync/top | syncTop


<a name="Invoke-GroAdminCheckFormat"></a>
# **Invoke-GroAdminCheckFormat**
> ChkFormatResponse Invoke-GroAdminCheckFormat<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Domain] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Email] <String><br>

checkFormat

Check format of input

### Example
```powershell
$Domain = "MyDomain" # String | Check format of domain name (optional)
$Email = "MyEmail" # String | Check format of e-mail address (optional)

# checkFormat
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

[**ChkFormatResponse**](ChkFormatResponse.md) (PSCustomObject)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-GroAdminDeleteMailq"></a>
# **Invoke-GroAdminDeleteMailq**
> void Invoke-GroAdminDeleteMailq<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-XCsrfToken] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Queue] <String><br>

deleteMailq

Delete entries from postfix mail queue

### Example
```powershell
$XCsrfToken = "MyXCsrfToken" # String | CSRF Token (optional)
$Queue = "MyQueue" # String | Comma separated list of postfix queue IDs (optional) (default to "ALL")

# deleteMailq
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

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Clear-GroAdminMailq"></a>
# **Clear-GroAdminMailq**
> void Clear-GroAdminMailq<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Queue] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-XCsrfToken] <String><br>

flushMailq

Flush postfix mail queue

### Example
```powershell
$Queue = "MyQueue" # String | Postfix queue ID
$XCsrfToken = "MyXCsrfToken" # String | CSRF Token (optional)

# flushMailq
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

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Get-GroAdminAbout"></a>
# **Get-GroAdminAbout**
> AboutResponse Get-GroAdminAbout<br>

getAbout

Get general information about the backend

### Example
```powershell

# getAbout
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

[**AboutResponse**](AboutResponse.md) (PSCustomObject)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Get-GroAdminMailq"></a>
# **Get-GroAdminMailq**
> SystemMailqResponse Get-GroAdminMailq<br>

getMailq

Retrieve mailq output

### Example
```powershell

# getMailq
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

[**SystemMailqResponse**](SystemMailqResponse.md) (PSCustomObject)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Get-GroAdminProfile"></a>
# **Get-GroAdminProfile**
> ProfileResponse Get-GroAdminProfile<br>

getProfile

Get information about currently logged in user

### Example
```powershell

# getProfile
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

[**ProfileResponse**](ProfileResponse.md) (PSCustomObject)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Get-GroAdminStatus"></a>
# **Get-GroAdminStatus**
> StatusResponse Get-GroAdminStatus<br>

getStatus

Check API connectivity and status

### Example
```powershell

# getStatus
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

[**StatusResponse**](StatusResponse.md) (PSCustomObject)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Get-GroAdminUserDomains"></a>
# **Get-GroAdminUserDomains**
> DomainsResponse Get-GroAdminUserDomains<br>

getUserDomains

Get list of domains the user has access to

### Example
```powershell

# getUserDomains
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

[**DomainsResponse**](DomainsResponse.md) (PSCustomObject)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Submit-GroAdminLogin"></a>
# **Submit-GroAdminLogin**
> LoginResponse Submit-GroAdminLogin<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ContentType] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-User] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Pass] <String><br>

postLogin

Login user

### Example
```powershell
$ContentType = "application/x-www-form-urlencoded" # String | 
$User = "MyUser" # String | Username (optional)
$Pass = "MyPass" # String | User password (optional)

# postLogin
try {
    $Result = Submit-GroAdminLogin -ContentType $ContentType -User $User -Pass $Pass
} catch {
    Write-Host ("Exception occurred when calling Submit-GroAdminLogin: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ContentType** | **String**|  | 
 **User** | **String**| Username | [optional] 
 **Pass** | **String**| User password | [optional] 

### Return type

[**LoginResponse**](LoginResponse.md) (PSCustomObject)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Submit-GroAdminRequeue"></a>
# **Submit-GroAdminRequeue**
> void Submit-GroAdminRequeue<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-XCsrfToken] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Queue] <String><br>

postRequeue

Requeue entries from postfix mail queue

### Example
```powershell
$XCsrfToken = "MyXCsrfToken" # String | CSRF Token (optional)
$Queue = "MyQueue" # String | Comma separated list of postfix queue IDs (optional) (default to "ALL")

# postRequeue
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

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Send-GroAdminPasswd"></a>
# **Send-GroAdminPasswd**
> void Send-GroAdminPasswd<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-XCsrfToken] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PutPasswdRequest] <PSCustomObject><br>

putPasswd

Change current users password

### Example
```powershell
$XCsrfToken = "MyXCsrfToken" # String | CSRF Token (optional)
$PutPasswdRequest = Initialize-PutPasswdRequest -New "MyNew" -Old "MyOld" -User "MyUser" # PutPasswdRequest |  (optional)

# putPasswd
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

<a name="Invoke-GroAdminRemoteCLI"></a>
# **Invoke-GroAdminRemoteCLI**
> SystemCliResponse Invoke-GroAdminRemoteCLI<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-RemoteCLIRequest] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-XCsrfToken] <String><br>

remoteCLI

Remote CLI invocation

### Example
```powershell
$Mode = Initialize-Mode 
$RemoteCLIRequest = Initialize-RemoteCLIRequest -Command "MyCommand" -Mode $Mode -Color $false -Fs @{ key_example = "MyInner" } # RemoteCLIRequest | 
$XCsrfToken = "MyXCsrfToken" # String | CSRF Token (optional)

# remoteCLI
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

[**SystemCliResponse**](SystemCliResponse.md) (PSCustomObject)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Sync-GroAdminTop"></a>
# **Sync-GroAdminTop**
> SystemSyncTopResponse Sync-GroAdminTop<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-FilterUpdated] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-FilterEnded] <System.Nullable[Int32]><br>

syncTop

Get current usage. Should be called at least twice to provide useful information.

### Example
```powershell
$FilterUpdated = 56 # Int32 | Maximum number of seconds since the last update (optional)
$FilterEnded = 56 # Int32 | Maximum number of seconds since the process ended (optional)

# syncTop
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

[**SystemSyncTopResponse**](SystemSyncTopResponse.md) (PSCustomObject)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

