# Role
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ID** | **Int32** | Unique ID of the object | [optional] [readonly] 
**Name** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$Role = Initialize-GrommunioAdminRole  -ID null `
 -Name null
```

- Convert the resource to JSON
```powershell
$Role | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

