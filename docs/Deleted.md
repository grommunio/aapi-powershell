# Deleted
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ID** | **Int32** | Unique ID of the object | [optional] [readonly] 
**Username** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$Deleted = Initialize-GrommunioAdminDeleted  -ID null `
 -Username null
```

- Convert the resource to JSON
```powershell
$Deleted | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

