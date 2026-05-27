# GrommunioAdmin.GrommunioAdmin\Api.GroAdminTasQApi

All URIs are relative to */api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Stop-GroAdminTask**](GroAdminTasQApi.md#Stop-GroAdminTask) | **POST** /tasq/tasks/{ID}/cancel | Cancel task in tasq
[**Invoke-GroAdminDeleteTask**](GroAdminTasQApi.md#Invoke-GroAdminDeleteTask) | **DELETE** /tasq/tasks/{ID} | Delete task
[**Get-GroAdminTask**](GroAdminTasQApi.md#Get-GroAdminTask) | **GET** /tasq/tasks/{ID} | Get information about a specific task
[**Get-GroAdminTasks**](GroAdminTasQApi.md#Get-GroAdminTasks) | **GET** /tasq/tasks | Get list of currently running tasks
[**Invoke-GroAdminNotify**](GroAdminTasQApi.md#Invoke-GroAdminNotify) | **POST** /tasq/notify | Notify the TasQ server of externally added tasks
[**Start-GroAdminTaskq**](GroAdminTasQApi.md#Start-GroAdminTaskq) | **POST** /tasq/start | Start the builtin TasQ server
[**Stop-GroAdminTaskq**](GroAdminTasQApi.md#Stop-GroAdminTaskq) | **POST** /tasq/stop | Stop the builtin TasQ server
[**Invoke-GroAdminTaskQStatus**](GroAdminTasQApi.md#Invoke-GroAdminTaskQStatus) | **GET** /tasq/status | Get current status of the TasQ system


<a id="Stop-GroAdminTask"></a>
# **Stop-GroAdminTask**
> void Stop-GroAdminTask<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ID] <Int32><br>

Cancel task in tasq

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: JWTCookie
$Configuration.ApiKey.grommunioAuthJwt = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.grommunioAuthJwt = "Bearer"

$ID = 56 # Int32 | ID of the object

# Cancel task in tasq
try {
    $Result = Stop-GroAdminTask -ID $ID
} catch {
    Write-Host ("Exception occurred when calling Stop-GroAdminTask: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ID** | **Int32**| ID of the object | 

### Return type

void (empty response body)

### Authorization

[JWTCookie](../README.md#JWTCookie)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-GroAdminDeleteTask"></a>
# **Invoke-GroAdminDeleteTask**
> void Invoke-GroAdminDeleteTask<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ID] <Int32><br>

Delete task

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: JWTCookie
$Configuration.ApiKey.grommunioAuthJwt = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.grommunioAuthJwt = "Bearer"

$ID = 56 # Int32 | ID of the object

# Delete task
try {
    $Result = Invoke-GroAdminDeleteTask -ID $ID
} catch {
    Write-Host ("Exception occurred when calling Invoke-GroAdminDeleteTask: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ID** | **Int32**| ID of the object | 

### Return type

void (empty response body)

### Authorization

[JWTCookie](../README.md#JWTCookie)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-GroAdminTask"></a>
# **Get-GroAdminTask**
> TasqTask Get-GroAdminTask<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ID] <Int32><br>

Get information about a specific task

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: JWTCookie
$Configuration.ApiKey.grommunioAuthJwt = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.grommunioAuthJwt = "Bearer"

$ID = 56 # Int32 | ID of the object

# Get information about a specific task
try {
    $Result = Get-GroAdminTask -ID $ID
} catch {
    Write-Host ("Exception occurred when calling Get-GroAdminTask: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ID** | **Int32**| ID of the object | 

### Return type

[**TasqTask**](TasqTask.md) (PSCustomObject)

### Authorization

[JWTCookie](../README.md#JWTCookie)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-GroAdminTasks"></a>
# **Get-GroAdminTasks**
> GetTasks200Response Get-GroAdminTasks<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Sort] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ID] <System.Nullable[Int32][]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Level] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Limit] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Match] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-MatchFields] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Command] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Message] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Updated] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Created] <String><br>

Get list of currently running tasks

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: JWTCookie
$Configuration.ApiKey.grommunioAuthJwt = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.grommunioAuthJwt = "Bearer"

$Sort = "MySort" # String | Sort by attribute. Can be given multiple times. (optional)
$ID = 0 # Int32[] | Filter one or more IDs (optional)
$Level = 56 # Int32 | Set detail level of return value. Usually ranges from 0 to 2. (optional)
$Limit = 56 # Int32 | Maximum number of results to return (optional) (default to 50)
$Match = "MyMatch" # String | Match by substring (optional)
$MatchFields = "MyMatchFields" # String | Comma separated list of attributes to restrict matching to. (optional)
$Command = "MyCommand" # String | Filter by command (optional)
$Message = "MyMessage" # String | Filter by message (optional)
$Updated = "MyUpdated" # String | Filter by last update time (optional)
$Created = "MyCreated" # String | Filter by create date (optional)

# Get list of currently running tasks
try {
    $Result = Get-GroAdminTasks -Sort $Sort -ID $ID -Level $Level -Limit $Limit -Match $Match -MatchFields $MatchFields -Command $Command -Message $Message -Updated $Updated -Created $Created
} catch {
    Write-Host ("Exception occurred when calling Get-GroAdminTasks: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Sort** | **String**| Sort by attribute. Can be given multiple times. | [optional] 
 **ID** | [**Int32[]**](Int32.md)| Filter one or more IDs | [optional] 
 **Level** | **Int32**| Set detail level of return value. Usually ranges from 0 to 2. | [optional] 
 **Limit** | **Int32**| Maximum number of results to return | [optional] [default to 50]
 **Match** | **String**| Match by substring | [optional] 
 **MatchFields** | **String**| Comma separated list of attributes to restrict matching to. | [optional] 
 **Command** | **String**| Filter by command | [optional] 
 **Message** | **String**| Filter by message | [optional] 
 **Updated** | **String**| Filter by last update time | [optional] 
 **Created** | **String**| Filter by create date | [optional] 

### Return type

[**GetTasks200Response**](GetTasks200Response.md) (PSCustomObject)

### Authorization

[JWTCookie](../README.md#JWTCookie)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-GroAdminNotify"></a>
# **Invoke-GroAdminNotify**
> void Invoke-GroAdminNotify<br>

Notify the TasQ server of externally added tasks

Load any waiting tasks from the database

### Example
```powershell

# Notify the TasQ server of externally added tasks
try {
    $Result = Invoke-GroAdminNotify
} catch {
    Write-Host ("Exception occurred when calling Invoke-GroAdminNotify: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Start-GroAdminTaskq"></a>
# **Start-GroAdminTaskq**
> void Start-GroAdminTaskq<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-XCsrfToken] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Procs] <System.Nullable[Int32]><br>

Start the builtin TasQ server

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: JWTCookie
$Configuration.ApiKey.grommunioAuthJwt = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.grommunioAuthJwt = "Bearer"

$XCsrfToken = "MyXCsrfToken" # String | CSRF Token (optional)
$Procs = 56 # Int32 | Override number of worker processes (optional)

# Start the builtin TasQ server
try {
    $Result = Start-GroAdminTaskq -XCsrfToken $XCsrfToken -Procs $Procs
} catch {
    Write-Host ("Exception occurred when calling Start-GroAdminTaskq: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **XCsrfToken** | **String**| CSRF Token | [optional] 
 **Procs** | **Int32**| Override number of worker processes | [optional] 

### Return type

void (empty response body)

### Authorization

[JWTCookie](../README.md#JWTCookie)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Stop-GroAdminTaskq"></a>
# **Stop-GroAdminTaskq**
> void Stop-GroAdminTaskq<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-XCsrfToken] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Timeout] <System.Nullable[Decimal]><br>

Stop the builtin TasQ server

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: JWTCookie
$Configuration.ApiKey.grommunioAuthJwt = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.grommunioAuthJwt = "Bearer"

$XCsrfToken = "MyXCsrfToken" # String | CSRF Token (optional)
$Timeout = 8.14 # Decimal | Duration in seconds to wait for worker processes to quit (optional)

# Stop the builtin TasQ server
try {
    $Result = Stop-GroAdminTaskq -XCsrfToken $XCsrfToken -Timeout $Timeout
} catch {
    Write-Host ("Exception occurred when calling Stop-GroAdminTaskq: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **XCsrfToken** | **String**| CSRF Token | [optional] 
 **Timeout** | **Decimal**| Duration in seconds to wait for worker processes to quit | [optional] 

### Return type

void (empty response body)

### Authorization

[JWTCookie](../README.md#JWTCookie)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-GroAdminTaskQStatus"></a>
# **Invoke-GroAdminTaskQStatus**
> TaskQStatus200Response Invoke-GroAdminTaskQStatus<br>

Get current status of the TasQ system

### Example
```powershell

# Get current status of the TasQ system
try {
    $Result = Invoke-GroAdminTaskQStatus
} catch {
    Write-Host ("Exception occurred when calling Invoke-GroAdminTaskQStatus: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**TaskQStatus200Response**](TaskQStatus200Response.md) (PSCustomObject)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

