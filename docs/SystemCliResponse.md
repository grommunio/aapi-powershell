# SystemCliResponse
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Code** | **Int32** | Command exit code (&#x60;exec&#x60; mode only) | [optional] 
**Stdout** | **String** | Command output (&#x60;exec&#x60; mode only) | [optional] 
**Fs** | [**System.Collections.Hashtable**](Fs.md) |  | [optional] 
**Completions** | **String[]** | Possible command completions (&#x60;complete&#x60; mode only) | [optional] 

## Examples

- Prepare the resource
```powershell
$SystemCliResponse = Initialize-GrommunioAdminSystemCliResponse  -Code null `
 -Stdout null `
 -Fs null `
 -Completions null
```

- Convert the resource to JSON
```powershell
$SystemCliResponse | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

