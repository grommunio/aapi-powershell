# GrommunioAdmin.GrommunioAdmin\Api.GroAdminDomainAdminFoldersApi

All URIs are relative to */api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Invoke-GroAdminDeleteFolder**](GroAdminDomainAdminFoldersApi.md#Invoke-GroAdminDeleteFolder) | **DELETE** /domains/{domainID}/folders/{folderID} | Delete public folder
[**Invoke-GroAdminDeleteMember**](GroAdminDomainAdminFoldersApi.md#Invoke-GroAdminDeleteMember) | **DELETE** /domains/{domainID}/folders/{folderID}/owners/{memberID} | Remove a user from the owner list
[**Get-GroAdminFolder**](GroAdminDomainAdminFoldersApi.md#Get-GroAdminFolder) | **GET** /domains/{domainID}/folders/{folderID} | Get public folder
[**Get-GroAdminFolderTree**](GroAdminDomainAdminFoldersApi.md#Get-GroAdminFolderTree) | **GET** /domains/{domainID}/folders/tree | Get hierarchical view of folders
[**Get-GroAdminFolders**](GroAdminDomainAdminFoldersApi.md#Get-GroAdminFolders) | **GET** /domains/{domainID}/folders | Get list of public folders
[**Get-GroAdminOwners**](GroAdminDomainAdminFoldersApi.md#Get-GroAdminOwners) | **GET** /domains/{domainID}/folders/{folderID}/owners | Get list of folder owners
[**Invoke-GroAdminPatchFolder**](GroAdminDomainAdminFoldersApi.md#Invoke-GroAdminPatchFolder) | **PATCH** /domains/{domainID}/folders/{folderID} | Update public folder
[**Submit-GroAdminFolders**](GroAdminDomainAdminFoldersApi.md#Submit-GroAdminFolders) | **POST** /domains/{domainID}/folders | Create a new public folder
[**Submit-GroAdminOwner**](GroAdminDomainAdminFoldersApi.md#Submit-GroAdminOwner) | **POST** /domains/{domainID}/folders/{folderID}/owners | Add a user to the owner list
[**Set-GroAdminMember**](GroAdminDomainAdminFoldersApi.md#Set-GroAdminMember) | **PUT** /domains/{domainID}/folders/{folderID}/owners/{memberID} | Set folder member permissions


<a id="Invoke-GroAdminDeleteFolder"></a>
# **Invoke-GroAdminDeleteFolder**
> ResetPasswd404Response Invoke-GroAdminDeleteFolder<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-DomainID] <Int32><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-FolderID] <Int32><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-XCsrfToken] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Clear] <System.Nullable[Boolean]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Timeout] <System.Nullable[Decimal]><br>

Delete public folder

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: JWTCookie
$Configuration.ApiKey.grommunioAuthJwt = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.grommunioAuthJwt = "Bearer"

$DomainID = 56 # Int32 | ID of the domain
$FolderID = 56 # Int32 | ID of the folder
$XCsrfToken = "MyXCsrfToken" # String | CSRF Token (optional)
$Clear = $true # Boolean | Clear folder before deleting it (optional) (default to $false)
$Timeout = 8.14 # Decimal | Time in seconds to wait for completion (optional) (default to 1.0)

# Delete public folder
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
 **Timeout** | **Decimal**| Time in seconds to wait for completion | [optional] [default to 1.0]

### Return type

[**ResetPasswd404Response**](ResetPasswd404Response.md) (PSCustomObject)

### Authorization

[JWTCookie](../README.md#JWTCookie)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-GroAdminDeleteMember"></a>
# **Invoke-GroAdminDeleteMember**
> void Invoke-GroAdminDeleteMember<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-DomainID] <Int32><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-FolderID] <Int32><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-MemberID] <Int32><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-XCsrfToken] <String><br>

Remove a user from the owner list

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: JWTCookie
$Configuration.ApiKey.grommunioAuthJwt = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.grommunioAuthJwt = "Bearer"

$DomainID = 56 # Int32 | ID of the domain
$FolderID = 56 # Int32 | ID of the folder
$MemberID = 56 # Int32 | Member ID of the owner list
$XCsrfToken = "MyXCsrfToken" # String | CSRF Token (optional)

# Remove a user from the owner list
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

[JWTCookie](../README.md#JWTCookie)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-GroAdminFolder"></a>
# **Get-GroAdminFolder**
> PublicFolder Get-GroAdminFolder<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-DomainID] <Int32><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-FolderID] <Int32><br>

Get public folder

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: JWTCookie
$Configuration.ApiKey.grommunioAuthJwt = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.grommunioAuthJwt = "Bearer"

$DomainID = 56 # Int32 | ID of the domain
$FolderID = 56 # Int32 | ID of the folder

# Get public folder
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

[JWTCookie](../README.md#JWTCookie)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-GroAdminFolderTree"></a>
# **Get-GroAdminFolderTree**
> PublicFolderRef Get-GroAdminFolderTree<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-DomainID] <Int32><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-FolderID] <System.Nullable[Int32]><br>

