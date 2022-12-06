# GrommunioAdmin.GrommunioAdmin/Api.GroAdminDomainAdminFoldersApi

All URIs are relative to */api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Invoke-GroAdminDeleteFolder**](GroAdminDomainAdminFoldersApi.md#Invoke-GroAdminDeleteFolder) | **DELETE** /domains/{domainID}/folders/{folderID} | deleteFolder
[**Invoke-GroAdminDeleteMember**](GroAdminDomainAdminFoldersApi.md#Invoke-GroAdminDeleteMember) | **DELETE** /domains/{domainID}/folders/{folderID}/owners/{memberID} | deleteMember
[**Get-GroAdminFolder**](GroAdminDomainAdminFoldersApi.md#Get-GroAdminFolder) | **GET** /domains/{domainID}/folders/{folderID} | getFolder
[**Get-GroAdminFolderTree**](GroAdminDomainAdminFoldersApi.md#Get-GroAdminFolderTree) | **GET** /domains/{domainID}/folders/tree | getFolderTree
[**Get-GroAdminFolders**](GroAdminDomainAdminFoldersApi.md#Get-GroAdminFolders) | **GET** /domains/{domainID}/folders | getFolders
[**Get-GroAdminOwners**](GroAdminDomainAdminFoldersApi.md#Get-GroAdminOwners) | **GET** /domains/{domainID}/folders/{folderID}/owners | getOwners
[**Invoke-GroAdminPatchFolder**](GroAdminDomainAdminFoldersApi.md#Invoke-GroAdminPatchFolder) | **PATCH** /domains/{domainID}/folders/{folderID} | patchFolder
[**Submit-GroAdminFolders**](GroAdminDomainAdminFoldersApi.md#Submit-GroAdminFolders) | **POST** /domains/{domainID}/folders | postFolders
[**Submit-GroAdminOwner**](GroAdminDomainAdminFoldersApi.md#Submit-GroAdminOwner) | **POST** /domains/{domainID}/folders/{folderID}/owners | postOwner
[**Set-GroAdminMember**](GroAdminDomainAdminFoldersApi.md#Set-GroAdminMember) | **PUT** /domains/{domainID}/folders/{folderID}/owners/{memberID} | setMember


<a name="Invoke-GroAdminDeleteFolder"></a>
# **Invoke-GroAdminDeleteFolder**
> DomainsFoldersResponse1 Invoke-GroAdminDeleteFolder<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-DomainID] <Int32><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-FolderID] <Int32><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-XCsrfToken] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Clear] <System.Nullable[Boolean]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Timeout] <System.Nullable[Double]><br>

deleteFolder

Delete public folder

### Example
```powershell
$DomainID = 56 # Int32 | ID of the domain
$FolderID = 56 # Int32 | ID of the folder
$XCsrfToken = "MyXCsrfToken" # String | CSRF Token (optional)
$Clear = $true # Boolean | Clear folder before deleting it (optional) (default to $false)
$Timeout = 1.2 # Double | Time in seconds to wait for completion (optional) (default to 1)

# deleteFolder
try {
    $Result = Invoke-GroAdminDeleteFolder -DomainID $DomainID -FolderID $FolderID -XCsrfToken $XCsrfToken -Clear $Clear -Timeout $Timeout
} catch {
    Write-Host ("Exception occurred when calling Invoke-GroAdminDeleteFolder: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **DomainID** | **Int32**| ID of the domain | 
 **FolderID** | **Int32**| ID of the folder | 
 **XCsrfToken** | **String**| CSRF Token | [optional] 
 **Clear** | **Boolean**| Clear folder before deleting it | [optional] [default to $false]
 **Timeout** | **Double**| Time in seconds to wait for completion | [optional] [default to 1]

### Return type

[**DomainsFoldersResponse1**](DomainsFoldersResponse1.md) (PSCustomObject)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-GroAdminDeleteMember"></a>
# **Invoke-GroAdminDeleteMember**
> void Invoke-GroAdminDeleteMember<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-DomainID] <Int32><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-FolderID] <Int32><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-MemberID] <Int32><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-XCsrfToken] <String><br>

deleteMember

Remove a user from the owner list

### Example
```powershell
$DomainID = 56 # Int32 | ID of the domain
$FolderID = 56 # Int32 | ID of the folder
$MemberID = 56 # Int32 | Member ID of the owner list
$XCsrfToken = "MyXCsrfToken" # String | CSRF Token (optional)

# deleteMember
try {
    $Result = Invoke-GroAdminDeleteMember -DomainID $DomainID -FolderID $FolderID -MemberID $MemberID -XCsrfToken $XCsrfToken
} catch {
    Write-Host ("Exception occurred when calling Invoke-GroAdminDeleteMember: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **DomainID** | **Int32**| ID of the domain | 
 **FolderID** | **Int32**| ID of the folder | 
 **MemberID** | **Int32**| Member ID of the owner list | 
 **XCsrfToken** | **String**| CSRF Token | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Get-GroAdminFolder"></a>
# **Get-GroAdminFolder**
> PublicFolder Get-GroAdminFolder<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-DomainID] <Int32><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-FolderID] <Int32><br>

getFolder

Get public folder

### Example
```powershell
$DomainID = 56 # Int32 | ID of the domain
$FolderID = 56 # Int32 | ID of the folder

# getFolder
try {
    $Result = Get-GroAdminFolder -DomainID $DomainID -FolderID $FolderID
} catch {
    Write-Host ("Exception occurred when calling Get-GroAdminFolder: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **DomainID** | **Int32**| ID of the domain | 
 **FolderID** | **Int32**| ID of the folder | 

### Return type

[**PublicFolder**](PublicFolder.md) (PSCustomObject)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Get-GroAdminFolderTree"></a>
# **Get-GroAdminFolderTree**
> PublicFolderRef Get-GroAdminFolderTree<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-DomainID] <Int32><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-FolderID] <System.Nullable[Int32]><br>

getFolderTree

Get hierarchical view of folders

### Example
```powershell
$DomainID = 56 # Int32 | ID of the domain
$FolderID = 56 # Int32 | ID of the root folder (optional)

# getFolderTree
try {
    $Result = Get-GroAdminFolderTree -DomainID $DomainID -FolderID $FolderID
} catch {
    Write-Host ("Exception occurred when calling Get-GroAdminFolderTree: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **DomainID** | **Int32**| ID of the domain | 
 **FolderID** | **Int32**| ID of the root folder | [optional] 

### Return type

[**PublicFolderRef**](PublicFolderRef.md) (PSCustomObject)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Get-GroAdminFolders"></a>
# **Get-GroAdminFolders**
> DomainsFoldersResponse Get-GroAdminFolders<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-DomainID] <Int32><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Offset] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Limit] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Match] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ParentID] <System.Nullable[Int32]><br>

getFolders

Get list of public folders

### Example
```powershell
$DomainID = 56 # Int32 | ID of the domain
$Offset = 56 # Int32 | Index of the first element to return (optional) (default to 0)
$Limit = 56 # Int32 | Maximum number of results to return (optional) (default to 50)
$Match = "MyMatch" # String | Match by substring (optional)
$ParentID = 56 # Int32 | ID of the parent folder (optional)

# getFolders
try {
    $Result = Get-GroAdminFolders -DomainID $DomainID -Offset $Offset -Limit $Limit -Match $Match -ParentID $ParentID
} catch {
    Write-Host ("Exception occurred when calling Get-GroAdminFolders: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **DomainID** | **Int32**| ID of the domain | 
 **Offset** | **Int32**| Index of the first element to return | [optional] [default to 0]
 **Limit** | **Int32**| Maximum number of results to return | [optional] [default to 50]
 **Match** | **String**| Match by substring | [optional] 
 **ParentID** | **Int32**| ID of the parent folder | [optional] 

### Return type

[**DomainsFoldersResponse**](DomainsFoldersResponse.md) (PSCustomObject)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Get-GroAdminOwners"></a>
# **Get-GroAdminOwners**
> DomainsFoldersOwnersResponse Get-GroAdminOwners<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-DomainID] <Int32><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-FolderID] <Int32><br>

getOwners

Get list of folder owners

### Example
```powershell
$DomainID = 56 # Int32 | ID of the domain
$FolderID = 56 # Int32 | ID of the folder

# getOwners
try {
    $Result = Get-GroAdminOwners -DomainID $DomainID -FolderID $FolderID
} catch {
    Write-Host ("Exception occurred when calling Get-GroAdminOwners: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **DomainID** | **Int32**| ID of the domain | 
 **FolderID** | **Int32**| ID of the folder | 

### Return type

[**DomainsFoldersOwnersResponse**](DomainsFoldersOwnersResponse.md) (PSCustomObject)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-GroAdminPatchFolder"></a>
# **Invoke-GroAdminPatchFolder**
> void Invoke-GroAdminPatchFolder<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-DomainID] <Int32><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-FolderID] <Int32><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-XCsrfToken] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PatchFolderRequest] <PSCustomObject><br>

