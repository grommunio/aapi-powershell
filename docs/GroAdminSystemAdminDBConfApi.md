# GrommunioAdmin.GrommunioAdmin\Api.GroAdminSystemAdminDBConfApi

All URIs are relative to */api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Invoke-GroAdminDeleteConfigFile**](GroAdminSystemAdminDBConfApi.md#Invoke-GroAdminDeleteConfigFile) | **DELETE** /system/dbconf/{service}/{file}/ | Delete configuration file
[**Invoke-GroAdminDeleteServiceConfig**](GroAdminSystemAdminDBConfApi.md#Invoke-GroAdminDeleteServiceConfig) | **DELETE** /system/dbconf/{service}/ | Delete service configurations
[**Get-GroAdminCommandList**](GroAdminSystemAdminDBConfApi.md#Get-GroAdminCommandList) | **GET** /system/dbconf/commands | Get lists of allowed commit commands
[**Get-GroAdminConfigFile**](GroAdminSystemAdminDBConfApi.md#Get-GroAdminConfigFile) | **GET** /system/dbconf/{service}/{file}/ | Get configuration file
[**Get-GroAdminServiceFiles**](GroAdminSystemAdminDBConfApi.md#Get-GroAdminServiceFiles) | **GET** /system/dbconf/{service}/ | Get list of configuration files for service
[**Get-GroAdminServicesListDBConf**](GroAdminSystemAdminDBConfApi.md#Get-GroAdminServicesListDBConf) | **GET** /system/dbconf/ | Get list of services
[**Invoke-GroAdminPatchConfigFile**](GroAdminSystemAdminDBConfApi.md#Invoke-GroAdminPatchConfigFile) | **PATCH** /system/dbconf/{service}/{file}/ | Update or rename configuration file
[**Invoke-GroAdminPatchServiceFiles**](GroAdminSystemAdminDBConfApi.md#Invoke-GroAdminPatchServiceFiles) | **PATCH** /system/dbconf/{service}/ | Rename or merge service
[**Send-GroAdminConfigFile**](GroAdminSystemAdminDBConfApi.md#Send-GroAdminConfigFile) | **PUT** /system/dbconf/{service}/{file}/ | Upload configuration file. If the file exists it is overwritten


<a id="Invoke-GroAdminDeleteConfigFile"></a>
# **Invoke-GroAdminDeleteConfigFile**
> void Invoke-GroAdminDeleteConfigFile<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Service] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-File] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-XCsrfToken] <String><br>

Delete configuration file

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: JWTCookie
$Configuration.ApiKey.grommunioAuthJwt = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.grommunioAuthJwt = "Bearer"

$Service = "MyService" # String | Name of the service to configure
$File = "MyFile" # String | Name of the configuration file
$XCsrfToken = "MyXCsrfToken" # String | CSRF Token (optional)

# Delete configuration file
try {
    $Result = Invoke-GroAdminDeleteConfigFile -Service $Service -File $File -XCsrfToken $XCsrfToken
} catch {
    Write-Host ("Exception occurred when calling Invoke-GroAdminDeleteConfigFile: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Service** | **String**| Name of the service to configure | 
 **File** | **String**| Name of the configuration file | 
 **XCsrfToken** | **String**| CSRF Token | [optional] 

### Return type

void (empty response body)

### Authorization

[JWTCookie](../README.md#JWTCookie)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-GroAdminDeleteServiceConfig"></a>
# **Invoke-GroAdminDeleteServiceConfig**
> void Invoke-GroAdminDeleteServiceConfig<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Service] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-XCsrfToken] <String><br>

Delete service configurations

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: JWTCookie
$Configuration.ApiKey.grommunioAuthJwt = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.grommunioAuthJwt = "Bearer"

$Service = "MyService" # String | Name of the service to configure
$XCsrfToken = "MyXCsrfToken" # String | CSRF Token (optional)

# Delete service configurations
try {
    $Result = Invoke-GroAdminDeleteServiceConfig -Service $Service -XCsrfToken $XCsrfToken
} catch {
    Write-Host ("Exception occurred when calling Invoke-GroAdminDeleteServiceConfig: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Service** | **String**| Name of the service to configure | 
 **XCsrfToken** | **String**| CSRF Token | [optional] 

### Return type

void (empty response body)

### Authorization

[JWTCookie](../README.md#JWTCookie)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-GroAdminCommandList"></a>
# **Get-GroAdminCommandList**
> GetCommandList200Response Get-GroAdminCommandList<br>

Get lists of allowed commit commands

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: JWTCookie
$Configuration.ApiKey.grommunioAuthJwt = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.grommunioAuthJwt = "Bearer"


# Get lists of allowed commit commands
try {
    $Result = Get-GroAdminCommandList
} catch {
    Write-Host ("Exception occurred when calling Get-GroAdminCommandList: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**GetCommandList200Response**](GetCommandList200Response.md) (PSCustomObject)

### Authorization

[JWTCookie](../README.md#JWTCookie)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-GroAdminConfigFile"></a>
# **Get-GroAdminConfigFile**
> GetConfigFile200Response Get-GroAdminConfigFile<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Service] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-File] <String><br>

Get configuration file

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: JWTCookie
$Configuration.ApiKey.grommunioAuthJwt = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.grommunioAuthJwt = "Bearer"

$Service = "MyService" # String | Name of the service to configure
$File = "MyFile" # String | Name of the configuration file

# Get configuration file
try {
    $Result = Get-GroAdminConfigFile -Service $Service -File $File
} catch {
    Write-Host ("Exception occurred when calling Get-GroAdminConfigFile: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Service** | **String**| Name of the service to configure | 
 **File** | **String**| Name of the configuration file | 

### Return type

[**GetConfigFile200Response**](GetConfigFile200Response.md) (PSCustomObject)

### Authorization

[JWTCookie](../README.md#JWTCookie)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-GroAdminServiceFiles"></a>
# **Get-GroAdminServiceFiles**
> GetServicesListDBConf200Response Get-GroAdminServiceFiles<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Service] <String><br>

Get list of configuration files for service

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: JWTCookie
$Configuration.ApiKey.grommunioAuthJwt = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.grommunioAuthJwt = "Bearer"

$Service = "MyService" # String | Name of the service to configure

# Get list of configuration files for service
try {
    $Result = Get-GroAdminServiceFiles -Service $Service
} catch {
    Write-Host ("Exception occurred when calling Get-GroAdminServiceFiles: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Service** | **String**| Name of the service to configure | 

### Return type

[**GetServicesListDBConf200Response**](GetServicesListDBConf200Response.md) (PSCustomObject)

### Authorization

[JWTCookie](../README.md#JWTCookie)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-GroAdminServicesListDBConf"></a>
# **Get-GroAdminServicesListDBConf**
> GetServicesListDBConf200Response Get-GroAdminServicesListDBConf<br>

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
    $Result = Get-GroAdminServicesListDBConf
} catch {
    Write-Host ("Exception occurred when calling Get-GroAdminServicesListDBConf: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a id="Invoke-GroAdminPatchConfigFile"></a>
# **Invoke-GroAdminPatchConfigFile**
> void Invoke-GroAdminPatchConfigFile<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Service] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-File] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-XCsrfToken] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PatchConfigFileRequest] <PSCustomObject><br>

Update or rename configuration file

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: JWTCookie
$Configuration.ApiKey.grommunioAuthJwt = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.grommunioAuthJwt = "Bearer"

$Service = "MyService" # String | Name of the service to configure
$File = "MyFile" # String | Name of the configuration file
$XCsrfToken = "MyXCsrfToken" # String | CSRF Token (optional)
$PatchConfigFileRequest = Initialize-PatchConfigFileRequest -Name "MyName" -VarData @{ key_example = "MyInner" } # PatchConfigFileRequest |  (optional)

# Update or rename configuration file
try {
    $Result = Invoke-GroAdminPatchConfigFile -Service $Service -File $File -XCsrfToken $XCsrfToken -PatchConfigFileRequest $PatchConfigFileRequest
} catch {
    Write-Host ("Exception occurred when calling Invoke-GroAdminPatchConfigFile: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Service** | **String**| Name of the service to configure | 
 **File** | **String**| Name of the configuration file | 
 **XCsrfToken** | **String**| CSRF Token | [optional] 
 **PatchConfigFileRequest** | [**PatchConfigFileRequest**](PatchConfigFileRequest.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

[JWTCookie](../README.md#JWTCookie)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-GroAdminPatchServiceFiles"></a>
# **Invoke-GroAdminPatchServiceFiles**
> void Invoke-GroAdminPatchServiceFiles<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Service] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-XCsrfToken] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PatchServiceFilesRequest] <PSCustomObject><br>

Rename or merge service

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: JWTCookie
$Configuration.ApiKey.grommunioAuthJwt = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.grommunioAuthJwt = "Bearer"

$Service = "MyService" # String | Name of the service to configure
$XCsrfToken = "MyXCsrfToken" # String | CSRF Token (optional)
$PatchServiceFilesRequest = Initialize-PatchServiceFilesRequest -Name "MyName" # PatchServiceFilesRequest |  (optional)

# Rename or merge service
try {
    $Result = Invoke-GroAdminPatchServiceFiles -Service $Service -XCsrfToken $XCsrfToken -PatchServiceFilesRequest $PatchServiceFilesRequest
} catch {
    Write-Host ("Exception occurred when calling Invoke-GroAdminPatchServiceFiles: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Service** | **String**| Name of the service to configure | 
 **XCsrfToken** | **String**| CSRF Token | [optional] 
 **PatchServiceFilesRequest** | [**PatchServiceFilesRequest**](PatchServiceFilesRequest.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

[JWTCookie](../README.md#JWTCookie)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Send-GroAdminConfigFile"></a>
# **Send-GroAdminConfigFile**
> void Send-GroAdminConfigFile<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Service] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-File] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-XCsrfToken] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-GetConfigFile200Response] <PSCustomObject><br>

Upload configuration file. If the file exists it is overwritten

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: JWTCookie
$Configuration.ApiKey.grommunioAuthJwt = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.grommunioAuthJwt = "Bearer"

$Service = "MyService" # String | Name of the service to configure
$File = "MyFile" # String | Name of the configuration file
$XCsrfToken = "MyXCsrfToken" # String | CSRF Token (optional)
$GetConfigFile200Response = Initialize-GetConfigFile200Response -VarData @{ key_example = "MyInner" } # GetConfigFile200Response |  (optional)

# Upload configuration file. If the file exists it is overwritten
try {
    $Result = Send-GroAdminConfigFile -Service $Service -File $File -XCsrfToken $XCsrfToken -GetConfigFile200Response $GetConfigFile200Response
} catch {
    Write-Host ("Exception occurred when calling Send-GroAdminConfigFile: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Service** | **String**| Name of the service to configure | 
 **File** | **String**| Name of the configuration file | 
 **XCsrfToken** | **String**| CSRF Token | [optional] 
 **GetConfigFile200Response** | [**GetConfigFile200Response**](GetConfigFile200Response.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

[JWTCookie](../README.md#JWTCookie)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