Get hierarchical view of folders

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: JWTCookie
$Configuration.ApiKey.grommunioAuthJwt = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.grommunioAuthJwt = "Bearer"

$DomainID = 56 # Int32 | ID of the domain
$FolderID = 56 # Int32 | ID of the root folder (optional)

# Get hierarchical view of folders
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

[JWTCookie](../README.md#JWTCookie)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-GroAdminFolders"></a>
# **Get-GroAdminFolders**
> GetFolders200Response Get-GroAdminFolders<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-DomainID] <Int32><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Offset] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Limit] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Match] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ParentID] <System.Nullable[Int32]><br>

Get list of public folders

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: JWTCookie
$Configuration.ApiKey.grommunioAuthJwt = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.grommunioAuthJwt = "Bearer"

$DomainID = 56 # Int32 | ID of the domain
$Offset = 56 # Int32 | Index of the first element to return (optional) (default to 0)
$Limit = 56 # Int32 | Maximum number of results to return (optional) (default to 50)
$Match = "MyMatch" # String | Match by substring (optional)
$ParentID = 56 # Int32 | ID of the parent folder (optional)

# Get list of public folders
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

[**GetFolders200Response**](GetFolders200Response.md) (PSCustomObject)

### Authorization

[JWTCookie](../README.md#JWTCookie)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-GroAdminOwners"></a>
# **Get-GroAdminOwners**
> GetStoreAccessUsers200Response Get-GroAdminOwners<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-DomainID] <Int32><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-FolderID] <Int32><br>

Get list of folder owners

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: JWTCookie
$Configuration.ApiKey.grommunioAuthJwt = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.grommunioAuthJwt = "Bearer"

$DomainID = 56 # Int32 | ID of the domain
$FolderID = 56 # Int32 | ID of the folder

# Get list of folder owners
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

[**GetStoreAccessUsers200Response**](GetStoreAccessUsers200Response.md) (PSCustomObject)

### Authorization

[JWTCookie](../README.md#JWTCookie)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-GroAdminPatchFolder"></a>
# **Invoke-GroAdminPatchFolder**
> void Invoke-GroAdminPatchFolder<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-DomainID] <Int32><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-FolderID] <Int32><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-XCsrfToken] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PatchFolderRequest] <PSCustomObject><br>

Update public folder

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: JWTCookie
$Configuration.ApiKey.grommunioAuthJwt = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.grommunioAuthJwt = "Bearer"

$DomainID = 56 # Int32 | ID of the domain
$FolderID = 56 # Int32 | ID of the folder
$XCsrfToken = "MyXCsrfToken" # String | CSRF Token (optional)
$PatchFolderRequest = Initialize-PatchFolderRequest -Displayname "MyDisplayname" -Container "IPF.Note" -Comment "MyComment" -SyncToMobile $false # PatchFolderRequest |  (optional)

# Update public folder
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

[JWTCookie](../README.md#JWTCookie)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Submit-GroAdminFolders"></a>
# **Submit-GroAdminFolders**
> PublicFolder Submit-GroAdminFolders<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-DomainID] <Int32><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-XCsrfToken] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PostFoldersRequest] <PSCustomObject><br>

Create a new public folder

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
$PostFoldersRequest = Initialize-PostFoldersRequest -Displayname "MyDisplayname" -Container "IPF.Note" -Comment "MyComment" -ParentID "MyParentID" -SyncToMobile $false # PostFoldersRequest |  (optional)

# Create a new public folder
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

[JWTCookie](../README.md#JWTCookie)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Submit-GroAdminOwner"></a>
# **Submit-GroAdminOwner**
> void Submit-GroAdminOwner<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-DomainID] <Int32><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-FolderID] <Int32><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PostOwnerRequest] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-XCsrfToken] <String><br>

Add a user to the owner list

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: JWTCookie
$Configuration.ApiKey.grommunioAuthJwt = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.grommunioAuthJwt = "Bearer"

$DomainID = 56 # Int32 | ID of the domain
$FolderID = 56 # Int32 | ID of the folder
$PostOwnerRequest = Initialize-PostOwnerRequest -Username "MyUsername" -Permissions 0 # PostOwnerRequest | 
$XCsrfToken = "MyXCsrfToken" # String | CSRF Token (optional)

# Add a user to the owner list
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

[JWTCookie](../README.md#JWTCookie)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Set-GroAdminMember"></a>
# **Set-GroAdminMember**
> void Set-GroAdminMember<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-DomainID] <Int32><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-FolderID] <Int32><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-MemberID] <Int32><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SetMemberRequest] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-XCsrfToken] <String><br>

Set folder member permissions

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: JWTCookie
$Configuration.ApiKey.grommunioAuthJwt = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.grommunioAuthJwt = "Bearer"

$DomainID = 56 # Int32 | ID of the domain
$FolderID = 56 # Int32 | ID of the folder
$MemberID = 56 # Int32 | Member ID of the owner list
$SetMemberRequest = Initialize-SetMemberRequest -Permissions 0 # SetMemberRequest | 
$XCsrfToken = "MyXCsrfToken" # String | CSRF Token (optional)

# Set folder member permissions
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

[JWTCookie](../README.md#JWTCookie)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

