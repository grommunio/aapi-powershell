# GrommunioAdmin.GrommunioAdmin/Api.GroAdminSystemAdminDomainsApi

All URIs are relative to */api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Invoke-GroAdminDeleteDomain**](GroAdminSystemAdminDomainsApi.md#Invoke-GroAdminDeleteDomain) | **DELETE** /system/domains/{domainID} | deleteDomain
[**Get-GroAdminAllUsers**](GroAdminSystemAdminDomainsApi.md#Get-GroAdminAllUsers) | **GET** /system/users | getAllUsers
[**Get-GroAdminDomainInfo**](GroAdminSystemAdminDomainsApi.md#Get-GroAdminDomainInfo) | **GET** /system/domains/{domainID} | getDomainInfo
[**Get-GroAdminDomains**](GroAdminSystemAdminDomainsApi.md#Get-GroAdminDomains) | **GET** /system/domains | getDomains
[**Invoke-GroAdminPatchDomain**](GroAdminSystemAdminDomainsApi.md#Invoke-GroAdminPatchDomain) | **PATCH** /system/domains/{domainID} | patchDomain
[**Submit-GroAdminDomain**](GroAdminSystemAdminDomainsApi.md#Submit-GroAdminDomain) | **POST** /system/domains | postDomain


<a name="Invoke-GroAdminDeleteDomain"></a>
# **Invoke-GroAdminDeleteDomain**
> void Invoke-GroAdminDeleteDomain<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-DomainID] <Int32><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-XCsrfToken] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Purge] <System.Nullable[Boolean]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-DeleteFiles] <System.Nullable[Boolean]><br>

deleteDomain

Removes domain (purge=true) or marks it as deleted (purge=false)

### Example
```powershell
$DomainID = 56 # Int32 | ID of the domain
$XCsrfToken = "MyXCsrfToken" # String | CSRF Token (optional)
$Purge = $true # Boolean | Permanently delete the domain (optional) (default to $false)
$DeleteFiles = $true # Boolean | Delete files from disk when purging (optional) (default to $false)

# deleteDomain
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

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Get-GroAdminAllUsers"></a>
# **Get-GroAdminAllUsers**
> SystemUsersResponse Get-GroAdminAllUsers<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Level] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Limit] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Offset] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Match] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-MatchFields] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Properties] <String><br>

getAllUsers

Get list of all users

### Example
```powershell
$Level = 56 # Int32 | Set detail level of return value. Usually ranges from 0 to 2. (optional)
$Limit = 56 # Int32 | Maximum number of results to return (optional) (default to 50)
$Offset = 56 # Int32 | Index of the first element to return (optional) (default to 0)
$Match = "MyMatch" # String | Match by substring (optional)
$MatchFields = "MyMatchFields" # String | Comma separated list of attributes to restrict matching to. (optional)
$Properties = "MyProperties" # String | Comma separated list of properties to return (optional)

# getAllUsers
try {
    $Result = Get-GroAdminAllUsers -Level $Level -Limit $Limit -Offset $Offset -Match $Match -MatchFields $MatchFields -Properties $Properties
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
 **Properties** | **String**| Comma separated list of properties to return | [optional] 

### Return type

[**SystemUsersResponse**](SystemUsersResponse.md) (PSCustomObject)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Get-GroAdminDomainInfo"></a>
# **Get-GroAdminDomainInfo**
> Domain Get-GroAdminDomainInfo<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-DomainID] <Int32><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Level] <System.Nullable[Int32]><br>

getDomainInfo

Get detailed info about domain

### Example
```powershell
$DomainID = 56 # Int32 | ID of the domain
$Level = 56 # Int32 | Set detail level of return value. Usually ranges from 0 to 2. (optional)

# getDomainInfo
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

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Get-GroAdminDomains"></a>
# **Get-GroAdminDomains**
> SystemDomainsResponse Get-GroAdminDomains<br>
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

getDomains

Get lists of domains

### Example
```powershell
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

# getDomains
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

[**SystemDomainsResponse**](SystemDomainsResponse.md) (PSCustomObject)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-GroAdminPatchDomain"></a>
# **Invoke-GroAdminPatchDomain**
> Domain Invoke-GroAdminPatchDomain<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-DomainID] <Int32><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-XCsrfToken] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PostDomainRequest] <PSCustomObject><br>

