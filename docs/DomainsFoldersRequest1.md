# DomainsFoldersRequest1
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Displayname** | **String** | Name of the folder | [optional] 
**Container** | [**Container**](Container.md) |  | [optional] 
**Comment** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$DomainsFoldersRequest1 = Initialize-GrommunioAdminDomainsFoldersRequest1  -Displayname null `
 -Container null `
 -Comment null
```

- Convert the resource to JSON
```powershell
$DomainsFoldersRequest1 | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

