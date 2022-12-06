# DomainsFoldersRequest
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Displayname** | **String** | Name of the folder | 
**Container** | [**Container**](Container.md) |  | 
**Comment** | **String** |  | 
**ParentID** | **String** | ID of the parent folder | [optional] [default to "0"]

## Examples

- Prepare the resource
```powershell
$DomainsFoldersRequest = Initialize-GrommunioAdminDomainsFoldersRequest  -Displayname null `
 -Container null `
 -Comment null `
 -ParentID null
```

- Convert the resource to JSON
```powershell
$DomainsFoldersRequest | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