patchDomain

Update domain

### Example
```powershell
$DomainID = 56 # Int32 | ID of the domain
$XCsrfToken = "MyXCsrfToken" # String | CSRF Token (optional)
$Allowbluetooth = Initialize-Allowbluetooth 
$Allowbrowser = Initialize-Allowbrowser 
$Allowcam = Initialize-Allowcam 
$Allowconsumeremail = Initialize-Allowconsumeremail 
$Allowdesktopsync = Initialize-Allowdesktopsync 
$Allowhtmlemail = Initialize-Allowhtmlemail 
$Allowinternetsharing = Initialize-Allowinternetsharing 
$Allowirda = Initialize-Allowirda 
$Allowpopimapemail = Initialize-Allowpopimapemail 
$Allowremotedesk = Initialize-Allowremotedesk 
$Allowsimpledevpw = Initialize-Allowsimpledevpw 
$Allowsmimeencalgneg = Initialize-Allowsmimeencalgneg 
$Allowsmimesoftcerts = Initialize-Allowsmimesoftcerts 
$Allowstoragecard = Initialize-Allowstoragecard 
$Allowtextmessaging = Initialize-Allowtextmessaging 
$Allowunsignedapps = Initialize-Allowunsignedapps 
$Allowunsigninstallpacks = Initialize-Allowunsigninstallpacks 
$Allowwifi = Initialize-Allowwifi 
$Alphanumpwreq = Initialize-Alphanumpwreq 
$Attenabled = Initialize-Attenabled 
$Devencenabled = Initialize-Devencenabled 
$Devpwenabled = Initialize-Devpwenabled 
$SyncPolicyMaxattsize = Initialize-SyncPolicyMaxattsize 
$Maxcalagefilter = Initialize-Maxcalagefilter 
$Maxemailagefilter = Initialize-Maxemailagefilter 
$Pwrecoveryenabled = Initialize-Pwrecoveryenabled 
$Reqdevenc = Initialize-Reqdevenc 
$Reqencsmimealgorithm = Initialize-Reqencsmimealgorithm 
$Reqencsmimemessages = Initialize-Reqencsmimemessages 
$Reqmansyncroam = Initialize-Reqmansyncroam 
$Reqsignedsmimealgorithm = Initialize-Reqsignedsmimealgorithm 
$Reqsignedsmimemessages = Initialize-Reqsignedsmimemessages 
$DomainCommonSyncPolicy = Initialize-DomainCommonSyncPolicy -Allowbluetooth $Allowbluetooth -Allowbrowser $Allowbrowser -Allowcam $Allowcam -Allowconsumeremail $Allowconsumeremail -Allowdesktopsync $Allowdesktopsync -Allowhtmlemail $Allowhtmlemail -Allowinternetsharing $Allowinternetsharing -Allowirda $Allowirda -Allowpopimapemail $Allowpopimapemail -Allowremotedesk $Allowremotedesk -Allowsimpledevpw $Allowsimpledevpw -Allowsmimeencalgneg $Allowsmimeencalgneg -Allowsmimesoftcerts $Allowsmimesoftcerts -Allowstoragecard $Allowstoragecard -Allowtextmessaging $Allowtextmessaging -Allowunsignedapps $Allowunsignedapps -Allowunsigninstallpacks $Allowunsigninstallpacks -Allowwifi $Allowwifi -Alphanumpwreq $Alphanumpwreq -Approvedapplist "MyApprovedapplist" -Attenabled $Attenabled -Devencenabled $Devencenabled -Devpwenabled $Devpwenabled -Devpwexpiration 0 -Devpwhistory 0 -Maxattsize $SyncPolicyMaxattsize -Maxcalagefilter $Maxcalagefilter -Maxdevpwfailedattempts 0 -Maxemailagefilter $Maxemailagefilter -Maxemailbodytruncsize 0 -Maxemailhtmlbodytruncsize 0 -Maxinacttimedevlock 0 -Mindevcomplexchars 0 -Mindevpwlenngth 0 -Pwrecoveryenabled $Pwrecoveryenabled -Reqdevenc $Reqdevenc -Reqencsmimealgorithm $Reqencsmimealgorithm -Reqencsmimemessages $Reqencsmimemessages -Reqmansyncroam $Reqmansyncroam -Reqsignedsmimealgorithm $Reqsignedsmimealgorithm -Reqsignedsmimemessages $Reqsignedsmimemessages -Unapprovedinromapplist "MyUnapprovedinromapplist"

$PostDomainRequest = Initialize-PostDomainRequest -ID 0 -OrgID 0 -Domainname "MyDomainname" -Displayname "MyDisplayname" -Homedir "MyHomedir" -MaxUser 0 -Title "MyTitle" -Address "MyAddress" -AdminName "MyAdminName" -Tel "MyTel" -EndDay "MyEndDay" -DomainStatus 0 -ActiveUsers 0 -InactiveUsers 0 -SyncPolicy $DomainCommonSyncPolicy -Chat $false -Homeserver 0 # PostDomainRequest |  (optional)

# patchDomain
try {
    $Result = Invoke-GroAdminPatchDomain -DomainID $DomainID -XCsrfToken $XCsrfToken -PostDomainRequest $PostDomainRequest
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
 **PostDomainRequest** | [**PostDomainRequest**](PostDomainRequest.md)|  | [optional] 

### Return type

[**Domain**](Domain.md) (PSCustomObject)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Submit-GroAdminDomain"></a>
# **Submit-GroAdminDomain**
> Domain Submit-GroAdminDomain<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-XCsrfToken] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-CreateRole] <System.Nullable[Boolean]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PostDomainRequest] <PSCustomObject><br>

postDomain

Create new domain

### Example
```powershell
$XCsrfToken = "MyXCsrfToken" # String | CSRF Token (optional)
$CreateRole = $true # Boolean | Whether to automatically create a domain admin role for the new domain (optional) (default to $false)
$Allowbluetooth = Initialize-Allowbluetooth 
$Allowbrowser = Initialize-Allowbrowser 
$Allowcam = Initialize-Allowcam 
$Allowconsumeremail = Initialize-Allowconsumeremail 
$Allowdesktopsync = Initialize-Allowdesktopsync 
$Allowhtmlemail = Initialize-Allowhtmlemail 
$Allowinternetsharing = Initialize-Allowinternetsharing 
$Allowirda = Initialize-Allowirda 
$Allowpopimapemail = Initialize-Allowpopimapemail 
$Allowremotedesk = Initialize-Allowremotedesk 
$Allowsimpledevpw = Initialize-Allowsimpledevpw 
$Allowsmimeencalgneg = Initialize-Allowsmimeencalgneg 
$Allowsmimesoftcerts = Initialize-Allowsmimesoftcerts 
$Allowstoragecard = Initialize-Allowstoragecard 
$Allowtextmessaging = Initialize-Allowtextmessaging 
$Allowunsignedapps = Initialize-Allowunsignedapps 
$Allowunsigninstallpacks = Initialize-Allowunsigninstallpacks 
$Allowwifi = Initialize-Allowwifi 
$Alphanumpwreq = Initialize-Alphanumpwreq 
$Attenabled = Initialize-Attenabled 
$Devencenabled = Initialize-Devencenabled 
$Devpwenabled = Initialize-Devpwenabled 
$SyncPolicyMaxattsize = Initialize-SyncPolicyMaxattsize 
$Maxcalagefilter = Initialize-Maxcalagefilter 
$Maxemailagefilter = Initialize-Maxemailagefilter 
$Pwrecoveryenabled = Initialize-Pwrecoveryenabled 
$Reqdevenc = Initialize-Reqdevenc 
$Reqencsmimealgorithm = Initialize-Reqencsmimealgorithm 
$Reqencsmimemessages = Initialize-Reqencsmimemessages 
$Reqmansyncroam = Initialize-Reqmansyncroam 
$Reqsignedsmimealgorithm = Initialize-Reqsignedsmimealgorithm 
$Reqsignedsmimemessages = Initialize-Reqsignedsmimemessages 
$DomainCommonSyncPolicy = Initialize-DomainCommonSyncPolicy -Allowbluetooth $Allowbluetooth -Allowbrowser $Allowbrowser -Allowcam $Allowcam -Allowconsumeremail $Allowconsumeremail -Allowdesktopsync $Allowdesktopsync -Allowhtmlemail $Allowhtmlemail -Allowinternetsharing $Allowinternetsharing -Allowirda $Allowirda -Allowpopimapemail $Allowpopimapemail -Allowremotedesk $Allowremotedesk -Allowsimpledevpw $Allowsimpledevpw -Allowsmimeencalgneg $Allowsmimeencalgneg -Allowsmimesoftcerts $Allowsmimesoftcerts -Allowstoragecard $Allowstoragecard -Allowtextmessaging $Allowtextmessaging -Allowunsignedapps $Allowunsignedapps -Allowunsigninstallpacks $Allowunsigninstallpacks -Allowwifi $Allowwifi -Alphanumpwreq $Alphanumpwreq -Approvedapplist "MyApprovedapplist" -Attenabled $Attenabled -Devencenabled $Devencenabled -Devpwenabled $Devpwenabled -Devpwexpiration 0 -Devpwhistory 0 -Maxattsize $SyncPolicyMaxattsize -Maxcalagefilter $Maxcalagefilter -Maxdevpwfailedattempts 0 -Maxemailagefilter $Maxemailagefilter -Maxemailbodytruncsize 0 -Maxemailhtmlbodytruncsize 0 -Maxinacttimedevlock 0 -Mindevcomplexchars 0 -Mindevpwlenngth 0 -Pwrecoveryenabled $Pwrecoveryenabled -Reqdevenc $Reqdevenc -Reqencsmimealgorithm $Reqencsmimealgorithm -Reqencsmimemessages $Reqencsmimemessages -Reqmansyncroam $Reqmansyncroam -Reqsignedsmimealgorithm $Reqsignedsmimealgorithm -Reqsignedsmimemessages $Reqsignedsmimemessages -Unapprovedinromapplist "MyUnapprovedinromapplist"

$PostDomainRequest = Initialize-PostDomainRequest -ID 0 -OrgID 0 -Domainname "MyDomainname" -Displayname "MyDisplayname" -Homedir "MyHomedir" -MaxUser 0 -Title "MyTitle" -Address "MyAddress" -AdminName "MyAdminName" -Tel "MyTel" -EndDay "MyEndDay" -DomainStatus 0 -ActiveUsers 0 -InactiveUsers 0 -SyncPolicy $DomainCommonSyncPolicy -Chat $false -Homeserver 0 # PostDomainRequest |  (optional)

# postDomain
try {
    $Result = Submit-GroAdminDomain -XCsrfToken $XCsrfToken -CreateRole $CreateRole -PostDomainRequest $PostDomainRequest
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
 **PostDomainRequest** | [**PostDomainRequest**](PostDomainRequest.md)|  | [optional] 

### Return type

[**Domain**](Domain.md) (PSCustomObject)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

