# GrommunioAdmin.GrommunioAdmin\Api.GroAdminSystemAdminDomainsApi

All URIs are relative to */api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Invoke-GroAdminDeleteDomain**](GroAdminSystemAdminDomainsApi.md#Invoke-GroAdminDeleteDomain) | **DELETE** /system/domains/{domainID} | Delete domain
[**Get-GroAdminAllUsers**](GroAdminSystemAdminDomainsApi.md#Get-GroAdminAllUsers) | **GET** /system/users | Get list of all users
[**Get-GroAdminDomainInfo**](GroAdminSystemAdminDomainsApi.md#Get-GroAdminDomainInfo) | **GET** /system/domains/{domainID} | Get detailed info about domain
[**Get-GroAdminDomains**](GroAdminSystemAdminDomainsApi.md#Get-GroAdminDomains) | **GET** /system/domains | Get lists of domains
[**Invoke-GroAdminPatchDomain**](GroAdminSystemAdminDomainsApi.md#Invoke-GroAdminPatchDomain) | **PATCH** /system/domains/{domainID} | Update domain
[**Submit-GroAdminDomain**](GroAdminSystemAdminDomainsApi.md#Submit-GroAdminDomain) | **POST** /system/domains | Create new domain


<a id="Invoke-GroAdminDeleteDomain"></a>
# **Invoke-GroAdminDeleteDomain**
> void Invoke-GroAdminDeleteDomain<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-DomainID] <Int32><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-XCsrfToken] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Purge] <System.Nullable[Boolean]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-DeleteFiles] <System.Nullable[Boolean]><br>

Delete domain

Removes domain (purge=true) or marks it as deleted (purge=false)

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
$Purge = $true # Boolean | Permanently delete the domain (optional) (default to $false)
$DeleteFiles = $true # Boolean | Delete files from disk when purging (optional) (default to $false)

# Delete domain
try {
    $Result = Invoke-GroAdminDeleteDomain -DomainID $DomainID -XCsrfToken $XCsrfToken -Purge $Purge -DeleteFiles $DeleteFiles
} catch {
    Write-Host ("Exception occurred when calling Invoke-GroAdminDeleteDomain: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **DomainID** | **Int32**| ID of the domain | 
 **XCsrfToken** | **String**| CSRF Token | [optional] 
 **Purge** | **Boolean**| Permanently delete the domain | [optional] [default to $false]
 **DeleteFiles** | **Boolean**| Delete files from disk when purging | [optional] [default to $false]

### Return type

void (empty response body)

### Authorization

[JWTCookie](../README.md#JWTCookie)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-GroAdminAllUsers"></a>
# **Get-GroAdminAllUsers**
> GetAllUsers200Response Get-GroAdminAllUsers<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Level] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Limit] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Offset] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Match] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-MatchFields] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-FilterProp] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-MatchProps] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Properties] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Mlist] <String><br>

Get list of all users

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
$FilterProp = "MyFilterProp" # String | Filter by user property (optional)
$MatchProps = "MyMatchProps" # String | Comma separated list of user properties to match (optional)
$Properties = "MyProperties" # String | Comma separated list of properties to return (optional)
$Mlist = "" # String | Hide MList users (optional)

# Get list of all users
try {
    $Result = Get-GroAdminAllUsers -Level $Level -Limit $Limit -Offset $Offset -Match $Match -MatchFields $MatchFields -FilterProp $FilterProp -MatchProps $MatchProps -Properties $Properties -Mlist $Mlist
} catch {
    Write-Host ("Exception occurred when calling Get-GroAdminAllUsers: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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
 **FilterProp** | **String**| Filter by user property | [optional] 
 **MatchProps** | **String**| Comma separated list of user properties to match | [optional] 
 **Properties** | **String**| Comma separated list of properties to return | [optional] 
 **Mlist** | **String**| Hide MList users | [optional] 

### Return type

[**GetAllUsers200Response**](GetAllUsers200Response.md) (PSCustomObject)

### Authorization

[JWTCookie](../README.md#JWTCookie)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-GroAdminDomainInfo"></a>
# **Get-GroAdminDomainInfo**
> Domain Get-GroAdminDomainInfo<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-DomainID] <Int32><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Level] <System.Nullable[Int32]><br>

Get detailed info about domain

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: JWTCookie
$Configuration.ApiKey.grommunioAuthJwt = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.grommunioAuthJwt = "Bearer"

$DomainID = 56 # Int32 | ID of the domain
$Level = 56 # Int32 | Set detail level of return value. Usually ranges from 0 to 2. (optional)

# Get detailed info about domain
try {
    $Result = Get-GroAdminDomainInfo -DomainID $DomainID -Level $Level
} catch {
    Write-Host ("Exception occurred when calling Get-GroAdminDomainInfo: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **DomainID** | **Int32**| ID of the domain | 
 **Level** | **Int32**| Set detail level of return value. Usually ranges from 0 to 2. | [optional] 

### Return type

[**Domain**](Domain.md) (PSCustomObject)

### Authorization

[JWTCookie](../README.md#JWTCookie)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-GroAdminDomains"></a>
# **Get-GroAdminDomains**
> GetDomains200Response Get-GroAdminDomains<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Level] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Limit] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Offset] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Match] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-MatchFields] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Sort] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ID] <System.Nullable[Int32][]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-OrgID] <System.Nullable[Int32][]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Domainname] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-MaxUser] <System.Nullable[Int32][]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Title] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Address] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AdminName] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Tel] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-DomainStatus] <System.Nullable[Int32][]><br>

