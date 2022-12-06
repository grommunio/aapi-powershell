# GrommunioAdmin.GrommunioAdmin/Api.GroAdminDomainAdminClassesApi

All URIs are relative to */api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Invoke-GroAdminDeleteClass**](GroAdminDomainAdminClassesApi.md#Invoke-GroAdminDeleteClass) | **DELETE** /domains/{domainID}/classes/{ID} | deleteClass
[**Get-GroAdminClass**](GroAdminDomainAdminClassesApi.md#Get-GroAdminClass) | **GET** /domains/{domainID}/classes/{ID} | getClass
[**Get-GroAdminClasses**](GroAdminDomainAdminClassesApi.md#Get-GroAdminClasses) | **GET** /domains/{domainID}/classes | getClasses
[**Get-GroAdminClassesTree**](GroAdminDomainAdminClassesApi.md#Get-GroAdminClassesTree) | **GET** /domains/{domainID}/classes/tree | getClassesTree
[**Invoke-GroAdminPatchClass**](GroAdminDomainAdminClassesApi.md#Invoke-GroAdminPatchClass) | **PATCH** /domains/{domainID}/classes/{ID} | patchClass
[**Submit-GroAdminClass**](GroAdminDomainAdminClassesApi.md#Submit-GroAdminClass) | **POST** /domains/{domainID}/classes | postClass
[**Test-GroAdminFilter**](GroAdminDomainAdminClassesApi.md#Test-GroAdminFilter) | **POST** /domains/{domainID}/classes/testFilter | testFilter


<a name="Invoke-GroAdminDeleteClass"></a>
# **Invoke-GroAdminDeleteClass**
> void Invoke-GroAdminDeleteClass<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-DomainID] <Int32><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ID] <Int32><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-XCsrfToken] <String><br>

deleteClass

Delete class

### Example
```powershell
$DomainID = 56 # Int32 | ID of the domain
$ID = 56 # Int32 | ID of the object
$XCsrfToken = "MyXCsrfToken" # String | CSRF Token (optional)

# deleteClass
try {
    $Result = Invoke-GroAdminDeleteClass -DomainID $DomainID -ID $ID -XCsrfToken $XCsrfToken
} catch {
    Write-Host ("Exception occurred when calling Invoke-GroAdminDeleteClass: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a name="Get-GroAdminClass"></a>
# **Get-GroAdminClass**
> ClassRead Get-GroAdminClass<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-DomainID] <Int32><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ID] <Int32><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Level] <System.Nullable[Int32]><br>

getClass

Get information about class

### Example
```powershell
$DomainID = 56 # Int32 | ID of the domain
$ID = 56 # Int32 | ID of the object
$Level = 56 # Int32 | Set detail level of return value. Usually ranges from 0 to 2. (optional)

# getClass
try {
    $Result = Get-GroAdminClass -DomainID $DomainID -ID $ID -Level $Level
} catch {
    Write-Host ("Exception occurred when calling Get-GroAdminClass: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

[**ClassRead**](ClassRead.md) (PSCustomObject)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Get-GroAdminClasses"></a>
# **Get-GroAdminClasses**
> DomainsClassesResponse Get-GroAdminClasses<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-DomainID] <Int32><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Level] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Limit] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Offset] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Match] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-MatchFields] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Sort] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ID] <System.Nullable[Int32][]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Classname] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Listname] <String><br>

getClasses

Get list of classes

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
$Classname = "MyClassname" # String | Filter by classname (optional)
$Listname = "MyListname" # String | Filter by listname (optional)

