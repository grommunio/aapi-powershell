# ServiceWipeResponse
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**VarData** | [**System.Collections.Hashtable**](ModelData.md) | Associative array of devices | [optional] 

## Examples

- Prepare the resource
```powershell
$ServiceWipeResponse = Initialize-GrommunioAdminServiceWipeResponse  -VarData null
```

- Convert the resource to JSON
```powershell
$ServiceWipeResponse | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

