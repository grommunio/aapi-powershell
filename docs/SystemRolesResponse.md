# SystemRolesResponse
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**VarData** | [**AdminRole[]**](AdminRole.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$SystemRolesResponse = Initialize-GrommunioAdminSystemRolesResponse  -VarData null
```

- Convert the resource to JSON
```powershell
$SystemRolesResponse | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

