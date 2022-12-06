# ClassTreeElement
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ID** | **Int32** | Unique ID of the object | [optional] [readonly] 
**Name** | **String** |  | [optional] 
**Children** | [**SystemCollectionsHashtable[]**](SystemCollectionsHashtable.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$ClassTreeElement = Initialize-GrommunioAdminClassTreeElement  -ID null `
 -Name null `
 -Children null
```

- Convert the resource to JSON
```powershell
$ClassTreeElement | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

