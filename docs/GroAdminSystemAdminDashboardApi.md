# GrommunioAdmin.GrommunioAdmin\Api.GroAdminSystemAdminDashboardApi

All URIs are relative to */api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Get-GroAdminDashboard**](GroAdminSystemAdminDashboardApi.md#Get-GroAdminDashboard) | **GET** /system/dashboard | Get System dashboard data
[**Get-GroAdminServiceInfo**](GroAdminSystemAdminDashboardApi.md#Get-GroAdminServiceInfo) | **GET** /system/dashboard/services/{unit} | Get information about a specific service
[**Get-GroAdminServicesList**](GroAdminSystemAdminDashboardApi.md#Get-GroAdminServicesList) | **GET** /system/dashboard/services | Get list of services
[**Send-GroAdminServiceSignal**](GroAdminSystemAdminDashboardApi.md#Send-GroAdminServiceSignal) | **POST** /system/dashboard/services/{unit}/{action} | Send signal to a service


<a id="Get-GroAdminDashboard"></a>
# **Get-GroAdminDashboard**
> GetDashboard200Response Get-GroAdminDashboard<br>

Get System dashboard data

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: JWTCookie
$Configuration.ApiKey.grommunioAuthJwt = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.grommunioAuthJwt = "Bearer"


# Get System dashboard data
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

[**GetDashboard200Response**](GetDashboard200Response.md) (PSCustomObject)

### Authorization

[JWTCookie](../README.md#JWTCookie)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-GroAdminServiceInfo"></a>
# **Get-GroAdminServiceInfo**
> Service Get-GroAdminServiceInfo<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Unit] <String><br>

Get information about a specific service

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: JWTCookie
$Configuration.ApiKey.grommunioAuthJwt = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.grommunioAuthJwt = "Bearer"

$Unit = "MyUnit" # String | Name of the unit to signal

# Get information about a specific service
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

[JWTCookie](../README.md#JWTCookie)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-GroAdminServicesList"></a>
# **Get-GroAdminServicesList**
> GetServicesList200Response Get-GroAdminServicesList<br>

Get list of services

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: JWTCookie
$Configuration.ApiKey.grommunioAuthJwt = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.grommunioAuthJwt = "Bearer"


# Get list of services
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

[**GetServicesList200Response**](GetServicesList200Response.md) (PSCustomObject)

### Authorization

[JWTCookie](../README.md#JWTCookie)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Send-GroAdminServiceSignal"></a>
# **Send-GroAdminServiceSignal**
> void Send-GroAdminServiceSignal<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Unit] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Action] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-XCsrfToken] <String><br>

Send signal to a service

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: JWTCookie
$Configuration.ApiKey.grommunioAuthJwt = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.grommunioAuthJwt = "Bearer"

$Unit = "MyUnit" # String | Name of the unit to signal
$Action = "start" # String | Signal to send
$XCsrfToken = "MyXCsrfToken" # String | CSRF Token (optional)

# Send signal to a service
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
 **Action** | **String**| Signal to send | 
 **XCsrfToken** | **String**| CSRF Token | [optional] 

### Return type

void (empty response body)

### Authorization

[JWTCookie](../README.md#JWTCookie)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