Get lists of domains

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
$ID = 0 # Int32[] | Filter one or more IDs (optional)
$OrgID = 0 # Int32[] | Filter by one or more organization IDs (optional)
$Domainname = "MyDomainname" # String | Filter by domainname (optional)
$MaxUser = 0 # Int32[] | Filter by number of maximum users (optional)
$Title = "MyTitle" # String | Filter by domain title (optional)
$Address = "MyAddress" # String | Filter by domain address property (optional)
$AdminName = "MyAdminName" # String | Filter by admin name (optional)
$Tel = "MyTel" # String | Filter by telephone number (optional)
$DomainStatus = 0 # Int32[] | Filter by one or more domain status values (optional)

# Get lists of domains
try {
    $Result = Get-GroAdminDomains -Level $Level -Limit $Limit -Offset $Offset -Match $Match -MatchFields $MatchFields -Sort $Sort -ID $ID -OrgID $OrgID -Domainname $Domainname -MaxUser $MaxUser -Title $Title -Address $Address -AdminName $AdminName -Tel $Tel -DomainStatus $DomainStatus
} catch {
    Write-Host ("Exception occurred when calling Get-GroAdminDomains: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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
 **ID** | [**Int32[]**](Int32.md)| Filter one or more IDs | [optional] 
 **OrgID** | [**Int32[]**](Int32.md)| Filter by one or more organization IDs | [optional] 
 **Domainname** | **String**| Filter by domainname | [optional] 
 **MaxUser** | [**Int32[]**](Int32.md)| Filter by number of maximum users | [optional] 
 **Title** | **String**| Filter by domain title | [optional] 
 **Address** | **String**| Filter by domain address property | [optional] 
 **AdminName** | **String**| Filter by admin name | [optional] 
 **Tel** | **String**| Filter by telephone number | [optional] 
 **DomainStatus** | [**Int32[]**](Int32.md)| Filter by one or more domain status values | [optional] 

### Return type

[**GetDomains200Response**](GetDomains200Response.md) (PSCustomObject)

### Authorization

[JWTCookie](../README.md#JWTCookie)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-GroAdminPatchDomain"></a>
# **Invoke-GroAdminPatchDomain**
> Domain Invoke-GroAdminPatchDomain<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-DomainID] <Int32><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-XCsrfToken] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-DomainWrite] <PSCustomObject><br>

Update domain

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
$SyncPolicyMaxattsize = Initialize-SyncPolicyMaxattsize 
$SyncPolicy = Initialize-SyncPolicy -Allowbluetooth "0" -Allowbrowser "0" -Allowcam "0" -Allowconsumeremail "0" -Allowdesktopsync "0" -Allowhtmlemail "0" -Allowinternetsharing "0" -Allowirda "0" -Allowpopimapemail "0" -Allowremotedesk "0" -Allowsimpledevpw "0" -Allowsmimeencalgneg "0" -Allowsmimesoftcerts "0" -Allowstoragecard "0" -Allowtextmessaging "0" -Allowunsignedapps "0" -Allowunsigninstallpacks "0" -Allowwifi "0" -Alphanumpwreq "0" -Approvedapplist "MyApprovedapplist" -Attenabled "0" -Devencenabled "0" -Devpwenabled "0" -Devpwexpiration 0 -Devpwhistory 0 -Maxattsize $SyncPolicyMaxattsize -Maxcalagefilter "0" -Maxdevpwfailedattempts 0 -Maxemailagefilter "0" -Maxemailbodytruncsize 0 -Maxemailhtmlbodytruncsize 0 -Maxinacttimedevlock 0 -Mindevcomplexchars 0 -Mindevpwlenngth 0 -Pwrecoveryenabled "0" -Reqdevenc "0" -Reqencsmimealgorithm "0" -Reqencsmimemessages "0" -Reqmansyncroam "0" -Reqsignedsmimealgorithm "0" -Reqsignedsmimemessages "0" -Reqstoragecardenc 0 -Unapprovedinromapplist "MyUnapprovedinromapplist"

