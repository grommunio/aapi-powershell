# Class
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ID** | **Int32** | Unique ID of the object | [optional] [readonly] 
**Classname** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$Class = Initialize-GrommunioAdminClass  -ID null `
 -Classname null
```

- Convert the resource to JSON
```powershell
$Class | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

