# DomainsUsersSyncResponse
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**VarData** | [**Data3[]**](Data3.md) | List of devices with their sync entries | [optional] 

## Examples

- Prepare the resource
```powershell
$DomainsUsersSyncResponse = Initialize-GrommunioAdminDomainsUsersSyncResponse  -VarData null
```

- Convert the resource to JSON
```powershell
$DomainsUsersSyncResponse | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

