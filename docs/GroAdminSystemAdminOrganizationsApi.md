# GrommunioAdmin.GrommunioAdmin\Api.GroAdminSystemAdminOrganizationsApi

All URIs are relative to */api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Invoke-GroAdminDeleteOrg**](GroAdminSystemAdminOrganizationsApi.md#Invoke-GroAdminDeleteOrg) | **DELETE** /system/orgs/{ID} | Delete organization
[**Invoke-GroAdminDeleteOrgLDAPConf**](GroAdminSystemAdminOrganizationsApi.md#Invoke-GroAdminDeleteOrgLDAPConf) | **DELETE** /system/orgs/{ID}/ldap | Reset organization specific LDAP configuration
[**Get-GroAdminOrg**](GroAdminSystemAdminOrganizationsApi.md#Get-GroAdminOrg) | **GET** /system/orgs/{ID} | Get detailed information about an organization
[**Get-GroAdminOrgLDAPConf**](GroAdminSystemAdminOrganizationsApi.md#Get-GroAdminOrgLDAPConf) | **GET** /system/orgs/{ID}/ldap | Get organization specific LDAP configuration
[**Get-GroAdminOrgs**](GroAdminSystemAdminOrganizationsApi.md#Get-GroAdminOrgs) | **GET** /system/orgs | Get a list of organizations
[**Invoke-GroAdminPatchOrg**](GroAdminSystemAdminOrganizationsApi.md#Invoke-GroAdminPatchOrg) | **PATCH** /system/orgs/{ID} | Update organization
[**Submit-GroAdminOrgs**](GroAdminSystemAdminOrganizationsApi.md#Submit-GroAdminOrgs) | **POST** /system/orgs | Create new organization
[**Set-GroAdminOrgLDAPConf**](GroAdminSystemAdminOrganizationsApi.md#Set-GroAdminOrgLDAPConf) | **PUT** /system/orgs/{ID}/ldap | Set organization specific LDAP configuration


<a id="Invoke-GroAdminDeleteOrg"></a>
# **Invoke-GroAdminDeleteOrg**
> void Invoke-GroAdminDeleteOrg<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ID] <Int32><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-XCsrfToken] <String><br>

Delete organization

Delete the organization. Associated domains are made organizationless (orgID=0)

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

# Delete organization
try {
    $Result = Invoke-GroAdminDeleteOrg -ID $ID -XCsrfToken $XCsrfToken
} catch {
    Write-Host ("Exception occurred when calling Invoke-GroAdminDeleteOrg: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a id="Get-GroAdminOrg"></a>
# **Get-GroAdminOrg**
> Org Get-GroAdminOrg<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ID] <Int32><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Level] <System.Nullable[Int32]><br>

Get detailed information about an organization

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: JWTCookie
$Configuration.ApiKey.grommunioAuthJwt = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.grommunioAuthJwt = "Bearer"

$ID = 56 # Int32 | ID of the object
$Level = 56 # Int32 | Set detail level of return value. Usually ranges from 0 to 2. (optional)

# Get detailed information about an organization
try {
    $Result = Get-GroAdminOrg -ID $ID -Level $Level
} catch {
    Write-Host ("Exception occurred when calling Get-GroAdminOrg: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ID** | **Int32**| ID of the object | 
 **Level** | **Int32**| Set detail level of return value. Usually ranges from 0 to 2. | [optional] 

### Return type

[**Org**](Org.md) (PSCustomObject)

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

<a id="Get-GroAdminOrgs"></a>
# **Get-GroAdminOrgs**
> GetOrgs200Response Get-GroAdminOrgs<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Level] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Limit] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Offset] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Match] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-MatchFields] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Sort] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Name] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Description] <String><br>

Get a list of organizations

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: JWTCookie
$Configuration.ApiKey.grommunioAuthJwt = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.grommunioAuthJwt = "Bearer"

$Level = 56 # Int32 | Set detail level of return value. Usually ranges from 0 to 2. (optional)
$Limit = 56 # Int32 | Maximum number of results to return (optional) (default to 50)
$Offset = 56 # Int32 | Index of the first element to return (optional) (default to 0)
$Match = "MyMatch" # String | Match by substring (optional)
$MatchFields = "MyMatchFields" # String | Comma separated list of attributes to restrict matching to. (optional)
$Sort = "MySort" # String | Sort by attribute. Can be given multiple times. (optional)
$Name = "MyName" # String | Filter by name (optional)
$Description = "MyDescription" # String | Filter by description (optional)

# Get a list of organizations
try {
    $Result = Get-GroAdminOrgs -Level $Level -Limit $Limit -Offset $Offset -Match $Match -MatchFields $MatchFields -Sort $Sort -Name $Name -Description $Description
} catch {
    Write-Host ("Exception occurred when calling Get-GroAdminOrgs: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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
 **Name** | **String**| Filter by name | [optional] 
 **Description** | **String**| Filter by description | [optional] 

### Return type

[**GetOrgs200Response**](GetOrgs200Response.md) (PSCustomObject)

### Authorization

[JWTCookie](../README.md#JWTCookie)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-GroAdminPatchOrg"></a>
# **Invoke-GroAdminPatchOrg**
> Org Invoke-GroAdminPatchOrg<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ID] <Int32><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-XCsrfToken] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-OrgWrite] <PSCustomObject><br>

Update organization

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
$OrgWrite = Initialize-OrgWrite -Name "MyName" -Description "MyDescription" -Domains 0 # OrgWrite |  (optional)

# Update organization
try {
    $Result = Invoke-GroAdminPatchOrg -ID $ID -XCsrfToken $XCsrfToken -OrgWrite $OrgWrite
} catch {
    Write-Host ("Exception occurred when calling Invoke-GroAdminPatchOrg: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ID** | **Int32**| ID of the object | 
 **XCsrfToken** | **String**| CSRF Token | [optional] 
 **OrgWrite** | [**OrgWrite**](OrgWrite.md)|  | [optional] 

### Return type

[**Org**](Org.md) (PSCustomObject)

### Authorization

[JWTCookie](../README.md#JWTCookie)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Submit-GroAdminOrgs"></a>
# **Submit-GroAdminOrgs**
> Org Submit-GroAdminOrgs<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-XCsrfToken] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-OrgWrite] <PSCustomObject><br>

Create new organization

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: JWTCookie
$Configuration.ApiKey.grommunioAuthJwt = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.grommunioAuthJwt = "Bearer"

$XCsrfToken = "MyXCsrfToken" # String | CSRF Token (optional)
$OrgWrite = Initialize-OrgWrite -Name "MyName" -Description "MyDescription" -Domains 0 # OrgWrite |  (optional)

# Create new organization
try {
    $Result = Submit-GroAdminOrgs -XCsrfToken $XCsrfToken -OrgWrite $OrgWrite
} catch {
    Write-Host ("Exception occurred when calling Submit-GroAdminOrgs: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **XCsrfToken** | **String**| CSRF Token | [optional] 
 **OrgWrite** | [**OrgWrite**](OrgWrite.md)|  | [optional] 

### Return type

[**Org**](Org.md) (PSCustomObject)

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

