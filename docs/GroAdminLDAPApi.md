# GrommunioAdmin.GrommunioAdmin/Api.GroAdminLDAPApi

All URIs are relative to */api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Invoke-GroAdminCheckUsers**](GroAdminLDAPApi.md#Invoke-GroAdminCheckUsers) | **GET** /domains/ldap/check | checkUsers
[**Invoke-GroAdminDeleteLDAPConf**](GroAdminLDAPApi.md#Invoke-GroAdminDeleteLDAPConf) | **DELETE** /system/mconf/ldap | deleteLDAPConf
[**Invoke-GroAdminDeleteOrgLDAPConf**](GroAdminLDAPApi.md#Invoke-GroAdminDeleteOrgLDAPConf) | **DELETE** /system/orgs/{ID}/ldap | deleteOrgLDAPConf
[**Invoke-GroAdminDeleteOrphaned**](GroAdminLDAPApi.md#Invoke-GroAdminDeleteOrphaned) | **DELETE** /domains/ldap/check | deleteOrphaned
[**Get-GroAdminLDAP**](GroAdminLDAPApi.md#Get-GroAdminLDAP) | **GET** /domains/ldap/dump | dumpLDAP
[**Get-GroAdminLDAPConf**](GroAdminLDAPApi.md#Get-GroAdminLDAPConf) | **GET** /system/mconf/ldap | getLDAPConf
[**Get-GroAdminOrgLDAPConf**](GroAdminLDAPApi.md#Get-GroAdminOrgLDAPConf) | **GET** /system/orgs/{ID}/ldap | getOrgLDAPConf
[**Import-GroAdminLdapUser**](GroAdminLDAPApi.md#Import-GroAdminLdapUser) | **POST** /domains/ldap/importUser | importLdapUser
[**Send-GroAdminDownsync**](GroAdminLDAPApi.md#Send-GroAdminDownsync) | **PUT** /domains/{domainID}/users/{userID}/downsync | putDownsync
[**Search-GroAdminLDAP**](GroAdminLDAPApi.md#Search-GroAdminLDAP) | **GET** /domains/ldap/search | searchLDAP
[**Set-GroAdminLDAPConf**](GroAdminLDAPApi.md#Set-GroAdminLDAPConf) | **PUT** /system/mconf/ldap | setLDAPConf
[**Set-GroAdminOrgLDAPConf**](GroAdminLDAPApi.md#Set-GroAdminOrgLDAPConf) | **PUT** /system/orgs/{ID}/ldap | setOrgLDAPConf
[**Update-GroAdminAllDomainUsers**](GroAdminLDAPApi.md#Update-GroAdminAllDomainUsers) | **POST** /domains/{domainID}/ldap/downsync | updateAllDomainUsers
[**Update-GroAdminAllUsers**](GroAdminLDAPApi.md#Update-GroAdminAllUsers) | **POST** /domains/ldap/downsync | updateAllUsers
[**Update-GroAdminOrgLDAPUsers**](GroAdminLDAPApi.md#Update-GroAdminOrgLDAPUsers) | **POST** /system/orgs/{ID}/ldap/downsync | updateOrgLDAPUsers


<a name="Invoke-GroAdminCheckUsers"></a>
# **Invoke-GroAdminCheckUsers**
> DomainsLdapCheckResponse Invoke-GroAdminCheckUsers<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Domain] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Organization] <System.Nullable[Int32]><br>

checkUsers

Check status of ldap imported users

### Example
```powershell
$Domain = 56 # Int32 | ID of the domain (optional)
$Organization = 56 # Int32 | ID of the organization (optional)

# checkUsers
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

[**DomainsLdapCheckResponse**](DomainsLdapCheckResponse.md) (PSCustomObject)

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

<a name="Invoke-GroAdminDeleteOrgLDAPConf"></a>
# **Invoke-GroAdminDeleteOrgLDAPConf**
> void Invoke-GroAdminDeleteOrgLDAPConf<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ID] <Int32><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-XCsrfToken] <String><br>

deleteOrgLDAPConf

Reset organization specific LDAP configuration

### Example
```powershell
$ID = 56 # Int32 | ID of the object
$XCsrfToken = "MyXCsrfToken" # String | CSRF Token (optional)

# deleteOrgLDAPConf
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

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-GroAdminDeleteOrphaned"></a>
# **Invoke-GroAdminDeleteOrphaned**
> DomainsLdapCheckResponse1 Invoke-GroAdminDeleteOrphaned<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-XCsrfToken] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-DeleteFiles] <System.Nullable[Boolean]><br>

deleteOrphaned

Check status of ldap import users and delete orphaned

### Example
```powershell
$XCsrfToken = "MyXCsrfToken" # String | CSRF Token (optional)
$DeleteFiles = $true # Boolean | Delete user files on disk (optional) (default to $false)

# deleteOrphaned
try {
    $Result = Invoke-GroAdminDeleteOrphaned -XCsrfToken $XCsrfToken -DeleteFiles $DeleteFiles
} catch {
    Write-Host ("Exception occurred when calling Invoke-GroAdminDeleteOrphaned: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **XCsrfToken** | **String**| CSRF Token | [optional] 
 **DeleteFiles** | **Boolean**| Delete user files on disk | [optional] [default to $false]

### Return type

[**DomainsLdapCheckResponse1**](DomainsLdapCheckResponse1.md) (PSCustomObject)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Get-GroAdminLDAP"></a>
# **Get-GroAdminLDAP**
> DomainsLdapDumpResponse Get-GroAdminLDAP<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ID] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Domain] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Organization] <System.Nullable[Int32]><br>

dumpLDAP

Dump LDAP object

### Example
```powershell
$ID = "MyID" # String | LDAP object ID of the person to import
$Domain = 56 # Int32 | ID of the domain (optional)
$Organization = 56 # Int32 | ID of the organization (optional)

# dumpLDAP
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

[**DomainsLdapDumpResponse**](DomainsLdapDumpResponse.md) (PSCustomObject)

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

<a name="Get-GroAdminOrgLDAPConf"></a>
# **Get-GroAdminOrgLDAPConf**
> SystemOrgsLdapResponse Get-GroAdminOrgLDAPConf<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ID] <Int32><br>

getOrgLDAPConf

Get organization specific LDAP configuration

### Example
```powershell
$ID = 56 # Int32 | ID of the object

# getOrgLDAPConf
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

[**SystemOrgsLdapResponse**](SystemOrgsLdapResponse.md) (PSCustomObject)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Import-GroAdminLdapUser"></a>
# **Import-GroAdminLdapUser**
> ImportLdapUser200Response Import-GroAdminLdapUser<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ID] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-XCsrfToken] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Force] <System.Nullable[Boolean]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Lang] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Domain] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Organization] <System.Nullable[Int32]><br>

importLdapUser

Import user from ldap

### Example
```powershell
$ID = "MyID" # String | LDAP object ID of the person to import
$XCsrfToken = "MyXCsrfToken" # String | CSRF Token (optional)
$Force = $true # Boolean | Force update existing users that are not associated with the LDAP object (optional) (default to $false)
$Lang = "MyLang" # String | Default language for imported users (optional)
$Domain = 56 # Int32 | ID of the domain (optional)
$Organization = 56 # Int32 | ID of the organization (optional)

# importLdapUser
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
 **Lang** | **String**| Default language for imported users | [optional] 
 **Domain** | **Int32**| ID of the domain | [optional] 
 **Organization** | **Int32**| ID of the organization | [optional] 

### Return type

[**ImportLdapUser200Response**](ImportLdapUser200Response.md) (PSCustomObject)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Send-GroAdminDownsync"></a>
# **Send-GroAdminDownsync**
> User Send-GroAdminDownsync<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-DomainID] <Int32><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-UserID] <Int32><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-XCsrfToken] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ID] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Lang] <String><br>

putDownsync

Update user from LDAP

### Example
```powershell
$DomainID = 56 # Int32 | ID of the domain
$UserID = 56 # Int32 | ID of the user
$XCsrfToken = "MyXCsrfToken" # String | CSRF Token (optional)
$ID = "MyID" # String | Optional LDAP object ID (optional)
$Lang = "MyLang" # String | Default language for imported users (optional)

# putDownsync
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
 **Lang** | **String**| Default language for imported users | [optional] 

### Return type

[**User**](User.md) (PSCustomObject)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Search-GroAdminLDAP"></a>
# **Search-GroAdminLDAP**
> DomainsLdapSearchResponse Search-GroAdminLDAP<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Query] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Limit] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Domain] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Organization] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ShowAll] <System.Nullable[Boolean]><br>

searchLDAP

Perform LDAP user search

### Example
```powershell
$Query = "MyQuery" # String | Search term
$Limit = 56 # Int32 | Maximum number of results to return (optional) (default to 50)
$Domain = 56 # Int32 | ID of the domain (optional)
$Organization = 56 # Int32 | ID of the organization (optional)
$ShowAll = $true # Boolean | Do not filter un-importable results (optional) (default to $false)

# searchLDAP
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

[**DomainsLdapSearchResponse**](DomainsLdapSearchResponse.md) (PSCustomObject)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
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

<a name="Set-GroAdminOrgLDAPConf"></a>
# **Set-GroAdminOrgLDAPConf**
> void Set-GroAdminOrgLDAPConf<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ID] <Int32><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-XCsrfToken] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SetOrgLDAPConfRequest] <PSCustomObject><br>

setOrgLDAPConf

Set organization specific LDAP configuration

### Example
```powershell
$ID = 56 # Int32 | ID of the object
$XCsrfToken = "MyXCsrfToken" # String | CSRF Token (optional)
$LdapConfigConnection = Initialize-LdapConfigConnection -Server "MyServer" -BindUser "MyBindUser" -BindPass "MyBindPass" -Starttls $false
$LdapConfigUsers = Initialize-LdapConfigUsers -Username "MyUsername" -DisplayName "MyDisplayName" -Filters "MyFilters" -VarFilter "(&(objectclass=person)(mailPrimaryAddress=*))" -Templates "MyTemplates" -Attributes @{ key_example = "MyInner" } -DefaultQuota 0 -SearchAttributes "MySearchAttributes" -Aliases "MyAliases"
$SetOrgLDAPConfRequest = Initialize-SetOrgLDAPConfRequest -Disabled $false -Connection $LdapConfigConnection -BaseDn "MyBaseDn" -ObjectID "MyObjectID" -Users $LdapConfigUsers # SetOrgLDAPConfRequest |  (optional)

# setOrgLDAPConf
try {
    $Result = Set-GroAdminOrgLDAPConf -ID $ID -XCsrfToken $XCsrfToken -SetOrgLDAPConfRequest $SetOrgLDAPConfRequest
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
 **SetOrgLDAPConfRequest** | [**SetOrgLDAPConfRequest**](SetOrgLDAPConfRequest.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Update-GroAdminAllDomainUsers"></a>
# **Update-GroAdminAllDomainUsers**
> DomainsLdapDownsyncResponse Update-GroAdminAllDomainUsers<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-DomainID] <Int32><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-XCsrfToken] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Import] <System.Nullable[Boolean]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Lang] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Timeout] <System.Nullable[Double]><br>

updateAllDomainUsers

Update all LDAP imported users in this domain

### Example
```powershell
$DomainID = 56 # Int32 | ID of the domain
$XCsrfToken = "MyXCsrfToken" # String | CSRF Token (optional)
$Import = $true # Boolean | Import new users from LDAP (optional)
$Lang = "MyLang" # String | Default language for imported users (optional)
$Timeout = 1.2 # Double | Time in seconds to wait for completion (optional) (default to 1)

# updateAllDomainUsers
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
 **Lang** | **String**| Default language for imported users | [optional] 
 **Timeout** | **Double**| Time in seconds to wait for completion | [optional] [default to 1]

### Return type

[**DomainsLdapDownsyncResponse**](DomainsLdapDownsyncResponse.md) (PSCustomObject)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Update-GroAdminAllUsers"></a>
# **Update-GroAdminAllUsers**
> DomainsLdapDownsyncResponse Update-GroAdminAllUsers<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-XCsrfToken] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Import] <System.Nullable[Boolean]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Lang] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Timeout] <System.Nullable[Double]><br>

