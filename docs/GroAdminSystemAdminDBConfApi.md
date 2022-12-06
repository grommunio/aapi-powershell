# GrommunioAdmin.GrommunioAdmin/Api.GroAdminSystemAdminDBConfApi

All URIs are relative to */api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Invoke-GroAdminDeleteConfigFile**](GroAdminSystemAdminDBConfApi.md#Invoke-GroAdminDeleteConfigFile) | **DELETE** /system/dbconf/{service}/{file}/ | deleteConfigFile
[**Invoke-GroAdminDeleteServiceConfig**](GroAdminSystemAdminDBConfApi.md#Invoke-GroAdminDeleteServiceConfig) | **DELETE** /system/dbconf/{service}/ | deleteServiceConfig
[**Get-GroAdminCommandList**](GroAdminSystemAdminDBConfApi.md#Get-GroAdminCommandList) | **GET** /system/dbconf/commands | getCommandList
[**Get-GroAdminConfigFile**](GroAdminSystemAdminDBConfApi.md#Get-GroAdminConfigFile) | **GET** /system/dbconf/{service}/{file}/ | getConfigFile
[**Get-GroAdminServiceFiles**](GroAdminSystemAdminDBConfApi.md#Get-GroAdminServiceFiles) | **GET** /system/dbconf/{service}/ | getServiceFiles
[**Get-GroAdminServicesListDBConf**](GroAdminSystemAdminDBConfApi.md#Get-GroAdminServicesListDBConf) | **GET** /system/dbconf/ | getServicesListDBConf
[**Invoke-GroAdminPatchConfigFile**](GroAdminSystemAdminDBConfApi.md#Invoke-GroAdminPatchConfigFile) | **PATCH** /system/dbconf/{service}/{file}/ | patchConfigFile
[**Invoke-GroAdminPatchServiceFiles**](GroAdminSystemAdminDBConfApi.md#Invoke-GroAdminPatchServiceFiles) | **PATCH** /system/dbconf/{service}/ | patchServiceFiles
[**Send-GroAdminConfigFile**](GroAdminSystemAdminDBConfApi.md#Send-GroAdminConfigFile) | **PUT** /system/dbconf/{service}/{file}/ | putConfigFile


<a name="Invoke-GroAdminDeleteConfigFile"></a>
# **Invoke-GroAdminDeleteConfigFile**
> void Invoke-GroAdminDeleteConfigFile<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Service] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-File] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-XCsrfToken] <String><br>

deleteConfigFile

Delete configuration file

### Example
```powershell
$Service = "MyService" # String | Name of the service to configure
$File = "MyFile" # String | Name of the configuration file
$XCsrfToken = "MyXCsrfToken" # String | CSRF Token (optional)

# deleteConfigFile
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

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-GroAdminDeleteServiceConfig"></a>
# **Invoke-GroAdminDeleteServiceConfig**
> void Invoke-GroAdminDeleteServiceConfig<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Service] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-XCsrfToken] <String><br>

deleteServiceConfig

Delete service configurations

### Example
```powershell
$Service = "MyService" # String | Name of the service to configure
$XCsrfToken = "MyXCsrfToken" # String | CSRF Token (optional)

# deleteServiceConfig
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

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Get-GroAdminCommandList"></a>
# **Get-GroAdminCommandList**
> SystemDbconfCommandsResponse Get-GroAdminCommandList<br>

getCommandList

Get lists of allowed commit commands

### Example
```powershell

# getCommandList
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

[**SystemDbconfCommandsResponse**](SystemDbconfCommandsResponse.md) (PSCustomObject)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Get-GroAdminConfigFile"></a>
# **Get-GroAdminConfigFile**
> SystemDbconfResponse2 Get-GroAdminConfigFile<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Service] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-File] <String><br>

getConfigFile

Get configuration file

### Example
```powershell
$Service = "MyService" # String | Name of the service to configure
$File = "MyFile" # String | Name of the configuration file

# getConfigFile
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

[**SystemDbconfResponse2**](SystemDbconfResponse2.md) (PSCustomObject)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Get-GroAdminServiceFiles"></a>
# **Get-GroAdminServiceFiles**
> SystemDbconfResponse Get-GroAdminServiceFiles<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Service] <String><br>

getServiceFiles

Get list of configuration files for service

### Example
```powershell
$Service = "MyService" # String | Name of the service to configure

# getServiceFiles
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

[**SystemDbconfResponse**](SystemDbconfResponse.md) (PSCustomObject)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Get-GroAdminServicesListDBConf"></a>
# **Get-GroAdminServicesListDBConf**
> SystemDbconfResponse Get-GroAdminServicesListDBConf<br>

getServicesListDBConf

Get list of services

### Example
```powershell

# getServicesListDBConf
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

[**SystemDbconfResponse**](SystemDbconfResponse.md) (PSCustomObject)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-GroAdminPatchConfigFile"></a>
# **Invoke-GroAdminPatchConfigFile**
> void Invoke-GroAdminPatchConfigFile<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Service] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-File] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-XCsrfToken] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PatchConfigFileRequest] <PSCustomObject><br>

patchConfigFile

Update or rename configuration file

### Example
```powershell
$Service = "MyService" # String | Name of the service to configure
$File = "MyFile" # String | Name of the configuration file
$XCsrfToken = "MyXCsrfToken" # String | CSRF Token (optional)
$PatchConfigFileRequest = Initialize-PatchConfigFileRequest -Name "MyName" -VarData @{ key_example = "MyInner" } # PatchConfigFileRequest |  (optional)

# patchConfigFile
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

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-GroAdminPatchServiceFiles"></a>
# **Invoke-GroAdminPatchServiceFiles**
> void Invoke-GroAdminPatchServiceFiles<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Service] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-XCsrfToken] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PatchServiceFilesRequest] <PSCustomObject><br>

patchServiceFiles

Rename or merge service

### Example
```powershell
$Service = "MyService" # String | Name of the service to configure
$XCsrfToken = "MyXCsrfToken" # String | CSRF Token (optional)
$PatchServiceFilesRequest = Initialize-PatchServiceFilesRequest -Name "MyName" # PatchServiceFilesRequest |  (optional)

# patchServiceFiles
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

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Send-GroAdminConfigFile"></a>
# **Send-GroAdminConfigFile**
> void Send-GroAdminConfigFile<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Service] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-File] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-XCsrfToken] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PutConfigFileRequest] <PSCustomObject><br>

putConfigFile

Upload configuration file. If the file exists it is overwritten

### Example
```powershell
$Service = "MyService" # String | Name of the service to configure
$File = "MyFile" # String | Name of the configuration file
$XCsrfToken = "MyXCsrfToken" # String | CSRF Token (optional)
$PutConfigFileRequest = Initialize-PutConfigFileRequest -VarData @{ key_example = "MyInner" } # PutConfigFileRequest |  (optional)

# putConfigFile
try {
    $Result = Send-GroAdminConfigFile -Service $Service -File $File -XCsrfToken $XCsrfToken -PutConfigFileRequest $PutConfigFileRequest
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
 **PutConfigFileRequest** | [**PutConfigFileRequest**](PutConfigFileRequest.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