patchFolder

Update public folder

### Example
```powershell
$DomainID = 56 # Int32 | ID of the domain
$FolderID = 56 # Int32 | ID of the folder
$XCsrfToken = "MyXCsrfToken" # String | CSRF Token (optional)
$Container = Initialize-Container 
$PatchFolderRequest = Initialize-PatchFolderRequest -Displayname "MyDisplayname" -Container $Container -Comment "MyComment" # PatchFolderRequest |  (optional)

# patchFolder
try {
    $Result = Invoke-GroAdminPatchFolder -DomainID $DomainID -FolderID $FolderID -XCsrfToken $XCsrfToken -PatchFolderRequest $PatchFolderRequest
} catch {
    Write-Host ("Exception occurred when calling Invoke-GroAdminPatchFolder: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **DomainID** | **Int32**| ID of the domain | 
 **FolderID** | **Int32**| ID of the folder | 
 **XCsrfToken** | **String**| CSRF Token | [optional] 
 **PatchFolderRequest** | [**PatchFolderRequest**](PatchFolderRequest.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Submit-GroAdminFolders"></a>
# **Submit-GroAdminFolders**
> PublicFolder Submit-GroAdminFolders<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-DomainID] <Int32><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-XCsrfToken] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PostFoldersRequest] <PSCustomObject><br>

postFolders

Create a new public folder

### Example
```powershell
$DomainID = 56 # Int32 | ID of the domain
$XCsrfToken = "MyXCsrfToken" # String | CSRF Token (optional)
$Container = Initialize-Container 
$PostFoldersRequest = Initialize-PostFoldersRequest -Displayname "MyDisplayname" -Container $Container -Comment "MyComment" -ParentID "MyParentID" # PostFoldersRequest |  (optional)

