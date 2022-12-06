# TasqTasksResponse
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**VarData** | [**TasqTask[]**](TasqTask.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$TasqTasksResponse = Initialize-GrommunioAdminTasqTasksResponse  -VarData null
```

- Convert the resource to JSON
```powershell
$TasqTasksResponse | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

