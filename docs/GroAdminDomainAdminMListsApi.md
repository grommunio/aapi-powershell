# GrommunioAdmin.GrommunioAdmin/Api.GroAdminDomainAdminMListsApi

All URIs are relative to */api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Invoke-GroAdminDeleteMlist**](GroAdminDomainAdminMListsApi.md#Invoke-GroAdminDeleteMlist) | **DELETE** /domains/{domainID}/mlists/{ID} | deleteMlist
[**Get-GroAdminMlist**](GroAdminDomainAdminMListsApi.md#Get-GroAdminMlist) | **GET** /domains/{domainID}/mlists/{ID} | getMlist
[**Get-GroAdminMlists**](GroAdminDomainAdminMListsApi.md#Get-GroAdminMlists) | **GET** /domains/{domainID}/mlists | getMlists
[**Invoke-GroAdminPatchMlist**](GroAdminDomainAdminMListsApi.md#Invoke-GroAdminPatchMlist) | **PATCH** /domains/{domainID}/mlists/{ID} | patchMlist
[**Submit-GroAdminMlists**](GroAdminDomainAdminMListsApi.md#Submit-GroAdminMlists) | **POST** /domains/{domainID}/mlists | postMlists


<a name="Invoke-GroAdminDeleteMlist"></a>
# **Invoke-GroAdminDeleteMlist**
> void Invoke-GroAdminDeleteMlist<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-DomainID] <Int32><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ID] <Int32><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-XCsrfToken] <String><br>

deleteMlist

Delete mailing list

### Example
```powershell
$DomainID = 56 # Int32 | ID of the domain
$ID = 56 # Int32 | ID of the object
$XCsrfToken = "MyXCsrfToken" # String | CSRF Token (optional)

# deleteMlist
try {
    $Result = Invoke-GroAdminDeleteMlist -DomainID $DomainID -ID $ID -XCsrfToken $XCsrfToken
} catch {
    Write-Host ("Exception occurred when calling Invoke-GroAdminDeleteMlist: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **DomainID** | **Int32**| ID of the domain | 
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

<a name="Get-GroAdminMlist"></a>
# **Get-GroAdminMlist**
> MlistRead Get-GroAdminMlist<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-DomainID] <Int32><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ID] <Int32><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Level] <System.Nullable[Int32]><br>

getMlist

Get information about a mailing list

### Example
```powershell
$DomainID = 56 # Int32 | ID of the domain
$ID = 56 # Int32 | ID of the object
$Level = 56 # Int32 | Set detail level of return value. Usually ranges from 0 to 2. (optional)

# getMlist
try {
    $Result = Get-GroAdminMlist -DomainID $DomainID -ID $ID -Level $Level
} catch {
    Write-Host ("Exception occurred when calling Get-GroAdminMlist: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **DomainID** | **Int32**| ID of the domain | 
 **ID** | **Int32**| ID of the object | 
 **Level** | **Int32**| Set detail level of return value. Usually ranges from 0 to 2. | [optional] 

### Return type

[**MlistRead**](MlistRead.md) (PSCustomObject)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Get-GroAdminMlists"></a>
# **Get-GroAdminMlists**
> DomainsMlistsResponse Get-GroAdminMlists<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-DomainID] <Int32><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Level] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Limit] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Offset] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Match] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-MatchFields] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Sort] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ID] <System.Nullable[Int32][]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Listname] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ListType] <System.Nullable[Int32][]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ListPrivilege] <System.Nullable[Int32][]><br>

getMlists

Get list of mailing lists

