# GrommunioAdmin.GrommunioAdmin\Api.GroAdminDefaultsApi

All URIs are relative to */api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Get-GroAdminCreateParams**](GroAdminDefaultsApi.md#Get-GroAdminCreateParams) | **GET** /defaults/createParams | Get default create parameters
[**Get-GroAdminDomainDefaultParams**](GroAdminDefaultsApi.md#Get-GroAdminDomainDefaultParams) | **GET** /defaults/createParams/{domainID} | Get default create parameter overrides for domain
[**Get-GroAdminStoreLangs**](GroAdminDefaultsApi.md#Get-GroAdminStoreLangs) | **GET** /defaults/storeLangs | Get list of available user store languages
[**Invoke-GroAdminPatchCreateParams**](GroAdminDefaultsApi.md#Invoke-GroAdminPatchCreateParams) | **PATCH** /defaults/createParams | Update create default parameters
[**Invoke-GroAdminPatchDomainDefaultParams**](GroAdminDefaultsApi.md#Invoke-GroAdminPatchDomainDefaultParams) | **PATCH** /defaults/createParams/{domainID} | Update create default parameter overrides for domain
[**Send-GroAdminCreateParams**](GroAdminDefaultsApi.md#Send-GroAdminCreateParams) | **PUT** /defaults/createParams | Replace create default parameters
[**Send-GroAdminDomainDefaultParams**](GroAdminDefaultsApi.md#Send-GroAdminDomainDefaultParams) | **PUT** /defaults/createParams/{domainID} | Replace create default parameter overrides for domain


<a id="Get-GroAdminCreateParams"></a>
# **Get-GroAdminCreateParams**
> GetCreateParams200Response Get-GroAdminCreateParams<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Domain] <System.Nullable[Int32]><br>

Get default create parameters

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: JWTCookie
$Configuration.ApiKey.grommunioAuthJwt = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.grommunioAuthJwt = "Bearer"

$Domain = 56 # Int32 | Get the effective defaults for specific domain (optional)

# Get default create parameters
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

[**GetCreateParams200Response**](GetCreateParams200Response.md) (PSCustomObject)

### Authorization

[JWTCookie](../README.md#JWTCookie)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-GroAdminDomainDefaultParams"></a>
# **Get-GroAdminDomainDefaultParams**
> GetCreateParams200Response Get-GroAdminDomainDefaultParams<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-DomainID] <Int32><br>

Get default create parameter overrides for domain

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: JWTCookie
$Configuration.ApiKey.grommunioAuthJwt = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.grommunioAuthJwt = "Bearer"

$DomainID = 56 # Int32 | ID of the domain

# Get default create parameter overrides for domain
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

[**GetCreateParams200Response**](GetCreateParams200Response.md) (PSCustomObject)

### Authorization

[JWTCookie](../README.md#JWTCookie)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-GroAdminStoreLangs"></a>
# **Get-GroAdminStoreLangs**
> GetStoreLangs200Response Get-GroAdminStoreLangs<br>

Get list of available user store languages

### Example
```powershell

# Get list of available user store languages
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

[**GetStoreLangs200Response**](GetStoreLangs200Response.md) (PSCustomObject)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-GroAdminPatchCreateParams"></a>
# **Invoke-GroAdminPatchCreateParams**
> void Invoke-GroAdminPatchCreateParams<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-XCsrfToken] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-CreateDefaults] <PSCustomObject><br>

Update create default parameters

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: JWTCookie
$Configuration.ApiKey.grommunioAuthJwt = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.grommunioAuthJwt = "Bearer"

$XCsrfToken = "MyXCsrfToken" # String | CSRF Token (optional)
$CreateDefaults = Initialize-CreateDefaults -User @{ key_example =  } -Domain @{ key_example =  } # CreateDefaults |  (optional)

# Update create default parameters
try {
    $Result = Invoke-GroAdminPatchCreateParams -XCsrfToken $XCsrfToken -CreateDefaults $CreateDefaults
} catch {
    Write-Host ("Exception occurred when calling Invoke-GroAdminPatchCreateParams: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **XCsrfToken** | **String**| CSRF Token | [optional] 
 **CreateDefaults** | [**CreateDefaults**](CreateDefaults.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

[JWTCookie](../README.md#JWTCookie)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-GroAdminPatchDomainDefaultParams"></a>
# **Invoke-GroAdminPatchDomainDefaultParams**
> void Invoke-GroAdminPatchDomainDefaultParams<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-DomainID] <Int32><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-XCsrfToken] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-CreateDefaults] <PSCustomObject><br>

Update create default parameter overrides for domain

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: JWTCookie
$Configuration.ApiKey.grommunioAuthJwt = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.grommunioAuthJwt = "Bearer"

$DomainID = 56 # Int32 | ID of the domain
$XCsrfToken = "MyXCsrfToken" # String | CSRF Token (optional)
$CreateDefaults = Initialize-CreateDefaults -User @{ key_example =  } -Domain @{ key_example =  } # CreateDefaults |  (optional)

# Update create default parameter overrides for domain
try {
    $Result = Invoke-GroAdminPatchDomainDefaultParams -DomainID $DomainID -XCsrfToken $XCsrfToken -CreateDefaults $CreateDefaults
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
 **CreateDefaults** | [**CreateDefaults**](CreateDefaults.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

[JWTCookie](../README.md#JWTCookie)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Send-GroAdminCreateParams"></a>
# **Send-GroAdminCreateParams**
> void Send-GroAdminCreateParams<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-XCsrfToken] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-CreateDefaults] <PSCustomObject><br>

Replace create default parameters

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: JWTCookie
$Configuration.ApiKey.grommunioAuthJwt = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.grommunioAuthJwt = "Bearer"

$XCsrfToken = "MyXCsrfToken" # String | CSRF Token (optional)
$CreateDefaults = Initialize-CreateDefaults -User @{ key_example =  } -Domain @{ key_example =  } # CreateDefaults |  (optional)

# Replace create default parameters
try {
    $Result = Send-GroAdminCreateParams -XCsrfToken $XCsrfToken -CreateDefaults $CreateDefaults
} catch {
    Write-Host ("Exception occurred when calling Send-GroAdminCreateParams: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **XCsrfToken** | **String**| CSRF Token | [optional] 
 **CreateDefaults** | [**CreateDefaults**](CreateDefaults.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

[JWTCookie](../README.md#JWTCookie)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Send-GroAdminDomainDefaultParams"></a>
# **Send-GroAdminDomainDefaultParams**
> void Send-GroAdminDomainDefaultParams<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-DomainID] <Int32><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-XCsrfToken] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-CreateDefaults] <PSCustomObject><br>

Replace create default parameter overrides for domain

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: JWTCookie
$Configuration.ApiKey.grommunioAuthJwt = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.grommunioAuthJwt = "Bearer"

$DomainID = 56 # Int32 | ID of the domain
$XCsrfToken = "MyXCsrfToken" # String | CSRF Token (optional)
$CreateDefaults = Initialize-CreateDefaults -User @{ key_example =  } -Domain @{ key_example =  } # CreateDefaults |  (optional)

# Replace create default parameter overrides for domain
try {
    $Result = Send-GroAdminDomainDefaultParams -DomainID $DomainID -XCsrfToken $XCsrfToken -CreateDefaults $CreateDefaults
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
 **CreateDefaults** | [**CreateDefaults**](CreateDefaults.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

[JWTCookie](../README.md#JWTCookie)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

