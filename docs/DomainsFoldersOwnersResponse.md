# DomainsFoldersOwnersResponse
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**VarData** | [**FolderMemberList[]**](FolderMemberList.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$DomainsFoldersOwnersResponse = Initialize-GrommunioAdminDomainsFoldersOwnersResponse  -VarData null
```

- Convert the resource to JSON
```powershell
$DomainsFoldersOwnersResponse | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

