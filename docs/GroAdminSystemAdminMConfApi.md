# GrommunioAdmin.GrommunioAdmin/Api.GroAdminSystemAdminMConfApi

All URIs are relative to */api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Invoke-GroAdminDeleteAuthmgr**](GroAdminSystemAdminMConfApi.md#Invoke-GroAdminDeleteAuthmgr) | **DELETE** /system/mconf/authmgr | deleteAuthmgr
[**Invoke-GroAdminDeleteLDAPConf**](GroAdminSystemAdminMConfApi.md#Invoke-GroAdminDeleteLDAPConf) | **DELETE** /system/mconf/ldap | deleteLDAPConf
[**Get-GroAdminAuthmgr**](GroAdminSystemAdminMConfApi.md#Get-GroAdminAuthmgr) | **GET** /system/mconf/authmgr | getAuthmgr
[**Get-GroAdminLDAPConf**](GroAdminSystemAdminMConfApi.md#Get-GroAdminLDAPConf) | **GET** /system/mconf/ldap | getLDAPConf
[**Set-GroAdminAuthmgr**](GroAdminSystemAdminMConfApi.md#Set-GroAdminAuthmgr) | **PUT** /system/mconf/authmgr | setAuthmgr
[**Set-GroAdminLDAPConf**](GroAdminSystemAdminMConfApi.md#Set-GroAdminLDAPConf) | **PUT** /system/mconf/ldap | setLDAPConf


<a name="Invoke-GroAdminDeleteAuthmgr"></a>
# **Invoke-GroAdminDeleteAuthmgr**
> void Invoke-GroAdminDeleteAuthmgr<br>

deleteAuthmgr

Reset authmgr configuration to default

### Example
```powershell

# deleteAuthmgr
try {
    $Result = Invoke-GroAdminDeleteAuthmgr
} catch {
    Write-Host ("Exception occurred when calling Invoke-GroAdminDeleteAuthmgr: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-GroAdminDeleteLDAPConf"></a>
# **Invoke-GroAdminDeleteLDAPConf**
> void Invoke-GroAdminDeleteLDAPConf<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-XCsrfToken] <String><br>

deleteLDAPConf

Remove LDAP configuration and disable service

### Example
```powershell
$XCsrfToken = "MyXCsrfToken" # String | CSRF Token (optional)

# deleteLDAPConf
try {
    $Result = Invoke-GroAdminDeleteLDAPConf -XCsrfToken $XCsrfToken
} catch {
    Write-Host ("Exception occurred when calling Invoke-GroAdminDeleteLDAPConf: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **XCsrfToken** | **String**| CSRF Token | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Get-GroAdminAuthmgr"></a>
# **Get-GroAdminAuthmgr**
> SystemMconfAuthmgrResponse Get-GroAdminAuthmgr<br>

getAuthmgr

Get the current authmgr configuration

### Example
```powershell

# getAuthmgr
try {
    $Result = Get-GroAdminAuthmgr
} catch {
    Write-Host ("Exception occurred when calling Get-GroAdminAuthmgr: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**SystemMconfAuthmgrResponse**](SystemMconfAuthmgrResponse.md) (PSCustomObject)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Get-GroAdminLDAPConf"></a>
# **Get-GroAdminLDAPConf**
> SystemMconfLdapResponse Get-GroAdminLDAPConf<br>

getLDAPConf

Get the current LDAP configuration

### Example
```powershell

# getLDAPConf
try {
    $Result = Get-GroAdminLDAPConf
} catch {
    Write-Host ("Exception occurred when calling Get-GroAdminLDAPConf: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**SystemMconfLdapResponse**](SystemMconfLdapResponse.md) (PSCustomObject)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Set-GroAdminAuthmgr"></a>
# **Set-GroAdminAuthmgr**
> void Set-GroAdminAuthmgr<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-XCsrfToken] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SetAuthmgrRequest] <PSCustomObject><br>

setAuthmgr

Set new authmgr configuration

### Example
```powershell
$XCsrfToken = "MyXCsrfToken" # String | CSRF Token (optional)
$AuthBackendSelection = Initialize-AuthBackendSelection 
$SetAuthmgrRequest = Initialize-SetAuthmgrRequest -AuthBackendSelection $AuthBackendSelection # SetAuthmgrRequest |  (optional)

# setAuthmgr
try {
    $Result = Set-GroAdminAuthmgr -XCsrfToken $XCsrfToken -SetAuthmgrRequest $SetAuthmgrRequest
} catch {
    Write-Host ("Exception occurred when calling Set-GroAdminAuthmgr: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **XCsrfToken** | **String**| CSRF Token | [optional] 
 **SetAuthmgrRequest** | [**SetAuthmgrRequest**](SetAuthmgrRequest.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Set-GroAdminLDAPConf"></a>
# **Set-GroAdminLDAPConf**
> void Set-GroAdminLDAPConf<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-XCsrfToken] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Force] <System.Nullable[Boolean]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SetOrgLDAPConfRequest] <PSCustomObject><br>

setLDAPConf

Set new LDAP configuration

### Example
```powershell
$XCsrfToken = "MyXCsrfToken" # String | CSRF Token (optional)
$Force = $true # Boolean | Update configuration even if validation failed (optional)
$LdapConfigConnection = Initialize-LdapConfigConnection -Server "MyServer" -BindUser "MyBindUser" -BindPass "MyBindPass" -Starttls $false
$LdapConfigUsers = Initialize-LdapConfigUsers -Username "MyUsername" -DisplayName "MyDisplayName" -Filters "MyFilters" -VarFilter "(&(objectclass=person)(mailPrimaryAddress=*))" -Templates "MyTemplates" -Attributes @{ key_example = "MyInner" } -DefaultQuota 0 -SearchAttributes "MySearchAttributes" -Aliases "MyAliases"
$SetOrgLDAPConfRequest = Initialize-SetOrgLDAPConfRequest -Disabled $false -Connection $LdapConfigConnection -BaseDn "MyBaseDn" -ObjectID "MyObjectID" -Users $LdapConfigUsers # SetOrgLDAPConfRequest |  (optional)

# setLDAPConf
try {
    $Result = Set-GroAdminLDAPConf -XCsrfToken $XCsrfToken -Force $Force -SetOrgLDAPConfRequest $SetOrgLDAPConfRequest
} catch {
    Write-Host ("Exception occurred when calling Set-GroAdminLDAPConf: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **XCsrfToken** | **String**| CSRF Token | [optional] 
 **Force** | **Boolean**| Update configuration even if validation failed | [optional] 
 **SetOrgLDAPConfRequest** | [**SetOrgLDAPConfRequest**](SetOrgLDAPConfRequest.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

