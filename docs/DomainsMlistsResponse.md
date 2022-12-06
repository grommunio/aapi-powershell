# DomainsMlistsResponse
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**VarData** | [**MlistRead[]**](MlistRead.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$DomainsMlistsResponse = Initialize-GrommunioAdminDomainsMlistsResponse  -VarData null
```

- Convert the resource to JSON
```powershell
$DomainsMlistsResponse | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

