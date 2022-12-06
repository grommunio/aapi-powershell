# DomainsResponse
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**VarData** | [**Domain[]**](Domain.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$DomainsResponse = Initialize-GrommunioAdminDomainsResponse  -VarData null
```

- Convert the resource to JSON
```powershell
$DomainsResponse | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