updateAllUsers

Update all LDAP imported users

### Example
```powershell
$XCsrfToken = "MyXCsrfToken" # String | CSRF Token (optional)
$Import = $true # Boolean | Import new users from LDAP (optional)
$Lang = "MyLang" # String | Default language for imported users (optional)
$Timeout = 1.2 # Double | Time in seconds to wait for completion (optional) (default to 1)

# updateAllUsers
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
 **Lang** | **String**| Default language for imported users | [optional] 
 **Timeout** | **Double**| Time in seconds to wait for completion | [optional] [default to 1]

### Return type

[**DomainsLdapDownsyncResponse**](DomainsLdapDownsyncResponse.md) (PSCustomObject)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Update-GroAdminOrgLDAPUsers"></a>
# **Update-GroAdminOrgLDAPUsers**
> SystemOrgsLdapDownsyncResponse Update-GroAdminOrgLDAPUsers<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ID] <Int32><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-XCsrfToken] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Import] <System.Nullable[Boolean]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Lang] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Timeout] <System.Nullable[Double]><br>

updateOrgLDAPUsers

Update all LDAP imported users in this organization

### Example
```powershell
$ID = 56 # Int32 | ID of the object
$XCsrfToken = "MyXCsrfToken" # String | CSRF Token (optional)
$Import = $true # Boolean | Import new users from LDAP (optional)
$Lang = "MyLang" # String | Default language for imported users (optional)
$Timeout = 1.2 # Double | Time in seconds to wait for completion (optional) (default to 1)

# updateOrgLDAPUsers
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
 **Lang** | **String**| Default language for imported users | [optional] 
 **Timeout** | **Double**| Time in seconds to wait for completion | [optional] [default to 1]

### Return type

[**SystemOrgsLdapDownsyncResponse**](SystemOrgsLdapDownsyncResponse.md) (PSCustomObject)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