# postFolders
try {
    $Result = Submit-GroAdminFolders -DomainID $DomainID -XCsrfToken $XCsrfToken -PostFoldersRequest $PostFoldersRequest
} catch {
    Write-Host ("Exception occurred when calling Submit-GroAdminFolders: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **DomainID** | **Int32**| ID of the domain | 
 **XCsrfToken** | **String**| CSRF Token | [optional] 
 **PostFoldersRequest** | [**PostFoldersRequest**](PostFoldersRequest.md)|  | [optional] 

### Return type

[**PublicFolder**](PublicFolder.md) (PSCustomObject)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Submit-GroAdminOwner"></a>
# **Submit-GroAdminOwner**
> void Submit-GroAdminOwner<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-DomainID] <Int32><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-FolderID] <Int32><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PostOwnerRequest] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-XCsrfToken] <String><br>

postOwner

Add a user to the owner list

### Example
```powershell
$DomainID = 56 # Int32 | ID of the domain
$FolderID = 56 # Int32 | ID of the folder
$PostOwnerRequest = Initialize-PostOwnerRequest -Username "MyUsername" -Permissions 0 # PostOwnerRequest | 
$XCsrfToken = "MyXCsrfToken" # String | CSRF Token (optional)

# postOwner
try {
    $Result = Submit-GroAdminOwner -DomainID $DomainID -FolderID $FolderID -PostOwnerRequest $PostOwnerRequest -XCsrfToken $XCsrfToken
} catch {
    Write-Host ("Exception occurred when calling Submit-GroAdminOwner: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **DomainID** | **Int32**| ID of the domain | 
 **FolderID** | **Int32**| ID of the folder | 
 **PostOwnerRequest** | [**PostOwnerRequest**](PostOwnerRequest.md)|  | 
 **XCsrfToken** | **String**| CSRF Token | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Set-GroAdminMember"></a>
# **Set-GroAdminMember**
> void Set-GroAdminMember<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-DomainID] <Int32><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-FolderID] <Int32><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-MemberID] <Int32><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SetMemberRequest] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-XCsrfToken] <String><br>

setMember

Set folder member permissions

### Example
```powershell
$DomainID = 56 # Int32 | ID of the domain
$FolderID = 56 # Int32 | ID of the folder
$MemberID = 56 # Int32 | Member ID of the owner list
$SetMemberRequest = Initialize-SetMemberRequest -Permissions 0 # SetMemberRequest | 
$XCsrfToken = "MyXCsrfToken" # String | CSRF Token (optional)

# setMember
try {
    $Result = Set-GroAdminMember -DomainID $DomainID -FolderID $FolderID -MemberID $MemberID -SetMemberRequest $SetMemberRequest -XCsrfToken $XCsrfToken
} catch {
    Write-Host ("Exception occurred when calling Set-GroAdminMember: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **DomainID** | **Int32**| ID of the domain | 
 **FolderID** | **Int32**| ID of the folder | 
 **MemberID** | **Int32**| Member ID of the owner list | 
 **SetMemberRequest** | [**SetMemberRequest**](SetMemberRequest.md)|  | 
 **XCsrfToken** | **String**| CSRF Token | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

