# GrommunioAdmin.GrommunioAdmin\Api.GroAdminLDAPApi

All URIs are relative to */api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Invoke-GroAdminCheckUsers**](GroAdminLDAPApi.md#Invoke-GroAdminCheckUsers) | **GET** /domains/ldap/check | Check status of ldap imported users
[**Invoke-GroAdminDeleteLDAPConf**](GroAdminLDAPApi.md#Invoke-GroAdminDeleteLDAPConf) | **DELETE** /system/mconf/ldap | Remove LDAP configuration and disable service
[**Invoke-GroAdminDeleteOrgLDAPConf**](GroAdminLDAPApi.md#Invoke-GroAdminDeleteOrgLDAPConf) | **DELETE** /system/orgs/{ID}/ldap | Reset organization specific LDAP configuration
[**Invoke-GroAdminDeleteOrphaned**](GroAdminLDAPApi.md#Invoke-GroAdminDeleteOrphaned) | **DELETE** /domains/ldap/check | Check status of ldap import users and delete orphaned
[**Get-GroAdminLDAP**](GroAdminLDAPApi.md#Get-GroAdminLDAP) | **GET** /domains/ldap/dump | Dump LDAP object
[**Get-GroAdminLDAPConf**](GroAdminLDAPApi.md#Get-GroAdminLDAPConf) | **GET** /system/mconf/ldap | Get the current LDAP configuration
[**Get-GroAdminOrgLDAPConf**](GroAdminLDAPApi.md#Get-GroAdminOrgLDAPConf) | **GET** /system/orgs/{ID}/ldap | Get organization specific LDAP configuration
[**Import-GroAdminLdapUser**](GroAdminLDAPApi.md#Import-GroAdminLdapUser) | **POST** /domains/ldap/importUser | Import user from ldap
[**Send-GroAdminDownsync**](GroAdminLDAPApi.md#Send-GroAdminDownsync) | **PUT** /domains/{domainID}/users/{userID}/downsync | Update user from LDAP
[**Search-GroAdminLDAP**](GroAdminLDAPApi.md#Search-GroAdminLDAP) | **GET** /domains/ldap/search | Perform LDAP user search
[**Set-GroAdminLDAPConf**](GroAdminLDAPApi.md#Set-GroAdminLDAPConf) | **PUT** /system/mconf/ldap | Set new LDAP configuration
[**Set-GroAdminOrgLDAPConf**](GroAdminLDAPApi.md#Set-GroAdminOrgLDAPConf) | **PUT** /system/orgs/{ID}/ldap | Set organization specific LDAP configuration
[**Update-GroAdminAllDomainUsers**](GroAdminLDAPApi.md#Update-GroAdminAllDomainUsers) | **POST** /domains/{domainID}/ldap/downsync | Update all LDAP imported users in this domain
[**Update-GroAdminAllUsers**](GroAdminLDAPApi.md#Update-GroAdminAllUsers) | **POST** /domains/ldap/downsync | Update all LDAP imported users
[**Update-GroAdminOrgLDAPUsers**](GroAdminLDAPApi.md#Update-GroAdminOrgLDAPUsers) | **POST** /system/orgs/{ID}/ldap/downsync | Update all LDAP imported users in this organization


<a id="Invoke-GroAdminCheckUsers"></a>
# **Invoke-GroAdminCheckUsers**
> CheckUsers200Response Invoke-GroAdminCheckUsers<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Domain] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Organization] <System.Nullable[Int32]><br>

Check status of ldap imported users

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: JWTCookie
$Configuration.ApiKey.grommunioAuthJwt = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.grommunioAuthJwt = "Bearer"

$Domain = 56 # Int32 | ID of the domain (optional)
$Organization = 56 # Int32 | ID of the organization (optional)

# Check status of ldap imported users
try {
    $Result = Invoke-GroAdminCheckUsers -Domain $Domain -Organization $Organization
} catch {
    Write-Host ("Exception occurred when calling Invoke-GroAdminCheckUsers: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Domain** | **Int32**| ID of the domain | [optional] 
 **Organization** | **Int32**| ID of the organization | [optional] 

### Return type

[**CheckUsers200Response**](CheckUsers200Response.md) (PSCustomObject)

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

<a id="Invoke-GroAdminDeleteOrgLDAPConf"></a>
# **Invoke-GroAdminDeleteOrgLDAPConf**
> void Invoke-GroAdminDeleteOrgLDAPConf<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ID] <Int32><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-XCsrfToken] <String><br>

Reset organization specific LDAP configuration

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: JWTCookie
$Configuration.ApiKey.grommunioAuthJwt = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.grommunioAuthJwt = "Bearer"

$ID = 56 # Int32 | ID of the object
$XCsrfToken = "MyXCsrfToken" # String | CSRF Token (optional)

# Reset organization specific LDAP configuration
try {
    $Result = Invoke-GroAdminDeleteOrgLDAPConf -ID $ID -XCsrfToken $XCsrfToken
} catch {
    Write-Host ("Exception occurred when calling Invoke-GroAdminDeleteOrgLDAPConf: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

[JWTCookie](../README.md#JWTCookie)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-GroAdminDeleteOrphaned"></a>
# **Invoke-GroAdminDeleteOrphaned**
> DeleteOrphaned200Response Invoke-GroAdminDeleteOrphaned<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-XCsrfToken] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-UserID] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-DeleteFiles] <System.Nullable[Boolean]><br>

Check status of ldap import users and delete orphaned

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: JWTCookie
$Configuration.ApiKey.grommunioAuthJwt = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.grommunioAuthJwt = "Bearer"

$XCsrfToken = "MyXCsrfToken" # String | CSRF Token (optional)
$UserID = 56 # Int32 | If set, only the according user will be deleted (optional)
$DeleteFiles = $true # Boolean | Delete user files on disk (optional) (default to $false)

# Check status of ldap import users and delete orphaned
try {
    $Result = Invoke-GroAdminDeleteOrphaned -XCsrfToken $XCsrfToken -UserID $UserID -DeleteFiles $DeleteFiles
} catch {
    Write-Host ("Exception occurred when calling Invoke-GroAdminDeleteOrphaned: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **XCsrfToken** | **String**| CSRF Token | [optional] 
 **UserID** | **Int32**| If set, only the according user will be deleted | [optional] 
 **DeleteFiles** | **Boolean**| Delete user files on disk | [optional] [default to $false]

### Return type

[**DeleteOrphaned200Response**](DeleteOrphaned200Response.md) (PSCustomObject)

### Authorization

[JWTCookie](../README.md#JWTCookie)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-GroAdminLDAP"></a>
# **Get-GroAdminLDAP**
> DumpLDAP200Response Get-GroAdminLDAP<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ID] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Domain] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Organization] <System.Nullable[Int32]><br>

Dump LDAP object

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: JWTCookie
$Configuration.ApiKey.grommunioAuthJwt = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.grommunioAuthJwt = "Bearer"

$ID = "MyID" # String | LDAP object ID of the person to import
$Domain = 56 # Int32 | ID of the domain (optional)
$Organization = 56 # Int32 | ID of the organization (optional)

# Dump LDAP object
try {
    $Result = Get-GroAdminLDAP -ID $ID -Domain $Domain -Organization $Organization
} catch {
    Write-Host ("Exception occurred when calling Get-GroAdminLDAP: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ID** | **String**| LDAP object ID of the person to import | 
 **Domain** | **Int32**| ID of the domain | [optional] 
 **Organization** | **Int32**| ID of the organization | [optional] 

### Return type

[**DumpLDAP200Response**](DumpLDAP200Response.md) (PSCustomObject)

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

<a id="Get-GroAdminOrgLDAPConf"></a>
# **Get-GroAdminOrgLDAPConf**
> GetOrgLDAPConf200Response Get-GroAdminOrgLDAPConf<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ID] <Int32><br>

Get organization specific LDAP configuration

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: JWTCookie
$Configuration.ApiKey.grommunioAuthJwt = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.grommunioAuthJwt = "Bearer"

$ID = 56 # Int32 | ID of the object

# Get organization specific LDAP configuration
try {
    $Result = Get-GroAdminOrgLDAPConf -ID $ID
} catch {
    Write-Host ("Exception occurred when calling Get-GroAdminOrgLDAPConf: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ID** | **Int32**| ID of the object | 

### Return type

[**GetOrgLDAPConf200Response**](GetOrgLDAPConf200Response.md) (PSCustomObject)

### Authorization

[JWTCookie](../README.md#JWTCookie)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Import-GroAdminLdapUser"></a>
# **Import-GroAdminLdapUser**
> ImportLdapUser200Response Import-GroAdminLdapUser<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ID] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-XCsrfToken] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Force] <System.Nullable[Boolean]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Lang] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Domain] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Organization] <System.Nullable[Int32]><br>

Import user from ldap

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: JWTCookie
$Configuration.ApiKey.grommunioAuthJwt = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.grommunioAuthJwt = "Bearer"

$ID = "MyID" # String | LDAP object ID of the person to import
$XCsrfToken = "MyXCsrfToken" # String | CSRF Token (optional)
$Force = $true # Boolean | Force update existing users that are not associated with the LDAP object (optional) (default to $false)
$Lang = "MyLang" # String | Default language for imported users (optional) (default to "")
$Domain = 56 # Int32 | ID of the domain (optional)
$Organization = 56 # Int32 | ID of the organization (optional)

# Import user from ldap
try {
    $Result = Import-GroAdminLdapUser -ID $ID -XCsrfToken $XCsrfToken -Force $Force -Lang $Lang -Domain $Domain -Organization $Organization
} catch {
    Write-Host ("Exception occurred when calling Import-GroAdminLdapUser: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ID** | **String**| LDAP object ID of the person to import | 
 **XCsrfToken** | **String**| CSRF Token | [optional] 
 **Force** | **Boolean**| Force update existing users that are not associated with the LDAP object | [optional] [default to $false]
 **Lang** | **String**| Default language for imported users | [optional] [default to &quot;&quot;]
 **Domain** | **Int32**| ID of the domain | [optional] 
 **Organization** | **Int32**| ID of the organization | [optional] 

### Return type

[**ImportLdapUser200Response**](ImportLdapUser200Response.md) (PSCustomObject)

### Authorization

[JWTCookie](../README.md#JWTCookie)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Send-GroAdminDownsync"></a>
# **Send-GroAdminDownsync**
> User Send-GroAdminDownsync<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-DomainID] <Int32><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-UserID] <Int32><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-XCsrfToken] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ID] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Lang] <String><br>

Update user from LDAP

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: JWTCookie
$Configuration.ApiKey.grommunioAuthJwt = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.grommunioAuthJwt = "Bearer"

$DomainID = 56 # Int32 | ID of the domain
$UserID = 56 # Int32 | ID of the user
$XCsrfToken = "MyXCsrfToken" # String | CSRF Token (optional)
$ID = "MyID" # String | Optional LDAP object ID (optional)
$Lang = "MyLang" # String | Default language for imported users (optional) (default to "")

# Update user from LDAP
try {
    $Result = Send-GroAdminDownsync -DomainID $DomainID -UserID $UserID -XCsrfToken $XCsrfToken -ID $ID -Lang $Lang
} catch {
    Write-Host ("Exception occurred when calling Send-GroAdminDownsync: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **DomainID** | **Int32**| ID of the domain | 
 **UserID** | **Int32**| ID of the user | 
 **XCsrfToken** | **String**| CSRF Token | [optional] 
 **ID** | **String**| Optional LDAP object ID | [optional] 
 **Lang** | **String**| Default language for imported users | [optional] [default to &quot;&quot;]

### Return type

[**User**](User.md) (PSCustomObject)

### Authorization

[JWTCookie](../README.md#JWTCookie)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Search-GroAdminLDAP"></a>
# **Search-GroAdminLDAP**
> SearchLDAP200Response Search-GroAdminLDAP<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Query] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Limit] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Domain] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Organization] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ShowAll] <System.Nullable[Boolean]><br>

Perform LDAP user search

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: JWTCookie
$Configuration.ApiKey.grommunioAuthJwt = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.grommunioAuthJwt = "Bearer"

$Query = "MyQuery" # String | Search term
$Limit = 56 # Int32 | Maximum number of results to return (optional) (default to 50)
$Domain = 56 # Int32 | ID of the domain (optional)
$Organization = 56 # Int32 | ID of the organization (optional)
$ShowAll = $true # Boolean | Do not filter un-importable results (optional) (default to $false)

# Perform LDAP user search
try {
    $Result = Search-GroAdminLDAP -Query $Query -Limit $Limit -Domain $Domain -Organization $Organization -ShowAll $ShowAll
} catch {
    Write-Host ("Exception occurred when calling Search-GroAdminLDAP: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Query** | **String**| Search term | 
 **Limit** | **Int32**| Maximum number of results to return | [optional] [default to 50]
 **Domain** | **Int32**| ID of the domain | [optional] 
 **Organization** | **Int32**| ID of the organization | [optional] 
 **ShowAll** | **Boolean**| Do not filter un-importable results | [optional] [default to $false]

### Return type

[**SearchLDAP200Response**](SearchLDAP200Response.md) (PSCustomObject)

### Authorization

[JWTCookie](../README.md#JWTCookie)

### HTTP request headers

 - **Content-Type**: Not defined
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

<a id="Set-GroAdminOrgLDAPConf"></a>
# **Set-GroAdminOrgLDAPConf**
> void Set-GroAdminOrgLDAPConf<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ID] <Int32><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-XCsrfToken] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-LdapConfig] <PSCustomObject><br>

Set organization specific LDAP configuration

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: JWTCookie
$Configuration.ApiKey.grommunioAuthJwt = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.grommunioAuthJwt = "Bearer"

$ID = 56 # Int32 | ID of the object
$XCsrfToken = "MyXCsrfToken" # String | CSRF Token (optional)
$LdapConfigConnection = Initialize-LdapConfigConnection -Server "MyServer" -BindUser "MyBindUser" -BindPass "MyBindPass" -Starttls $false
$LdapConfigUsers = Initialize-LdapConfigUsers -Username "MyUsername" -DisplayName "MyDisplayName" -Filters "objectclass=person" -VarFilter "(&(objectclass=person)(mailPrimaryAddress=*))" -Templates "MyTemplates" -Attributes @{ key_example = "MyInner" } -DefaultQuota 0 -SearchAttributes "MySearchAttributes" -Aliases "MyAliases"
$LdapConfigGroups = Initialize-LdapConfigGroups -GroupMemberAttr "MyGroupMemberAttr" -Groupaddr "MyGroupaddr" -Groupfilter "MyGroupfilter" -Groupname "MyGroupname"
$LdapConfig = Initialize-LdapConfig -Disabled $false -Connection $LdapConfigConnection -BaseDn "MyBaseDn" -ObjectID "MyObjectID" -Users $LdapConfigUsers -Groups $LdapConfigGroups # LdapConfig |  (optional)

# Set organization specific LDAP configuration
try {
    $Result = Set-GroAdminOrgLDAPConf -ID $ID -XCsrfToken $XCsrfToken -LdapConfig $LdapConfig
} catch {
    Write-Host ("Exception occurred when calling Set-GroAdminOrgLDAPConf: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ID** | **Int32**| ID of the object | 
 **XCsrfToken** | **String**| CSRF Token | [optional] 
 **LdapConfig** | [**LdapConfig**](LdapConfig.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

[JWTCookie](../README.md#JWTCookie)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Update-GroAdminAllDomainUsers"></a>
# **Update-GroAdminAllDomainUsers**
> UpdateAllUsers200Response Update-GroAdminAllDomainUsers<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-DomainID] <Int32><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-XCsrfToken] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Import] <System.Nullable[Boolean]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Lang] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Timeout] <System.Nullable[Decimal]><br>

Update all LDAP imported users in this domain

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
$Import = $true # Boolean | Import new users from LDAP (optional)
$Lang = "MyLang" # String | Default language for imported users (optional) (default to "")
$Timeout = 8.14 # Decimal | Time in seconds to wait for completion (optional) (default to 1.0)

# Update all LDAP imported users in this domain
try {
    $Result = Update-GroAdminAllDomainUsers -DomainID $DomainID -XCsrfToken $XCsrfToken -Import $Import -Lang $Lang -Timeout $Timeout
} catch {
    Write-Host ("Exception occurred when calling Update-GroAdminAllDomainUsers: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **DomainID** | **Int32**| ID of the domain | 
 **XCsrfToken** | **String**| CSRF Token | [optional] 
 **Import** | **Boolean**| Import new users from LDAP | [optional] 
 **Lang** | **String**| Default language for imported users | [optional] [default to &quot;&quot;]
 **Timeout** | **Decimal**| Time in seconds to wait for completion | [optional] [default to 1.0]

### Return type

[**UpdateAllUsers200Response**](UpdateAllUsers200Response.md) (PSCustomObject)

### Authorization

[JWTCookie](../README.md#JWTCookie)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Update-GroAdminAllUsers"></a>
# **Update-GroAdminAllUsers**
> UpdateAllUsers200Response Update-GroAdminAllUsers<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-XCsrfToken] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Import] <System.Nullable[Boolean]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Lang] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Timeout] <System.Nullable[Decimal]><br>

Update all LDAP imported users

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: JWTCookie
$Configuration.ApiKey.grommunioAuthJwt = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.grommunioAuthJwt = "Bearer"

$XCsrfToken = "MyXCsrfToken" # String | CSRF Token (optional)
$Import = $true # Boolean | Import new users from LDAP (optional)
$Lang = "MyLang" # String | Default language for imported users (optional) (default to "")
$Timeout = 8.14 # Decimal | Time in seconds to wait for completion (optional) (default to 1.0)

# Update all LDAP imported users
try {
    $Result = Update-GroAdminAllUsers -XCsrfToken $XCsrfToken -Import $Import -Lang $Lang -Timeout $Timeout
} catch {
    Write-Host ("Exception occurred when calling Update-GroAdminAllUsers: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **XCsrfToken** | **String**| CSRF Token | [optional] 
 **Import** | **Boolean**| Import new users from LDAP | [optional] 
 **Lang** | **String**| Default language for imported users | [optional] [default to &quot;&quot;]
 **Timeout** | **Decimal**| Time in seconds to wait for completion | [optional] [default to 1.0]

### Return type

[**UpdateAllUsers200Response**](UpdateAllUsers200Response.md) (PSCustomObject)

### Authorization

[JWTCookie](../README.md#JWTCookie)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Update-GroAdminOrgLDAPUsers"></a>
# **Update-GroAdminOrgLDAPUsers**
> UpdateAllUsers200Response Update-GroAdminOrgLDAPUsers<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ID] <Int32><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-XCsrfToken] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Import] <System.Nullable[Boolean]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Lang] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Timeout] <System.Nullable[Decimal]><br>

Update all LDAP imported users in this organization

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: JWTCookie
$Configuration.ApiKey.grommunioAuthJwt = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.grommunioAuthJwt = "Bearer"

$ID = 56 # Int32 | ID of the object
$XCsrfToken = "MyXCsrfToken" # String | CSRF Token (optional)
$Import = $true # Boolean | Import new users from LDAP (optional)
$Lang = "MyLang" # String | Default language for imported users (optional) (default to "")
$Timeout = 8.14 # Decimal | Time in seconds to wait for completion (optional) (default to 1.0)

# Update all LDAP imported users in this organization
try {
    $Result = Update-GroAdminOrgLDAPUsers -ID $ID -XCsrfToken $XCsrfToken -Import $Import -Lang $Lang -Timeout $Timeout
} catch {
    Write-Host ("Exception occurred when calling Update-GroAdminOrgLDAPUsers: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ID** | **Int32**| ID of the object | 
 **XCsrfToken** | **String**| CSRF Token | [optional] 
 **Import** | **Boolean**| Import new users from LDAP | [optional] 
 **Lang** | **String**| Default language for imported users | [optional] [default to &quot;&quot;]
 **Timeout** | **Decimal**| Time in seconds to wait for completion | [optional] [default to 1.0]

### Return type

[**UpdateAllUsers200Response**](UpdateAllUsers200Response.md) (PSCustomObject)

### Authorization

[JWTCookie](../README.md#JWTCookie)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

