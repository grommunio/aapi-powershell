# SetAuthmgrRequest
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**AuthBackendSelection** | [**AuthBackendSelection**](AuthBackendSelection.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$SetAuthmgrRequest = Initialize-GrommunioAdminSetAuthmgrRequest  -AuthBackendSelection null
```

- Convert the resource to JSON
```powershell
$SetAuthmgrRequest | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

