# GrommunioAdmin.GrommunioAdmin\Api.GroAdminServiceApi

All URIs are relative to */api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Get-GroAdminUserDeviceLastConnect**](GroAdminServiceApi.md#Get-GroAdminUserDeviceLastConnect) | **GET** /service/lastconnect/{username} | Get device last connect time for user
[**Get-GroAdminUserDeviceWipeStatus**](GroAdminServiceApi.md#Get-GroAdminUserDeviceWipeStatus) | **GET** /service/wipe/{username} | Get device wipe status for user
[**Get-GroAdminUserInformation**](GroAdminServiceApi.md#Get-GroAdminUserInformation) | **GET** /service/userinfo/{username} | Get basic user information
[**Get-GroAdminUserSyncPolicy**](GroAdminServiceApi.md#Get-GroAdminUserSyncPolicy) | **GET** /service/syncPolicy/{username} | Get sync policy for specific user
[**Send-GroAdminPasswd**](GroAdminServiceApi.md#Send-GroAdminPasswd) | **PUT** /passwd | Change current users password
[**Set-GroAdminUserDeviceWipeStatus**](GroAdminServiceApi.md#Set-GroAdminUserDeviceWipeStatus) | **POST** /service/wipe/{username} | Set device wipe status for user


<a id="Get-GroAdminUserDeviceLastConnect"></a>
# **Get-GroAdminUserDeviceLastConnect**
> GetUserDeviceWipeStatus200Response Get-GroAdminUserDeviceLastConnect<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Username] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Devices] <String[]><br>

Get device last connect time for user

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: JWTCookie
$Configuration.ApiKey.grommunioAuthJwt = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.grommunioAuthJwt = "Bearer"

$Username = "MyUsername" # String | E-mail address of the user
$Devices = "MyDevices" # String[] | Restrict request to these device IDs (optional)

# Get device last connect time for user
try {
    $Result = Get-GroAdminUserDeviceLastConnect -Username $Username -Devices $Devices
} catch {
    Write-Host ("Exception occurred when calling Get-GroAdminUserDeviceLastConnect: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Username** | **String**| E-mail address of the user | 
 **Devices** | [**String[]**](String.md)| Restrict request to these device IDs | [optional] 

### Return type

[**GetUserDeviceWipeStatus200Response**](GetUserDeviceWipeStatus200Response.md) (PSCustomObject)

### Authorization

[JWTCookie](../README.md#JWTCookie)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-GroAdminUserDeviceWipeStatus"></a>
# **Get-GroAdminUserDeviceWipeStatus**
> GetUserDeviceWipeStatus200Response Get-GroAdminUserDeviceWipeStatus<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Username] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Devices] <String[]><br>

Get device wipe status for user

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: JWTCookie
$Configuration.ApiKey.grommunioAuthJwt = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.grommunioAuthJwt = "Bearer"

$Username = "MyUsername" # String | E-mail address of the user
$Devices = "MyDevices" # String[] | Restrict request to these device IDs (optional)

# Get device wipe status for user
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

[**GetUserDeviceWipeStatus200Response**](GetUserDeviceWipeStatus200Response.md) (PSCustomObject)

### Authorization

[JWTCookie](../README.md#JWTCookie)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-GroAdminUserInformation"></a>
# **Get-GroAdminUserInformation**
> GetUserInformation200Response Get-GroAdminUserInformation<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Username] <String><br>

Get basic user information

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: JWTCookie
$Configuration.ApiKey.grommunioAuthJwt = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.grommunioAuthJwt = "Bearer"

$Username = "MyUsername" # String | E-mail address of the user

# Get basic user information
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

[**GetUserInformation200Response**](GetUserInformation200Response.md) (PSCustomObject)

### Authorization

[JWTCookie](../README.md#JWTCookie)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-GroAdminUserSyncPolicy"></a>
# **Get-GroAdminUserSyncPolicy**
> GetUserSyncPolicy200Response Get-GroAdminUserSyncPolicy<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Username] <String><br>

Get sync policy for specific user

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: JWTCookie
$Configuration.ApiKey.grommunioAuthJwt = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.grommunioAuthJwt = "Bearer"

$Username = "MyUsername" # String | E-mail address of the user

# Get sync policy for specific user
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

[**GetUserSyncPolicy200Response**](GetUserSyncPolicy200Response.md) (PSCustomObject)

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

<a id="Set-GroAdminUserDeviceWipeStatus"></a>
# **Set-GroAdminUserDeviceWipeStatus**
> void Set-GroAdminUserDeviceWipeStatus<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Username] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SetUserDeviceWipeStatusRequest] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-XCsrfToken] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Devices] <String[]><br>

Set device wipe status for user

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: JWTCookie
$Configuration.ApiKey.grommunioAuthJwt = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.grommunioAuthJwt = "Bearer"

$Username = "MyUsername" # String | E-mail address of the user
$SetUserDeviceWipeStatusRequest = Initialize-SetUserDeviceWipeStatusRequest -Password "MyPassword" -RemoteIP "MyRemoteIP" -Status "0" -Time 0 # SetUserDeviceWipeStatusRequest | 
$XCsrfToken = "MyXCsrfToken" # String | CSRF Token (optional)
$Devices = "MyDevices" # String[] | Restrict request to these device IDs (optional)

# Set device wipe status for user
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

[JWTCookie](../README.md#JWTCookie)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

