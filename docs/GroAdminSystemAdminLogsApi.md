# GrommunioAdmin.GrommunioAdmin\Api.GroAdminSystemAdminLogsApi

All URIs are relative to */api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Get-GroAdminLog**](GroAdminSystemAdminLogsApi.md#Get-GroAdminLog) | **GET** /system/logs/{file} | Get log file content
[**Get-GroAdminLogs**](GroAdminSystemAdminLogsApi.md#Get-GroAdminLogs) | **GET** /system/logs | Get available log files
[**Get-GroAdminUpdateLog**](GroAdminSystemAdminLogsApi.md#Get-GroAdminUpdateLog) | **GET** /system/updateLog/{pid} | Get update log file


<a id="Get-GroAdminLog"></a>
# **Get-GroAdminLog**
> GetLog200Response Get-GroAdminLog<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-File] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-N] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Skip] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-After] <String><br>

Get log file content

Returns the n last lines of the log file, similar to the `tail` command line tool

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: JWTCookie
$Configuration.ApiKey.grommunioAuthJwt = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.grommunioAuthJwt = "Bearer"

$File = "MyFile" # String | Name of the log file
$N = 56 # Int32 | Number of lines to return (optional) (default to 10)
$Skip = 56 # Int32 | Number of lines to skip (optional) (default to 0)
$After = "MyAfter" # String | Return all lines after given time. Overrides `n` and `skip`. (optional)

# Get log file content
try {
    $Result = Get-GroAdminLog -File $File -N $N -Skip $Skip -After $After
} catch {
    Write-Host ("Exception occurred when calling Get-GroAdminLog: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **File** | **String**| Name of the log file | 
 **N** | **Int32**| Number of lines to return | [optional] [default to 10]
 **Skip** | **Int32**| Number of lines to skip | [optional] [default to 0]
 **After** | **String**| Return all lines after given time. Overrides &#x60;n&#x60; and &#x60;skip&#x60;. | [optional] 

### Return type

[**GetLog200Response**](GetLog200Response.md) (PSCustomObject)

### Authorization

[JWTCookie](../README.md#JWTCookie)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-GroAdminLogs"></a>
# **Get-GroAdminLogs**
> GetServicesListDBConf200Response Get-GroAdminLogs<br>

Get available log files

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: JWTCookie
$Configuration.ApiKey.grommunioAuthJwt = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.grommunioAuthJwt = "Bearer"


# Get available log files
try {
    $Result = Get-GroAdminLogs
} catch {
    Write-Host ("Exception occurred when calling Get-GroAdminLogs: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**GetServicesListDBConf200Response**](GetServicesListDBConf200Response.md) (PSCustomObject)

### Authorization

[JWTCookie](../README.md#JWTCookie)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-GroAdminUpdateLog"></a>
# **Get-GroAdminUpdateLog**
> GetUpdateLog200Response Get-GroAdminUpdateLog<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Pid] <Int32><br>

Get update log file

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: JWTCookie
$Configuration.ApiKey.grommunioAuthJwt = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.grommunioAuthJwt = "Bearer"

$Pid = 56 # Int32 | Process ID of the updater, which fills the log file

# Get update log file
try {
    $Result = Get-GroAdminUpdateLog -Pid $Pid
} catch {
    Write-Host ("Exception occurred when calling Get-GroAdminUpdateLog: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Pid** | **Int32**| Process ID of the updater, which fills the log file | 

### Return type

[**GetUpdateLog200Response**](GetUpdateLog200Response.md) (PSCustomObject)

### Authorization

[JWTCookie](../README.md#JWTCookie)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

