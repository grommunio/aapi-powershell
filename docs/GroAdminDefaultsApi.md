# GrommunioAdmin.GrommunioAdmin/Api.GroAdminDefaultsApi

All URIs are relative to */api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Get-GroAdminCreateParams**](GroAdminDefaultsApi.md#Get-GroAdminCreateParams) | **GET** /defaults/createParams | getCreateParams
[**Get-GroAdminDomainDefaultParams**](GroAdminDefaultsApi.md#Get-GroAdminDomainDefaultParams) | **GET** /defaults/createParams/{domainID} | getDomainDefaultParams
[**Get-GroAdminStoreLangs**](GroAdminDefaultsApi.md#Get-GroAdminStoreLangs) | **GET** /defaults/storeLangs | getStoreLangs
[**Invoke-GroAdminPatchCreateParams**](GroAdminDefaultsApi.md#Invoke-GroAdminPatchCreateParams) | **PATCH** /defaults/createParams | patchCreateParams
[**Invoke-GroAdminPatchDomainDefaultParams**](GroAdminDefaultsApi.md#Invoke-GroAdminPatchDomainDefaultParams) | **PATCH** /defaults/createParams/{domainID} | patchDomainDefaultParams
[**Send-GroAdminCreateParams**](GroAdminDefaultsApi.md#Send-GroAdminCreateParams) | **PUT** /defaults/createParams | putCreateParams
[**Send-GroAdminDomainDefaultParams**](GroAdminDefaultsApi.md#Send-GroAdminDomainDefaultParams) | **PUT** /defaults/createParams/{domainID} | putDomainDefaultParams


<a name="Get-GroAdminCreateParams"></a>
# **Get-GroAdminCreateParams**
> DefaultsCreateParamsResponse Get-GroAdminCreateParams<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Domain] <System.Nullable[Int32]><br>

getCreateParams

Get default create parameters

### Example
```powershell
$Domain = 56 # Int32 | Get the effective defaults for specific domain (optional)

# getCreateParams
try {
    $Result = Get-GroAdminCreateParams -Domain $Domain
} catch {
    Write-Host ("Exception occurred when calling Get-GroAdminCreateParams: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Domain** | **Int32**| Get the effective defaults for specific domain | [optional] 

### Return type

[**DefaultsCreateParamsResponse**](DefaultsCreateParamsResponse.md) (PSCustomObject)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Get-GroAdminDomainDefaultParams"></a>
# **Get-GroAdminDomainDefaultParams**
> DefaultsCreateParamsResponse Get-GroAdminDomainDefaultParams<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-DomainID] <Int32><br>

getDomainDefaultParams

Get default create parameter overrides for domain

### Example
```powershell
$DomainID = 56 # Int32 | ID of the domain

# getDomainDefaultParams
try {
    $Result = Get-GroAdminDomainDefaultParams -DomainID $DomainID
} catch {
    Write-Host ("Exception occurred when calling Get-GroAdminDomainDefaultParams: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **DomainID** | **Int32**| ID of the domain | 

### Return type

[**DefaultsCreateParamsResponse**](DefaultsCreateParamsResponse.md) (PSCustomObject)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Get-GroAdminStoreLangs"></a>
# **Get-GroAdminStoreLangs**
> DefaultsStoreLangsResponse Get-GroAdminStoreLangs<br>

getStoreLangs

Get list of available user store languages

### Example
```powershell

# getStoreLangs
try {
    $Result = Get-GroAdminStoreLangs
} catch {
    Write-Host ("Exception occurred when calling Get-GroAdminStoreLangs: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**DefaultsStoreLangsResponse**](DefaultsStoreLangsResponse.md) (PSCustomObject)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-GroAdminPatchCreateParams"></a>
# **Invoke-GroAdminPatchCreateParams**
> void Invoke-GroAdminPatchCreateParams<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-XCsrfToken] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PutCreateParamsRequest] <PSCustomObject><br>

patchCreateParams

Update create default parameters

### Example
```powershell
$XCsrfToken = "MyXCsrfToken" # String | CSRF Token (optional)
$PutCreateParamsRequest = Initialize-PutCreateParamsRequest -User  -Domain # PutCreateParamsRequest |  (optional)

# patchCreateParams
try {
    $Result = Invoke-GroAdminPatchCreateParams -XCsrfToken $XCsrfToken -PutCreateParamsRequest $PutCreateParamsRequest
} catch {
    Write-Host ("Exception occurred when calling Invoke-GroAdminPatchCreateParams: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **XCsrfToken** | **String**| CSRF Token | [optional] 
 **PutCreateParamsRequest** | [**PutCreateParamsRequest**](PutCreateParamsRequest.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-GroAdminPatchDomainDefaultParams"></a>
# **Invoke-GroAdminPatchDomainDefaultParams**
> void Invoke-GroAdminPatchDomainDefaultParams<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-DomainID] <Int32><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-XCsrfToken] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PutCreateParamsRequest] <PSCustomObject><br>

patchDomainDefaultParams

Update create default parameter overrides for domain

### Example
```powershell
$DomainID = 56 # Int32 | ID of the domain
$XCsrfToken = "MyXCsrfToken" # String | CSRF Token (optional)
$PutCreateParamsRequest = Initialize-PutCreateParamsRequest -User  -Domain # PutCreateParamsRequest |  (optional)

# patchDomainDefaultParams
try {
    $Result = Invoke-GroAdminPatchDomainDefaultParams -DomainID $DomainID -XCsrfToken $XCsrfToken -PutCreateParamsRequest $PutCreateParamsRequest
} catch {
    Write-Host ("Exception occurred when calling Invoke-GroAdminPatchDomainDefaultParams: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **DomainID** | **Int32**| ID of the domain | 
 **XCsrfToken** | **String**| CSRF Token | [optional] 
 **PutCreateParamsRequest** | [**PutCreateParamsRequest**](PutCreateParamsRequest.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Send-GroAdminCreateParams"></a>
# **Send-GroAdminCreateParams**
> void Send-GroAdminCreateParams<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-XCsrfToken] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PutCreateParamsRequest] <PSCustomObject><br>

putCreateParams

Replace create default parameters

### Example
```powershell
$XCsrfToken = "MyXCsrfToken" # String | CSRF Token (optional)
$PutCreateParamsRequest = Initialize-PutCreateParamsRequest -User  -Domain # PutCreateParamsRequest |  (optional)

# putCreateParams
try {
    $Result = Send-GroAdminCreateParams -XCsrfToken $XCsrfToken -PutCreateParamsRequest $PutCreateParamsRequest
} catch {
    Write-Host ("Exception occurred when calling Send-GroAdminCreateParams: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **XCsrfToken** | **String**| CSRF Token | [optional] 
 **PutCreateParamsRequest** | [**PutCreateParamsRequest**](PutCreateParamsRequest.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Send-GroAdminDomainDefaultParams"></a>
# **Send-GroAdminDomainDefaultParams**
> void Send-GroAdminDomainDefaultParams<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-DomainID] <Int32><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-XCsrfToken] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PutCreateParamsRequest] <PSCustomObject><br>

putDomainDefaultParams

Replace create default parameter overrides for domain

### Example
```powershell
$DomainID = 56 # Int32 | ID of the domain
$XCsrfToken = "MyXCsrfToken" # String | CSRF Token (optional)
$PutCreateParamsRequest = Initialize-PutCreateParamsRequest -User  -Domain # PutCreateParamsRequest |  (optional)

# putDomainDefaultParams
try {
    $Result = Send-GroAdminDomainDefaultParams -DomainID $DomainID -XCsrfToken $XCsrfToken -PutCreateParamsRequest $PutCreateParamsRequest
} catch {
    Write-Host ("Exception occurred when calling Send-GroAdminDomainDefaultParams: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **DomainID** | **Int32**| ID of the domain | 
 **XCsrfToken** | **String**| CSRF Token | [optional] 
 **PutCreateParamsRequest** | [**PutCreateParamsRequest**](PutCreateParamsRequest.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

