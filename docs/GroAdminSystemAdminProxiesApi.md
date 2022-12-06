# GrommunioAdmin.GrommunioAdmin/Api.GroAdminSystemAdminProxiesApi

All URIs are relative to */api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Get-GroAdminAntispam**](GroAdminSystemAdminProxiesApi.md#Get-GroAdminAntispam) | **GET** /system/antispam/{path} | getAntispam
[**Get-GroAdminVhostStatus**](GroAdminSystemAdminProxiesApi.md#Get-GroAdminVhostStatus) | **GET** /system/vhostStatus/{host} | getVhostStatus
[**Get-GroAdminVhosts**](GroAdminSystemAdminProxiesApi.md#Get-GroAdminVhosts) | **GET** /system/vhostStatus | getVhosts


<a name="Get-GroAdminAntispam"></a>
# **Get-GroAdminAntispam**
> void Get-GroAdminAntispam<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Path] <String><br>

getAntispam

Proxies any request including query parameters to the grommunio-antispam backend

### Example
```powershell
$Path = "MyPath" # String | grommunio-antispam endpoint to query

# getAntispam
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

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Get-GroAdminVhostStatus"></a>
# **Get-GroAdminVhostStatus**
> void Get-GroAdminVhostStatus<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Host] <String><br>

getVhostStatus

Make call nginx vhost status endpoint

### Example
```powershell
$Host = "MyHost" # String | Host to query

# getVhostStatus
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

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Get-GroAdminVhosts"></a>
# **Get-GroAdminVhosts**
> SystemVhostStatusResponse Get-GroAdminVhosts<br>

getVhosts

Get list of vhosts

### Example
```powershell

# getVhosts
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

[**SystemVhostStatusResponse**](SystemVhostStatusResponse.md) (PSCustomObject)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

