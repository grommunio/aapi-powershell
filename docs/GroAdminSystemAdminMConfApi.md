# GrommunioAdmin.GrommunioAdmin\Api.GroAdminSystemAdminMConfApi

All URIs are relative to */api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Invoke-GroAdminDeleteAuthmgr**](GroAdminSystemAdminMConfApi.md#Invoke-GroAdminDeleteAuthmgr) | **DELETE** /system/mconf/authmgr | Reset authmgr configuration to default
[**Invoke-GroAdminDeleteLDAPConf**](GroAdminSystemAdminMConfApi.md#Invoke-GroAdminDeleteLDAPConf) | **DELETE** /system/mconf/ldap | Remove LDAP configuration and disable service
[**Get-GroAdminAuthmgr**](GroAdminSystemAdminMConfApi.md#Get-GroAdminAuthmgr) | **GET** /system/mconf/authmgr | Get the current authmgr configuration
[**Get-GroAdminLDAPConf**](GroAdminSystemAdminMConfApi.md#Get-GroAdminLDAPConf) | **GET** /system/mconf/ldap | Get the current LDAP configuration
[**Set-GroAdminAuthmgr**](GroAdminSystemAdminMConfApi.md#Set-GroAdminAuthmgr) | **PUT** /system/mconf/authmgr | Set new authmgr configuration
[**Set-GroAdminLDAPConf**](GroAdminSystemAdminMConfApi.md#Set-GroAdminLDAPConf) | **PUT** /system/mconf/ldap | Set new LDAP configuration


<a id="Invoke-GroAdminDeleteAuthmgr"></a>
# **Invoke-GroAdminDeleteAuthmgr**
> void Invoke-GroAdminDeleteAuthmgr<br>

Reset authmgr configuration to default

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: JWTCookie
$Configuration.ApiKey.grommunioAuthJwt = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.grommunioAuthJwt = "Bearer"


# Reset authmgr configuration to default
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

[JWTCookie](../README.md#JWTCookie)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-GroAdminDeleteLDAPConf"></a>
# **Invoke-GroAdminDeleteLDAPConf**
> void Invoke-GroAdminDeleteLDAPConf<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-XCsrfToken] <String><br>

Remove LDAP configuration and disable service

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: JWTCookie
$Configuration.ApiKey.grommunioAuthJwt = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.grommunioAuthJwt = "Bearer"

$XCsrfToken = "MyXCsrfToken" # String | CSRF Token (optional)

# Remove LDAP configuration and disable service
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

[JWTCookie](../README.md#JWTCookie)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-GroAdminAuthmgr"></a>
# **Get-GroAdminAuthmgr**
> GetAuthmgr200Response Get-GroAdminAuthmgr<br>

Get the current authmgr configuration

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: JWTCookie
$Configuration.ApiKey.grommunioAuthJwt = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.grommunioAuthJwt = "Bearer"


# Get the current authmgr configuration
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

[**GetAuthmgr200Response**](GetAuthmgr200Response.md) (PSCustomObject)

### Authorization

[JWTCookie](../README.md#JWTCookie)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-GroAdminLDAPConf"></a>
# **Get-GroAdminLDAPConf**
> GetLDAPConf200Response Get-GroAdminLDAPConf<br>

Get the current LDAP configuration

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: JWTCookie
$Configuration.ApiKey.grommunioAuthJwt = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.grommunioAuthJwt = "Bearer"


# Get the current LDAP configuration
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

[**GetLDAPConf200Response**](GetLDAPConf200Response.md) (PSCustomObject)

### Authorization

[JWTCookie](../README.md#JWTCookie)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Set-GroAdminAuthmgr"></a>
# **Set-GroAdminAuthmgr**
> void Set-GroAdminAuthmgr<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-XCsrfToken] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SetAuthmgrRequest] <PSCustomObject><br>

Set new authmgr configuration

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: JWTCookie
$Configuration.ApiKey.grommunioAuthJwt = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.grommunioAuthJwt = "Bearer"

$XCsrfToken = "MyXCsrfToken" # String | CSRF Token (optional)
$SetAuthmgrRequest = Initialize-SetAuthmgrRequest -AuthBackendSelection "always_mysql" # SetAuthmgrRequest |  (optional)

# Set new authmgr configuration
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

[JWTCookie](../README.md#JWTCookie)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Set-GroAdminLDAPConf"></a>
# **Set-GroAdminLDAPConf**
> void Set-GroAdminLDAPConf<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-XCsrfToken] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Force] <System.Nullable[Boolean]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-LdapConfig] <PSCustomObject><br>

Set new LDAP configuration

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: JWTCookie
$Configuration.ApiKey.grommunioAuthJwt = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.grommunioAuthJwt = "Bearer"

$XCsrfToken = "MyXCsrfToken" # String | CSRF Token (optional)
$Force = $true # Boolean | Update configuration even if validation failed (optional)
$LdapConfigConnection = Initialize-LdapConfigConnection -Server "MyServer" -BindUser "MyBindUser" -BindPass "MyBindPass" -Starttls $false
$LdapConfigUsers = Initialize-LdapConfigUsers -Username "MyUsername" -DisplayName "MyDisplayName" -Filters "objectclass=person" -VarFilter "(&(objectclass=person)(mailPrimaryAddress=*))" -Templates "MyTemplates" -Attributes @{ key_example = "MyInner" } -DefaultQuota 0 -SearchAttributes "MySearchAttributes" -Aliases "MyAliases"
$LdapConfigGroups = Initialize-LdapConfigGroups -GroupMemberAttr "MyGroupMemberAttr" -Groupaddr "MyGroupaddr" -Groupfilter "MyGroupfilter" -Groupname "MyGroupname"
$LdapConfig = Initialize-LdapConfig -Disabled $false -Connection $LdapConfigConnection -BaseDn "MyBaseDn" -ObjectID "MyObjectID" -Users $LdapConfigUsers -Groups $LdapConfigGroups # LdapConfig |  (optional)

# Set new LDAP configuration
try {
    $Result = Set-GroAdminLDAPConf -XCsrfToken $XCsrfToken -Force $Force -LdapConfig $LdapConfig
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
 **LdapConfig** | [**LdapConfig**](LdapConfig.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

[JWTCookie](../README.md#JWTCookie)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

