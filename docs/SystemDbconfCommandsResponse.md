# SystemDbconfCommandsResponse
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Key** | **String[]** | List of commands allowed for key commits | [optional] 
**File** | **String[]** | List of commands allowed for file commits | [optional] 
**Service** | **String[]** | List of commands allowed for service commits | [optional] 

## Examples

- Prepare the resource
```powershell
$SystemDbconfCommandsResponse = Initialize-GrommunioAdminSystemDbconfCommandsResponse  -Key null `
 -File null `
 -Service null
```

- Convert the resource to JSON
```powershell
$SystemDbconfCommandsResponse | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

