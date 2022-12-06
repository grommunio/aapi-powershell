# DomainsFoldersResponse
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**VarData** | [**PublicFolder[]**](PublicFolder.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$DomainsFoldersResponse = Initialize-GrommunioAdminDomainsFoldersResponse  -VarData null
```

- Convert the resource to JSON
```powershell
$DomainsFoldersResponse | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

