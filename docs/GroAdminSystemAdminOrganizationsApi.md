# GrommunioAdmin.GrommunioAdmin/Api.GroAdminSystemAdminOrganizationsApi

All URIs are relative to */api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Invoke-GroAdminDeleteOrg**](GroAdminSystemAdminOrganizationsApi.md#Invoke-GroAdminDeleteOrg) | **DELETE** /system/orgs/{ID} | deleteOrg
[**Invoke-GroAdminDeleteOrgLDAPConf**](GroAdminSystemAdminOrganizationsApi.md#Invoke-GroAdminDeleteOrgLDAPConf) | **DELETE** /system/orgs/{ID}/ldap | deleteOrgLDAPConf
[**Get-GroAdminOrg**](GroAdminSystemAdminOrganizationsApi.md#Get-GroAdminOrg) | **GET** /system/orgs/{ID} | getOrg
[**Get-GroAdminOrgLDAPConf**](GroAdminSystemAdminOrganizationsApi.md#Get-GroAdminOrgLDAPConf) | **GET** /system/orgs/{ID}/ldap | getOrgLDAPConf
[**Get-GroAdminOrgs**](GroAdminSystemAdminOrganizationsApi.md#Get-GroAdminOrgs) | **GET** /system/orgs | getOrgs
[**Invoke-GroAdminPatchOrg**](GroAdminSystemAdminOrganizationsApi.md#Invoke-GroAdminPatchOrg) | **PATCH** /system/orgs/{ID} | patchOrg
[**Submit-GroAdminOrgs**](GroAdminSystemAdminOrganizationsApi.md#Submit-GroAdminOrgs) | **POST** /system/orgs | postOrgs
[**Set-GroAdminOrgLDAPConf**](GroAdminSystemAdminOrganizationsApi.md#Set-GroAdminOrgLDAPConf) | **PUT** /system/orgs/{ID}/ldap | setOrgLDAPConf


<a name="Invoke-GroAdminDeleteOrg"></a>
# **Invoke-GroAdminDeleteOrg**
> void Invoke-GroAdminDeleteOrg<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ID] <Int32><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-XCsrfToken] <String><br>

deleteOrg

Delete the organization. Associated domains are made organizationless (orgID=0)

### Example
```powershell
$ID = 56 # Int32 | ID of the object
$XCsrfToken = "MyXCsrfToken" # String | CSRF Token (optional)

# deleteOrg
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

<a name="Get-GroAdminOrg"></a>
# **Get-GroAdminOrg**
> Org Get-GroAdminOrg<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ID] <Int32><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Level] <System.Nullable[Int32]><br>

getOrg

Get detailed information about an organization

### Example
```powershell
$ID = 56 # Int32 | ID of the object
$Level = 56 # Int32 | Set detail level of return value. Usually ranges from 0 to 2. (optional)

# getOrg
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

<a name="Get-GroAdminOrgs"></a>
# **Get-GroAdminOrgs**
> SystemOrgsResponse Get-GroAdminOrgs<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Level] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Limit] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Offset] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Match] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-MatchFields] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Sort] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Name] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Description] <String><br>

getOrgs

Get a list of organizations

### Example
```powershell
$Level = 56 # Int32 | Set detail level of return value. Usually ranges from 0 to 2. (optional)
$Limit = 56 # Int32 | Maximum number of results to return (optional) (default to 50)
$Offset = 56 # Int32 | Index of the first element to return (optional) (default to 0)
$Match = "MyMatch" # String | Match by substring (optional)
$MatchFields = "MyMatchFields" # String | Comma separated list of attributes to restrict matching to. (optional)
$Sort = "MySort" # String | Sort by attribute. Can be given multiple times. (optional)
$Name = "MyName" # String | Filter by name (optional)
$Description = "MyDescription" # String | Filter by description (optional)

# getOrgs
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

[**SystemOrgsResponse**](SystemOrgsResponse.md) (PSCustomObject)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-GroAdminPatchOrg"></a>
# **Invoke-GroAdminPatchOrg**
> Org Invoke-GroAdminPatchOrg<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ID] <Int32><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-XCsrfToken] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PostOrgsRequest] <PSCustomObject><br>

patchOrg

Update organization

### Example
```powershell
$ID = 56 # Int32 | ID of the object
$XCsrfToken = "MyXCsrfToken" # String | CSRF Token (optional)
$PostOrgsRequest = Initialize-PostOrgsRequest -Name "MyName" -Description "MyDescription" -Domains 0 # PostOrgsRequest |  (optional)

# patchOrg
try {
    $Result = Invoke-GroAdminPatchOrg -ID $ID -XCsrfToken $XCsrfToken -PostOrgsRequest $PostOrgsRequest
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
 **PostOrgsRequest** | [**PostOrgsRequest**](PostOrgsRequest.md)|  | [optional] 

### Return type

[**Org**](Org.md) (PSCustomObject)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Submit-GroAdminOrgs"></a>
# **Submit-GroAdminOrgs**
> Org Submit-GroAdminOrgs<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-XCsrfToken] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PostOrgsRequest] <PSCustomObject><br>

postOrgs

Create new organization

### Example
```powershell
$XCsrfToken = "MyXCsrfToken" # String | CSRF Token (optional)
$PostOrgsRequest = Initialize-PostOrgsRequest -Name "MyName" -Description "MyDescription" -Domains 0 # PostOrgsRequest |  (optional)

# postOrgs
try {
    $Result = Submit-GroAdminOrgs -XCsrfToken $XCsrfToken -PostOrgsRequest $PostOrgsRequest
} catch {
    Write-Host ("Exception occurred when calling Submit-GroAdminOrgs: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **XCsrfToken** | **String**| CSRF Token | [optional] 
 **PostOrgsRequest** | [**PostOrgsRequest**](PostOrgsRequest.md)|  | [optional] 

### Return type

[**Org**](Org.md) (PSCustomObject)

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

