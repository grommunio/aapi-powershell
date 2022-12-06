# GrommunioAdmin.GrommunioAdmin/Api.GroAdminSystemAdminDashboardApi

All URIs are relative to */api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Get-GroAdminDashboard**](GroAdminSystemAdminDashboardApi.md#Get-GroAdminDashboard) | **GET** /system/dashboard | getDashboard
[**Get-GroAdminServiceInfo**](GroAdminSystemAdminDashboardApi.md#Get-GroAdminServiceInfo) | **GET** /system/dashboard/services/{unit} | getServiceInfo
[**Get-GroAdminServicesList**](GroAdminSystemAdminDashboardApi.md#Get-GroAdminServicesList) | **GET** /system/dashboard/services | getServicesList
[**Send-GroAdminServiceSignal**](GroAdminSystemAdminDashboardApi.md#Send-GroAdminServiceSignal) | **POST** /system/dashboard/services/{unit}/{action} | sendServiceSignal


<a name="Get-GroAdminDashboard"></a>
# **Get-GroAdminDashboard**
> SystemDashboardResponse Get-GroAdminDashboard<br>

getDashboard

Get System dashboard data

### Example
```powershell

# getDashboard
try {
    $Result = Get-GroAdminDashboard
} catch {
    Write-Host ("Exception occurred when calling Get-GroAdminDashboard: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**SystemDashboardResponse**](SystemDashboardResponse.md) (PSCustomObject)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Get-GroAdminServiceInfo"></a>
# **Get-GroAdminServiceInfo**
> Service Get-GroAdminServiceInfo<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Unit] <String><br>

getServiceInfo

Get information about a specific service

### Example
```powershell
$Unit = "MyUnit" # String | Name of the unit to signal

# getServiceInfo
try {
    $Result = Get-GroAdminServiceInfo -Unit $Unit
} catch {
    Write-Host ("Exception occurred when calling Get-GroAdminServiceInfo: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Unit** | **String**| Name of the unit to signal | 

### Return type

[**Service**](Service.md) (PSCustomObject)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Get-GroAdminServicesList"></a>
# **Get-GroAdminServicesList**
> SystemDashboardServicesResponse Get-GroAdminServicesList<br>

getServicesList

Get list of services

### Example
```powershell

# getServicesList
try {
    $Result = Get-GroAdminServicesList
} catch {
    Write-Host ("Exception occurred when calling Get-GroAdminServicesList: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**SystemDashboardServicesResponse**](SystemDashboardServicesResponse.md) (PSCustomObject)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Send-GroAdminServiceSignal"></a>
# **Send-GroAdminServiceSignal**
> void Send-GroAdminServiceSignal<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Unit] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Action] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-XCsrfToken] <String><br>

sendServiceSignal

Send signal to a service

### Example
```powershell
$Unit = "MyUnit" # String | Name of the unit to signal
$Action = Initialize-Action # Action | Signal to send
$XCsrfToken = "MyXCsrfToken" # String | CSRF Token (optional)

# sendServiceSignal
try {
    $Result = Send-GroAdminServiceSignal -Unit $Unit -Action $Action -XCsrfToken $XCsrfToken
} catch {
    Write-Host ("Exception occurred when calling Send-GroAdminServiceSignal: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Unit** | **String**| Name of the unit to signal | 
 **Action** | [**Action**](Action.md)| Signal to send | 
 **XCsrfToken** | **String**| CSRF Token | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

