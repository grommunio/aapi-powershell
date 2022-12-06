# TasqStatusResponse
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Running** | **Boolean** | Whether the TasQ server is running | [optional] 
**Queued** | **Int32** | Number of tasks waiting for processing | [optional] 
**Workers** | **Int32** | Number of active worker processes | [optional] 

## Examples

- Prepare the resource
```powershell
$TasqStatusResponse = Initialize-GrommunioAdminTasqStatusResponse  -Running null `
 -Queued null `
 -Workers null
```

- Convert the resource to JSON
```powershell
$TasqStatusResponse | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

