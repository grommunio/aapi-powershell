# GrommunioAdmin.GrommunioAdmin/Api.GroAdminSystemAdminRolesApi

All URIs are relative to */api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Invoke-GroAdminDeleteRole**](GroAdminSystemAdminRolesApi.md#Invoke-GroAdminDeleteRole) | **DELETE** /system/roles/{ID} | deleteRole
[**Get-GroAdminPermissions**](GroAdminSystemAdminRolesApi.md#Get-GroAdminPermissions) | **GET** /system/roles/permissions | getPermissions
[**Get-GroAdminRole**](GroAdminSystemAdminRolesApi.md#Get-GroAdminRole) | **GET** /system/roles/{ID} | getRole
[**Get-GroAdminRoles**](GroAdminSystemAdminRolesApi.md#Get-GroAdminRoles) | **GET** /system/roles | getRoles
[**Invoke-GroAdminPatchRole**](GroAdminSystemAdminRolesApi.md#Invoke-GroAdminPatchRole) | **PATCH** /system/roles/{ID} | patchRole
[**Invoke-GroAdminPatchUserRoles**](GroAdminSystemAdminRolesApi.md#Invoke-GroAdminPatchUserRoles) | **PATCH** /domains/{domainID}/users/{userID}/roles | patchUserRoles
[**Submit-GroAdminRole**](GroAdminSystemAdminRolesApi.md#Submit-GroAdminRole) | **POST** /system/roles | postRole


<a name="Invoke-GroAdminDeleteRole"></a>
# **Invoke-GroAdminDeleteRole**
> void Invoke-GroAdminDeleteRole<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ID] <Int32><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-XCsrfToken] <String><br>

deleteRole

Delete role

### Example
```powershell
$ID = 56 # Int32 | ID of the object
$XCsrfToken = "MyXCsrfToken" # String | CSRF Token (optional)

# deleteRole
try {
    $Result = Invoke-GroAdminDeleteRole -ID $ID -XCsrfToken $XCsrfToken
} catch {
    Write-Host ("Exception occurred when calling Invoke-GroAdminDeleteRole: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a name="Get-GroAdminPermissions"></a>
# **Get-GroAdminPermissions**
> SystemRolesPermissionsResponse Get-GroAdminPermissions<br>

getPermissions

Get list of available permissions

### Example
```powershell

# getPermissions
try {
    $Result = Get-GroAdminPermissions
} catch {
    Write-Host ("Exception occurred when calling Get-GroAdminPermissions: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**SystemRolesPermissionsResponse**](SystemRolesPermissionsResponse.md) (PSCustomObject)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Get-GroAdminRole"></a>
# **Get-GroAdminRole**
> AdminRole Get-GroAdminRole<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ID] <Int32><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Level] <System.Nullable[Int32]><br>

getRole

Get role

### Example
```powershell
$ID = 56 # Int32 | ID of the object
$Level = 56 # Int32 | Set detail level of return value. Usually ranges from 0 to 2. (optional)

# getRole
try {
    $Result = Get-GroAdminRole -ID $ID -Level $Level
} catch {
    Write-Host ("Exception occurred when calling Get-GroAdminRole: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ID** | **Int32**| ID of the object | 
 **Level** | **Int32**| Set detail level of return value. Usually ranges from 0 to 2. | [optional] 

### Return type

[**AdminRole**](AdminRole.md) (PSCustomObject)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Get-GroAdminRoles"></a>
# **Get-GroAdminRoles**
> SystemRolesResponse Get-GroAdminRoles<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Level] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Match] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-MatchFields] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Sort] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ID] <System.Nullable[Int32][]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Name] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Description] <String><br>

getRoles

Get list of available roles

### Example
```powershell
$Level = 56 # Int32 | Set detail level of return value. Usually ranges from 0 to 2. (optional)
$Match = "MyMatch" # String | Match by substring (optional)
$MatchFields = "MyMatchFields" # String | Comma separated list of attributes to restrict matching to. (optional)
$Sort = "MySort" # String | Sort by attribute. Can be given multiple times. (optional)
$ID = 0 # Int32[] | Filter one or more IDs (optional)
$Name = "MyName" # String | Filter by name (optional)
$Description = "MyDescription" # String | Filter by description (optional)

# getRoles
try {
    $Result = Get-GroAdminRoles -Level $Level -Match $Match -MatchFields $MatchFields -Sort $Sort -ID $ID -Name $Name -Description $Description
} catch {
    Write-Host ("Exception occurred when calling Get-GroAdminRoles: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Level** | **Int32**| Set detail level of return value. Usually ranges from 0 to 2. | [optional] 
 **Match** | **String**| Match by substring | [optional] 
 **MatchFields** | **String**| Comma separated list of attributes to restrict matching to. | [optional] 
 **Sort** | **String**| Sort by attribute. Can be given multiple times. | [optional] 
 **ID** | [**Int32[]**](Int32.md)| Filter one or more IDs | [optional] 
 **Name** | **String**| Filter by name | [optional] 
 **Description** | **String**| Filter by description | [optional] 

### Return type

[**SystemRolesResponse**](SystemRolesResponse.md) (PSCustomObject)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-GroAdminPatchRole"></a>
# **Invoke-GroAdminPatchRole**
> AdminRole Invoke-GroAdminPatchRole<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ID] <Int32><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-XCsrfToken] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PostRoleRequest] <PSCustomObject><br>

patchRole

Update a role

### Example
```powershell
$ID = 56 # Int32 | ID of the object
$XCsrfToken = "MyXCsrfToken" # String | CSRF Token (optional)
$AdminPermission = Initialize-AdminPermission -ID 0 -Permission "MyPermission"
$PostRoleRequest = Initialize-PostRoleRequest -Name "MyName" -Description "MyDescription" -Permissions $AdminPermission -Users 0 # PostRoleRequest |  (optional)

# patchRole
try {
    $Result = Invoke-GroAdminPatchRole -ID $ID -XCsrfToken $XCsrfToken -PostRoleRequest $PostRoleRequest
} catch {
    Write-Host ("Exception occurred when calling Invoke-GroAdminPatchRole: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ID** | **Int32**| ID of the object | 
 **XCsrfToken** | **String**| CSRF Token | [optional] 
 **PostRoleRequest** | [**PostRoleRequest**](PostRoleRequest.md)|  | [optional] 

### Return type

[**AdminRole**](AdminRole.md) (PSCustomObject)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-GroAdminPatchUserRoles"></a>
# **Invoke-GroAdminPatchUserRoles**
> DomainsUsersRolesResponse Invoke-GroAdminPatchUserRoles<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-DomainID] <Int32><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-UserID] <Int32><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-XCsrfToken] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PatchUserRolesRequest] <PSCustomObject><br>

patchUserRoles

Update user roles

### Example
```powershell
$DomainID = 56 # Int32 | ID of the domain
$UserID = 56 # Int32 | ID of the user
$XCsrfToken = "MyXCsrfToken" # String | CSRF Token (optional)
$PatchUserRolesRequest = Initialize-PatchUserRolesRequest -Roles 0 # PatchUserRolesRequest |  (optional)

# patchUserRoles
try {
    $Result = Invoke-GroAdminPatchUserRoles -DomainID $DomainID -UserID $UserID -XCsrfToken $XCsrfToken -PatchUserRolesRequest $PatchUserRolesRequest
} catch {
    Write-Host ("Exception occurred when calling Invoke-GroAdminPatchUserRoles: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **DomainID** | **Int32**| ID of the domain | 
 **UserID** | **Int32**| ID of the user | 
 **XCsrfToken** | **String**| CSRF Token | [optional] 
 **PatchUserRolesRequest** | [**PatchUserRolesRequest**](PatchUserRolesRequest.md)|  | [optional] 

### Return type

[**DomainsUsersRolesResponse**](DomainsUsersRolesResponse.md) (PSCustomObject)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Submit-GroAdminRole"></a>
# **Submit-GroAdminRole**
> AdminRole Submit-GroAdminRole<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-XCsrfToken] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PostRoleRequest] <PSCustomObject><br>

postRole

Create a new role

### Example
```powershell
$XCsrfToken = "MyXCsrfToken" # String | CSRF Token (optional)
$AdminPermission = Initialize-AdminPermission -ID 0 -Permission "MyPermission"
$PostRoleRequest = Initialize-PostRoleRequest -Name "MyName" -Description "MyDescription" -Permissions $AdminPermission -Users 0 # PostRoleRequest |  (optional)

# postRole
try {
    $Result = Submit-GroAdminRole -XCsrfToken $XCsrfToken -PostRoleRequest $PostRoleRequest
} catch {
    Write-Host ("Exception occurred when calling Submit-GroAdminRole: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **XCsrfToken** | **String**| CSRF Token | [optional] 
 **PostRoleRequest** | [**PostRoleRequest**](PostRoleRequest.md)|  | [optional] 

### Return type

[**AdminRole**](AdminRole.md) (PSCustomObject)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

