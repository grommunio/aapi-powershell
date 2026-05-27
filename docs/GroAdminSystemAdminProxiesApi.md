# GrommunioAdmin.GrommunioAdmin\Api.GroAdminSystemAdminProxiesApi

All URIs are relative to */api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Get-GroAdminAntispam**](GroAdminSystemAdminProxiesApi.md#Get-GroAdminAntispam) | **GET** /system/antispam/{path} | Make call to grommunio-antispam
[**Get-GroAdminVhostStatus**](GroAdminSystemAdminProxiesApi.md#Get-GroAdminVhostStatus) | **GET** /system/vhostStatus/{host} | Make call nginx vhost status endpoint
[**Get-GroAdminVhosts**](GroAdminSystemAdminProxiesApi.md#Get-GroAdminVhosts) | **GET** /system/vhostStatus | Get list of vhosts


<a id="Get-GroAdminAntispam"></a>
# **Get-GroAdminAntispam**
> void Get-GroAdminAntispam<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Path] <String><br>

Make call to grommunio-antispam

Proxies any request including query parameters to the grommunio-antispam backend

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: JWTCookie
$Configuration.ApiKey.grommunioAuthJwt = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.grommunioAuthJwt = "Bearer"

$Path = "MyPath" # String | grommunio-antispam endpoint to query

# Make call to grommunio-antispam
try {
    $Result = Get-GroAdminAntispam -Path $Path
} catch {
    Write-Host ("Exception occurred when calling Get-GroAdminAntispam: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Path** | **String**| grommunio-antispam endpoint to query | 

### Return type

void (empty response body)

### Authorization

[JWTCookie](../README.md#JWTCookie)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-GroAdminVhostStatus"></a>
# **Get-GroAdminVhostStatus**
> void Get-GroAdminVhostStatus<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Host] <String><br>

Make call nginx vhost status endpoint

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: JWTCookie
$Configuration.ApiKey.grommunioAuthJwt = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.grommunioAuthJwt = "Bearer"

$Host = "MyHost" # String | Host to query

# Make call nginx vhost status endpoint
try {
    $Result = Get-GroAdminVhostStatus -Host $Host
} catch {
    Write-Host ("Exception occurred when calling Get-GroAdminVhostStatus: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Host** | **String**| Host to query | 

### Return type

void (empty response body)

### Authorization

[JWTCookie](../README.md#JWTCookie)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-GroAdminVhosts"></a>
# **Get-GroAdminVhosts**
> GetServicesListDBConf200Response Get-GroAdminVhosts<br>

Get list of vhosts

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: JWTCookie
$Configuration.ApiKey.grommunioAuthJwt = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.grommunioAuthJwt = "Bearer"


# Get list of vhosts
try {
    $Result = Get-GroAdminVhosts
} catch {
    Write-Host ("Exception occurred when calling Get-GroAdminVhosts: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