# getClasses
try {
    $Result = Get-GroAdminClasses -DomainID $DomainID -Level $Level -Limit $Limit -Offset $Offset -Match $Match -MatchFields $MatchFields -Sort $Sort -ID $ID -Classname $Classname -Listname $Listname
} catch {
    Write-Host ("Exception occurred when calling Get-GroAdminClasses: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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
 **Classname** | **String**| Filter by classname | [optional] 
 **Listname** | **String**| Filter by listname | [optional] 

### Return type

[**DomainsClassesResponse**](DomainsClassesResponse.md) (PSCustomObject)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Get-GroAdminClassesTree"></a>
# **Get-GroAdminClassesTree**
> DomainsClassesTreeResponse Get-GroAdminClassesTree<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-DomainID] <Int32><br>

getClassesTree

Generate class hierarchy tree

### Example
```powershell
$DomainID = 56 # Int32 | ID of the domain

# getClassesTree
try {
    $Result = Get-GroAdminClassesTree -DomainID $DomainID
} catch {
    Write-Host ("Exception occurred when calling Get-GroAdminClassesTree: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **DomainID** | **Int32**| ID of the domain | 

### Return type

[**DomainsClassesTreeResponse**](DomainsClassesTreeResponse.md) (PSCustomObject)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-GroAdminPatchClass"></a>
# **Invoke-GroAdminPatchClass**
> ClassRead Invoke-GroAdminPatchClass<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-DomainID] <Int32><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ID] <Int32><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-XCsrfToken] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PostClassRequest] <PSCustomObject><br>

patchClass

Modify class

### Example
```powershell
$DomainID = 56 # Int32 | ID of the domain
$ID = 56 # Int32 | ID of the object
$XCsrfToken = "MyXCsrfToken" # String | CSRF Token (optional)
$PostClassRequest = Initialize-PostClassRequest -Classname "MyClassname" -ParentClasses 0 -Members "MyMembers" -Filters 
$Op = Initialize-Op 
$ClassFilter = Initialize-ClassFilter -Prop "MyProp" -Op $Op -Val "MyVal" # PostClassRequest |  (optional)

# patchClass
try {
    $Result = Invoke-GroAdminPatchClass -DomainID $DomainID -ID $ID -XCsrfToken $XCsrfToken -PostClassRequest $PostClassRequest
} catch {
    Write-Host ("Exception occurred when calling Invoke-GroAdminPatchClass: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **DomainID** | **Int32**| ID of the domain | 
 **ID** | **Int32**| ID of the object | 
 **XCsrfToken** | **String**| CSRF Token | [optional] 
 **PostClassRequest** | [**PostClassRequest**](PostClassRequest.md)|  | [optional] 

### Return type

[**ClassRead**](ClassRead.md) (PSCustomObject)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Submit-GroAdminClass"></a>
# **Submit-GroAdminClass**
> ClassRead Submit-GroAdminClass<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-DomainID] <Int32><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-XCsrfToken] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PostClassRequest] <PSCustomObject><br>

postClass

Create new class

### Example
```powershell
$DomainID = 56 # Int32 | ID of the domain
$XCsrfToken = "MyXCsrfToken" # String | CSRF Token (optional)
$PostClassRequest = Initialize-PostClassRequest -Classname "MyClassname" -ParentClasses 0 -Members "MyMembers" -Filters 
$Op = Initialize-Op 
$ClassFilter = Initialize-ClassFilter -Prop "MyProp" -Op $Op -Val "MyVal" # PostClassRequest |  (optional)

# postClass
try {
    $Result = Submit-GroAdminClass -DomainID $DomainID -XCsrfToken $XCsrfToken -PostClassRequest $PostClassRequest
} catch {
    Write-Host ("Exception occurred when calling Submit-GroAdminClass: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **DomainID** | **Int32**| ID of the domain | 
 **XCsrfToken** | **String**| CSRF Token | [optional] 
 **PostClassRequest** | [**PostClassRequest**](PostClassRequest.md)|  | [optional] 

### Return type

[**ClassRead**](ClassRead.md) (PSCustomObject)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Test-GroAdminFilter"></a>
# **Test-GroAdminFilter**
> DomainsClassesTestFilterResponse Test-GroAdminFilter<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-DomainID] <Int32><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-XCsrfToken] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ClassFilter] <PSCustomObject[][]><br>

testFilter

Test class filter specification

### Example
```powershell
$DomainID = 56 # Int32 | ID of the domain
$XCsrfToken = "MyXCsrfToken" # String | CSRF Token (optional)
$ClassFilter = $Op = Initialize-Op 
$ClassFilter = Initialize-ClassFilter -Prop "MyProp" -Op $Op -Val "MyVal" # ClassFilter[][] |  (optional)

# testFilter
try {
    $Result = Test-GroAdminFilter -DomainID $DomainID -XCsrfToken $XCsrfToken -ClassFilter $ClassFilter
} catch {
    Write-Host ("Exception occurred when calling Test-GroAdminFilter: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **DomainID** | **Int32**| ID of the domain | 
 **XCsrfToken** | **String**| CSRF Token | [optional] 
 **ClassFilter** | [**ClassFilter[][]**](Array.md)|  | [optional] 

### Return type

[**DomainsClassesTestFilterResponse**](DomainsClassesTestFilterResponse.md) (PSCustomObject)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

