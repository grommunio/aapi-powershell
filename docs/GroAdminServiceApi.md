# GrommunioAdmin.GrommunioAdmin/Api.GroAdminServiceApi

All URIs are relative to */api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Get-GroAdminUserDeviceWipeStatus**](GroAdminServiceApi.md#Get-GroAdminUserDeviceWipeStatus) | **GET** /service/wipe/{username} | getUserDeviceWipeStatus
[**Get-GroAdminUserInformation**](GroAdminServiceApi.md#Get-GroAdminUserInformation) | **GET** /service/userinfo/{username} | getUserInformation
[**Get-GroAdminUserSyncPolicy**](GroAdminServiceApi.md#Get-GroAdminUserSyncPolicy) | **GET** /service/syncPolicy/{username} | getUserSyncPolicy
[**Send-GroAdminPasswd**](GroAdminServiceApi.md#Send-GroAdminPasswd) | **PUT** /passwd | putPasswd
[**Set-GroAdminUserDeviceWipeStatus**](GroAdminServiceApi.md#Set-GroAdminUserDeviceWipeStatus) | **POST** /service/wipe/{username} | setUserDeviceWipeStatus


<a name="Get-GroAdminUserDeviceWipeStatus"></a>
# **Get-GroAdminUserDeviceWipeStatus**
> ServiceWipeResponse Get-GroAdminUserDeviceWipeStatus<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Username] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Devices] <String[]><br>

getUserDeviceWipeStatus

Get device wipe status for user

### Example
```powershell
$Username = "MyUsername" # String | E-mail address of the user
$Devices = "MyDevices" # String[] | Restrict request to these device IDs (optional)

# getUserDeviceWipeStatus
try {
    $Result = Get-GroAdminUserDeviceWipeStatus -Username $Username -Devices $Devices
} catch {
    Write-Host ("Exception occurred when calling Get-GroAdminUserDeviceWipeStatus: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Username** | **String**| E-mail address of the user | 
 **Devices** | [**String[]**](String.md)| Restrict request to these device IDs | [optional] 

### Return type

[**ServiceWipeResponse**](ServiceWipeResponse.md) (PSCustomObject)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Get-GroAdminUserInformation"></a>
# **Get-GroAdminUserInformation**
> ServiceUserinfoResponse Get-GroAdminUserInformation<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Username] <String><br>

getUserInformation

Get basic user information

### Example
```powershell
$Username = "MyUsername" # String | E-mail address of the user

# getUserInformation
try {
    $Result = Get-GroAdminUserInformation -Username $Username
} catch {
    Write-Host ("Exception occurred when calling Get-GroAdminUserInformation: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Username** | **String**| E-mail address of the user | 

### Return type

[**ServiceUserinfoResponse**](ServiceUserinfoResponse.md) (PSCustomObject)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Get-GroAdminUserSyncPolicy"></a>
# **Get-GroAdminUserSyncPolicy**
> ServiceSyncPolicyResponse Get-GroAdminUserSyncPolicy<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Username] <String><br>

getUserSyncPolicy

Get sync policy for specific user

### Example
```powershell
$Username = "MyUsername" # String | E-mail address of the user

# getUserSyncPolicy
try {
    $Result = Get-GroAdminUserSyncPolicy -Username $Username
} catch {
    Write-Host ("Exception occurred when calling Get-GroAdminUserSyncPolicy: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Username** | **String**| E-mail address of the user | 

### Return type

[**ServiceSyncPolicyResponse**](ServiceSyncPolicyResponse.md) (PSCustomObject)

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

<a name="Set-GroAdminUserDeviceWipeStatus"></a>
# **Set-GroAdminUserDeviceWipeStatus**
> void Set-GroAdminUserDeviceWipeStatus<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Username] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SetUserDeviceWipeStatusRequest] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-XCsrfToken] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Devices] <String[]><br>

setUserDeviceWipeStatus

Set device wipe status for user

### Example
```powershell
$Username = "MyUsername" # String | E-mail address of the user
$Status = Initialize-Status 
$SetUserDeviceWipeStatusRequest = Initialize-SetUserDeviceWipeStatusRequest -Password "MyPassword" -RemoteIP "MyRemoteIP" -Status $Status -Time 0 # SetUserDeviceWipeStatusRequest | 
$XCsrfToken = "MyXCsrfToken" # String | CSRF Token (optional)
$Devices = "MyDevices" # String[] | Restrict request to these device IDs (optional)

# setUserDeviceWipeStatus
try {
    $Result = Set-GroAdminUserDeviceWipeStatus -Username $Username -SetUserDeviceWipeStatusRequest $SetUserDeviceWipeStatusRequest -XCsrfToken $XCsrfToken -Devices $Devices
} catch {
    Write-Host ("Exception occurred when calling Set-GroAdminUserDeviceWipeStatus: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Username** | **String**| E-mail address of the user | 
 **SetUserDeviceWipeStatusRequest** | [**SetUserDeviceWipeStatusRequest**](SetUserDeviceWipeStatusRequest.md)|  | 
 **XCsrfToken** | **String**| CSRF Token | [optional] 
 **Devices** | [**String[]**](String.md)| Restrict request to these device IDs | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