### Example
```powershell
$DomainID = 56 # Int32 | ID of the domain
$Level = 56 # Int32 | Set detail level of return value. Usually ranges from 0 to 2. (optional)
$Limit = 56 # Int32 | Maximum number of results to return (optional) (default to 50)
$Offset = 56 # Int32 | Index of the first element to return (optional) (default to 0)
$Match = "MyMatch" # String | Match by substring (optional)
$MatchFields = "MyMatchFields" # String | Comma separated list of attributes to restrict matching to. (optional)
$Sort = "MySort" # String | Sort by attribute. Can be given multiple times. (optional)
$ID = 0 # Int32[] | Filter one or more IDs (optional)
$Listname = "MyListname" # String | Filter by list name (optional)
$ListType = 0 # Int32[] | Filter by one or more list types (optional)
$ListPrivilege = 0 # Int32[] | Filter by one or more list privilege types (optional)

# getMlists
try {
    $Result = Get-GroAdminMlists -DomainID $DomainID -Level $Level -Limit $Limit -Offset $Offset -Match $Match -MatchFields $MatchFields -Sort $Sort -ID $ID -Listname $Listname -ListType $ListType -ListPrivilege $ListPrivilege
} catch {
    Write-Host ("Exception occurred when calling Get-GroAdminMlists: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **DomainID** | **Int32**| ID of the domain | 
 **Level** | **Int32**| Set detail level of return value. Usually ranges from 0 to 2. | [optional] 
 **Limit** | **Int32**| Maximum number of results to return | [optional] [default to 50]
 **Offset** | **Int32**| Index of the first element to return | [optional] [default to 0]
 **Match** | **String**| Match by substring | [optional] 
 **MatchFields** | **String**| Comma separated list of attributes to restrict matching to. | [optional] 
 **Sort** | **String**| Sort by attribute. Can be given multiple times. | [optional] 
 **ID** | [**Int32[]**](Int32.md)| Filter one or more IDs | [optional] 
 **Listname** | **String**| Filter by list name | [optional] 
 **ListType** | [**Int32[]**](Int32.md)| Filter by one or more list types | [optional] 
 **ListPrivilege** | [**Int32[]**](Int32.md)| Filter by one or more list privilege types | [optional] 

### Return type

[**DomainsMlistsResponse**](DomainsMlistsResponse.md) (PSCustomObject)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-GroAdminPatchMlist"></a>
# **Invoke-GroAdminPatchMlist**
> MlistRead Invoke-GroAdminPatchMlist<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-DomainID] <Int32><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ID] <Int32><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-XCsrfToken] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PostMlistsRequest] <PSCustomObject><br>

patchMlist

Update mailing list

### Example
```powershell
$DomainID = 56 # Int32 | ID of the domain
$ID = 56 # Int32 | ID of the object
$XCsrfToken = "MyXCsrfToken" # String | CSRF Token (optional)
$ListType1 = Initialize-ListType1 
$ListPrivilege = Initialize-ListPrivilege 
$PostMlistsRequest = Initialize-PostMlistsRequest -Listname "MyListname" -ListType $ListType1 -ListPrivilege $ListPrivilege -Associations "MyAssociations" -Specifieds "MySpecifieds" -Class 0 # PostMlistsRequest |  (optional)

# patchMlist
try {
    $Result = Invoke-GroAdminPatchMlist -DomainID $DomainID -ID $ID -XCsrfToken $XCsrfToken -PostMlistsRequest $PostMlistsRequest
} catch {
    Write-Host ("Exception occurred when calling Invoke-GroAdminPatchMlist: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **DomainID** | **Int32**| ID of the domain | 
 **ID** | **Int32**| ID of the object | 
 **XCsrfToken** | **String**| CSRF Token | [optional] 
 **PostMlistsRequest** | [**PostMlistsRequest**](PostMlistsRequest.md)|  | [optional] 

### Return type

[**MlistRead**](MlistRead.md) (PSCustomObject)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Submit-GroAdminMlists"></a>
# **Submit-GroAdminMlists**
> MlistRead Submit-GroAdminMlists<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-DomainID] <Int32><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-XCsrfToken] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PostMlistsRequest] <PSCustomObject><br>

postMlists

Create new mailing list

### Example
```powershell
$DomainID = 56 # Int32 | ID of the domain
$XCsrfToken = "MyXCsrfToken" # String | CSRF Token (optional)
$ListType1 = Initialize-ListType1 
$ListPrivilege = Initialize-ListPrivilege 
$PostMlistsRequest = Initialize-PostMlistsRequest -Listname "MyListname" -ListType $ListType1 -ListPrivilege $ListPrivilege -Associations "MyAssociations" -Specifieds "MySpecifieds" -Class 0 # PostMlistsRequest |  (optional)

# postMlists
try {
    $Result = Submit-GroAdminMlists -DomainID $DomainID -XCsrfToken $XCsrfToken -PostMlistsRequest $PostMlistsRequest
} catch {
    Write-Host ("Exception occurred when calling Submit-GroAdminMlists: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **DomainID** | **Int32**| ID of the domain | 
 **XCsrfToken** | **String**| CSRF Token | [optional] 
 **PostMlistsRequest** | [**PostMlistsRequest**](PostMlistsRequest.md)|  | [optional] 

### Return type

[**MlistRead**](MlistRead.md) (PSCustomObject)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

