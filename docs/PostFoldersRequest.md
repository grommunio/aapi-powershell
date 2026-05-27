# PostFoldersRequest
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Displayname** | **String** | Name of the folder | 
**Container** | **String** | Container class | 
**Comment** | **String** |  | 
**ParentID** | **String** | ID of the parent folder | [optional] [default to "0"]
**SyncToMobile** | **Boolean** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$PostFoldersRequest = Initialize-GrommunioAdminPostFoldersRequest  -Displayname null `
 -Container null `
 -Comment null `
 -ParentID null `
 -SyncToMobile null
```

- Convert the resource to JSON
```powershell
$PostFoldersRequest | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

