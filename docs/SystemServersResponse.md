# SystemServersResponse
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**VarData** | [**Homeserver[]**](Homeserver.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$SystemServersResponse = Initialize-GrommunioAdminSystemServersResponse  -VarData null
```

- Convert the resource to JSON
```powershell
$SystemServersResponse | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

