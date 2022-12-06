# GrommunioAdmin.GrommunioAdmin/Api.GroAdminTasQApi

All URIs are relative to */api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Get-GroAdminTask**](GroAdminTasQApi.md#Get-GroAdminTask) | **GET** /tasq/tasks/{ID} | getTask
[**Get-GroAdminTasks**](GroAdminTasQApi.md#Get-GroAdminTasks) | **GET** /tasq/tasks | getTasks
[**Invoke-GroAdminNotify**](GroAdminTasQApi.md#Invoke-GroAdminNotify) | **POST** /tasq/notify | notify
[**Start-GroAdminTaskq**](GroAdminTasQApi.md#Start-GroAdminTaskq) | **POST** /tasq/start | startTaskq
[**Stop-GroAdminTaskq**](GroAdminTasQApi.md#Stop-GroAdminTaskq) | **POST** /tasq/stop | stopTaskq
[**Invoke-GroAdminTaskQStatus**](GroAdminTasQApi.md#Invoke-GroAdminTaskQStatus) | **GET** /tasq/status | taskQStatus


<a name="Get-GroAdminTask"></a>
# **Get-GroAdminTask**
> TasqTask Get-GroAdminTask<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ID] <Int32><br>

getTask

Get information about a specific task

### Example
```powershell
$ID = 56 # Int32 | ID of the object

# getTask
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

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Get-GroAdminTasks"></a>
# **Get-GroAdminTasks**
> TasqTasksResponse Get-GroAdminTasks<br>
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

getTasks

Get list of currently running tasks

### Example
```powershell
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

# getTasks
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

[**TasqTasksResponse**](TasqTasksResponse.md) (PSCustomObject)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-GroAdminNotify"></a>
# **Invoke-GroAdminNotify**
> void Invoke-GroAdminNotify<br>

notify

Load any waiting tasks from the database

### Example
```powershell

# notify
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

<a name="Start-GroAdminTaskq"></a>
# **Start-GroAdminTaskq**
> void Start-GroAdminTaskq<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-XCsrfToken] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Procs] <System.Nullable[Int32]><br>

startTaskq

Start the builtin TasQ server

### Example
```powershell
$XCsrfToken = "MyXCsrfToken" # String | CSRF Token (optional)
$Procs = 56 # Int32 | Override number of worker processes (optional)

# startTaskq
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

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Stop-GroAdminTaskq"></a>
# **Stop-GroAdminTaskq**
> void Stop-GroAdminTaskq<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-XCsrfToken] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Timeout] <System.Nullable[Double]><br>

stopTaskq

Stop the builtin TasQ server

### Example
```powershell
$XCsrfToken = "MyXCsrfToken" # String | CSRF Token (optional)
$Timeout = 1.2 # Double | Duration in seconds to wait for worker processes to quit (optional)

# stopTaskq
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
 **Timeout** | **Double**| Duration in seconds to wait for worker processes to quit | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-GroAdminTaskQStatus"></a>
# **Invoke-GroAdminTaskQStatus**
> TasqStatusResponse Invoke-GroAdminTaskQStatus<br>

taskQStatus

Get current status of the TasQ system

### Example
```powershell

# taskQStatus
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

[**TasqStatusResponse**](TasqStatusResponse.md) (PSCustomObject)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

