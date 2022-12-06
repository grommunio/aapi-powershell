# GrommunioAdmin.GrommunioAdmin/Api.GroAdminSystemAdminServersApi

All URIs are relative to */api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Invoke-GroAdminDeleteServer**](GroAdminSystemAdminServersApi.md#Invoke-GroAdminDeleteServer) | **DELETE** /system/servers/{ID} | deleteServer
[**Get-GroAdminServer**](GroAdminSystemAdminServersApi.md#Get-GroAdminServer) | **GET** /system/servers/{ID} | getServer
[**Get-GroAdminServers**](GroAdminSystemAdminServersApi.md#Get-GroAdminServers) | **GET** /system/servers | getServers
[**Invoke-GroAdminPatchServer**](GroAdminSystemAdminServersApi.md#Invoke-GroAdminPatchServer) | **PATCH** /system/servers/{ID} | patchServer
[**Submit-GroAdminServers**](GroAdminSystemAdminServersApi.md#Submit-GroAdminServers) | **POST** /system/servers | postServers


<a name="Invoke-GroAdminDeleteServer"></a>
# **Invoke-GroAdminDeleteServer**
> void Invoke-GroAdminDeleteServer<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ID] <Int32><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-XCsrfToken] <String><br>

deleteServer

Delete server

### Example
```powershell
$ID = 56 # Int32 | ID of the object
$XCsrfToken = "MyXCsrfToken" # String | CSRF Token (optional)

# deleteServer
try {
    $Result = Invoke-GroAdminDeleteServer -ID $ID -XCsrfToken $XCsrfToken
} catch {
    Write-Host ("Exception occurred when calling Invoke-GroAdminDeleteServer: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ID** | **Int32**| ID of the object | 
 **XCsrfToken** | **String**| CSRF Token | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Get-GroAdminServer"></a>
# **Get-GroAdminServer**
> Homeserver Get-GroAdminServer<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ID] <Int32><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Level] <System.Nullable[Int32]><br>

getServer

Get detailed information about a server

### Example
```powershell
$ID = 56 # Int32 | ID of the object
$Level = 56 # Int32 | Set detail level of return value. Usually ranges from 0 to 2. (optional)

# getServer
try {
    $Result = Get-GroAdminServer -ID $ID -Level $Level
} catch {
    Write-Host ("Exception occurred when calling Get-GroAdminServer: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ID** | **Int32**| ID of the object | 
 **Level** | **Int32**| Set detail level of return value. Usually ranges from 0 to 2. | [optional] 

### Return type

[**Homeserver**](Homeserver.md) (PSCustomObject)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Get-GroAdminServers"></a>
# **Get-GroAdminServers**
> SystemServersResponse Get-GroAdminServers<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Level] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Limit] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Offset] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Match] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-MatchFields] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Sort] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Hostname] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Description] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Users] <System.Nullable[Int32][]><br>

getServers

Get a list of servers

### Example
```powershell
$Level = 56 # Int32 | Set detail level of return value. Usually ranges from 0 to 2. (optional)
$Limit = 56 # Int32 | Maximum number of results to return (optional) (default to 50)
$Offset = 56 # Int32 | Index of the first element to return (optional) (default to 0)
$Match = "MyMatch" # String | Match by substring (optional)
$MatchFields = "MyMatchFields" # String | Comma separated list of attributes to restrict matching to. (optional)
$Sort = "MySort" # String | Sort by attribute. Can be given multiple times. (optional)
$Hostname = "MyHostname" # String | Filter by hostname (optional)
$Description = "MyDescription" # String | Filter by extname (optional)
$Users = 0 # Int32[] | Filter by users (optional)

# getServers
try {
    $Result = Get-GroAdminServers -Level $Level -Limit $Limit -Offset $Offset -Match $Match -MatchFields $MatchFields -Sort $Sort -Hostname $Hostname -Description $Description -Users $Users
} catch {
    Write-Host ("Exception occurred when calling Get-GroAdminServers: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Level** | **Int32**| Set detail level of return value. Usually ranges from 0 to 2. | [optional] 
 **Limit** | **Int32**| Maximum number of results to return | [optional] [default to 50]
 **Offset** | **Int32**| Index of the first element to return | [optional] [default to 0]
 **Match** | **String**| Match by substring | [optional] 
 **MatchFields** | **String**| Comma separated list of attributes to restrict matching to. | [optional] 
 **Sort** | **String**| Sort by attribute. Can be given multiple times. | [optional] 
 **Hostname** | **String**| Filter by hostname | [optional] 
 **Description** | **String**| Filter by extname | [optional] 
 **Users** | [**Int32[]**](Int32.md)| Filter by users | [optional] 

### Return type

[**SystemServersResponse**](SystemServersResponse.md) (PSCustomObject)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-GroAdminPatchServer"></a>
# **Invoke-GroAdminPatchServer**
> Homeserver Invoke-GroAdminPatchServer<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ID] <Int32><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-XCsrfToken] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PostServersRequest] <PSCustomObject><br>

patchServer

Update server

### Example
```powershell
$ID = 56 # Int32 | ID of the object
$XCsrfToken = "MyXCsrfToken" # String | CSRF Token (optional)
$PostServersRequest = Initialize-PostServersRequest -ID 0 -Hostname "MyHostname" -Extname "MyExtname" -Users 0 -Domains 0 # PostServersRequest |  (optional)

# patchServer
try {
    $Result = Invoke-GroAdminPatchServer -ID $ID -XCsrfToken $XCsrfToken -PostServersRequest $PostServersRequest
} catch {
    Write-Host ("Exception occurred when calling Invoke-GroAdminPatchServer: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ID** | **Int32**| ID of the object | 
 **XCsrfToken** | **String**| CSRF Token | [optional] 
 **PostServersRequest** | [**PostServersRequest**](PostServersRequest.md)|  | [optional] 

### Return type

[**Homeserver**](Homeserver.md) (PSCustomObject)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Submit-GroAdminServers"></a>
# **Submit-GroAdminServers**
> Homeserver Submit-GroAdminServers<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-XCsrfToken] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PostServersRequest] <PSCustomObject><br>

postServers

Register a new server

### Example
```powershell
$XCsrfToken = "MyXCsrfToken" # String | CSRF Token (optional)
$PostServersRequest = Initialize-PostServersRequest -ID 0 -Hostname "MyHostname" -Extname "MyExtname" -Users 0 -Domains 0 # PostServersRequest |  (optional)

# postServers
try {
    $Result = Submit-GroAdminServers -XCsrfToken $XCsrfToken -PostServersRequest $PostServersRequest
} catch {
    Write-Host ("Exception occurred when calling Submit-GroAdminServers: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **XCsrfToken** | **String**| CSRF Token | [optional] 
 **PostServersRequest** | [**PostServersRequest**](PostServersRequest.md)|  | [optional] 

### Return type

[**Homeserver**](Homeserver.md) (PSCustomObject)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