$DomainWrite = Initialize-DomainWrite -ID 0 -OrgID 0 -Domainname "MyDomainname" -Displayname "MyDisplayname" -Homedir "MyHomedir" -MaxUser 0 -Title "MyTitle" -Address "MyAddress" -AdminName "MyAdminName" -Tel "MyTel" -EndDay "MyEndDay" -DomainStatus 0 -ActiveUsers 0 -InactiveUsers 0 -VirtualUsers 0 -SyncPolicy $SyncPolicy -Chat $false -Homeserver 0 # DomainWrite |  (optional)

# Update domain
try {
    $Result = Invoke-GroAdminPatchDomain -DomainID $DomainID -XCsrfToken $XCsrfToken -DomainWrite $DomainWrite
} catch {
    Write-Host ("Exception occurred when calling Invoke-GroAdminPatchDomain: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **DomainID** | **Int32**| ID of the domain | 
 **XCsrfToken** | **String**| CSRF Token | [optional] 
 **DomainWrite** | [**DomainWrite**](DomainWrite.md)|  | [optional] 

### Return type

[**Domain**](Domain.md) (PSCustomObject)

### Authorization

[JWTCookie](../README.md#JWTCookie)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Submit-GroAdminDomain"></a>
# **Submit-GroAdminDomain**
> Domain Submit-GroAdminDomain<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-XCsrfToken] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-CreateRole] <System.Nullable[Boolean]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-DomainWrite] <PSCustomObject><br>

Create new domain

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: JWTCookie
$Configuration.ApiKey.grommunioAuthJwt = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.grommunioAuthJwt = "Bearer"

$XCsrfToken = "MyXCsrfToken" # String | CSRF Token (optional)
$CreateRole = $true # Boolean | Whether to automatically create a domain admin role for the new domain (optional) (default to $false)
$SyncPolicyMaxattsize = Initialize-SyncPolicyMaxattsize 
$SyncPolicy = Initialize-SyncPolicy -Allowbluetooth "0" -Allowbrowser "0" -Allowcam "0" -Allowconsumeremail "0" -Allowdesktopsync "0" -Allowhtmlemail "0" -Allowinternetsharing "0" -Allowirda "0" -Allowpopimapemail "0" -Allowremotedesk "0" -Allowsimpledevpw "0" -Allowsmimeencalgneg "0" -Allowsmimesoftcerts "0" -Allowstoragecard "0" -Allowtextmessaging "0" -Allowunsignedapps "0" -Allowunsigninstallpacks "0" -Allowwifi "0" -Alphanumpwreq "0" -Approvedapplist "MyApprovedapplist" -Attenabled "0" -Devencenabled "0" -Devpwenabled "0" -Devpwexpiration 0 -Devpwhistory 0 -Maxattsize $SyncPolicyMaxattsize -Maxcalagefilter "0" -Maxdevpwfailedattempts 0 -Maxemailagefilter "0" -Maxemailbodytruncsize 0 -Maxemailhtmlbodytruncsize 0 -Maxinacttimedevlock 0 -Mindevcomplexchars 0 -Mindevpwlenngth 0 -Pwrecoveryenabled "0" -Reqdevenc "0" -Reqencsmimealgorithm "0" -Reqencsmimemessages "0" -Reqmansyncroam "0" -Reqsignedsmimealgorithm "0" -Reqsignedsmimemessages "0" -Reqstoragecardenc 0 -Unapprovedinromapplist "MyUnapprovedinromapplist"

$DomainWrite = Initialize-DomainWrite -ID 0 -OrgID 0 -Domainname "MyDomainname" -Displayname "MyDisplayname" -Homedir "MyHomedir" -MaxUser 0 -Title "MyTitle" -Address "MyAddress" -AdminName "MyAdminName" -Tel "MyTel" -EndDay "MyEndDay" -DomainStatus 0 -ActiveUsers 0 -InactiveUsers 0 -VirtualUsers 0 -SyncPolicy $SyncPolicy -Chat $false -Homeserver 0 # DomainWrite |  (optional)

# Create new domain
try {
    $Result = Submit-GroAdminDomain -XCsrfToken $XCsrfToken -CreateRole $CreateRole -DomainWrite $DomainWrite
} catch {
    Write-Host ("Exception occurred when calling Submit-GroAdminDomain: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **XCsrfToken** | **String**| CSRF Token | [optional] 
 **CreateRole** | **Boolean**| Whether to automatically create a domain admin role for the new domain | [optional] [default to $false]
 **DomainWrite** | [**DomainWrite**](DomainWrite.md)|  | [optional] 

### Return type

[**Domain**](Domain.md) (PSCustomObject)

### Authorization

[JWTCookie](../README.md#JWTCookie)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

