# PublicFolder
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Folderid** | **String** |  | [optional] 
**Displayname** | **String** |  | [optional] 
**Comment** | **String** |  | [optional] 
**Creationtime** | **String** | Date string with time | [optional] 
**Container** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$PublicFolder = Initialize-GrommunioAdminPublicFolder  -Folderid null `
 -Displayname null `
 -Comment null `
 -Creationtime null `
 -Container null
```

- Convert the resource to JSON
```powershell
$PublicFolder | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

