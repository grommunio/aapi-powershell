# PublicFolderRef
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Folderid** | **String** |  | [optional] 
**Name** | **String** |  | [optional] 
**Container** | **String** |  | [optional] 
**Children** | [**SystemCollectionsHashtable[]**](SystemCollectionsHashtable.md) | List of child folders (in the same format as the parent) | [optional] 

## Examples

- Prepare the resource
```powershell
$PublicFolderRef = Initialize-GrommunioAdminPublicFolderRef  -Folderid null `
 -Name null `
 -Container null `
 -Children null
```

- Convert the resource to JSON
```powershell
$PublicFolderRef | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

