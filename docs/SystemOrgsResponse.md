# SystemOrgsResponse
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**VarData** | [**Org[]**](Org.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$SystemOrgsResponse = Initialize-GrommunioAdminSystemOrgsResponse  -VarData null
```

- Convert the resource to JSON
```powershell
$SystemOrgsResponse | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

