# GrommunioAdmin.GrommunioAdmin/Api.GroAdminSystemAdminLogsApi

All URIs are relative to */api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Get-GroAdminLog**](GroAdminSystemAdminLogsApi.md#Get-GroAdminLog) | **GET** /system/logs/{file} | getLog
[**Get-GroAdminLogs**](GroAdminSystemAdminLogsApi.md#Get-GroAdminLogs) | **GET** /system/logs | getLogs


<a name="Get-GroAdminLog"></a>
# **Get-GroAdminLog**
> SystemLogsResponse1 Get-GroAdminLog<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-File] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-N] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Skip] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-After] <String><br>

getLog

Returns the n last lines of the log file, similar to the `tail` command line tool

### Example
```powershell
$File = "MyFile" # String | Name of the log file
$N = 56 # Int32 | Number of lines to return (optional) (default to 10)
$Skip = 56 # Int32 | Number of lines to skip (optional) (default to 0)
$After = "MyAfter" # String | Return all lines after given time. Overrides `n` and `skip`. (optional)

# getLog
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

[**SystemLogsResponse1**](SystemLogsResponse1.md) (PSCustomObject)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Get-GroAdminLogs"></a>
# **Get-GroAdminLogs**
> SystemLogsResponse Get-GroAdminLogs<br>

getLogs

Get available log files

### Example
```powershell

# getLogs
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

[**SystemLogsResponse**](SystemLogsResponse.md) (PSCustomObject)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

