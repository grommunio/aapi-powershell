# PatchFolderRequest
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Displayname** | **String** | Name of the folder | [optional] 
**Container** | **String** | Container class | [optional] 
**Comment** | **String** |  | [optional] 
**SyncToMobile** | **Boolean** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$PatchFolderRequest = Initialize-GrommunioAdminPatchFolderRequest  -Displayname null `
 -Container null `
 -Comment null `
 -SyncToMobile null
```

- Convert the resource to JSON
```powershell
$PatchFolderRequest | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

