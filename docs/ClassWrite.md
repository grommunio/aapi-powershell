# ClassWrite
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Classname** | **String** |  | [optional] 
**ParentClasses** | **Int32[]** | List of parent class IDs | [optional] 
**Members** | **String[]** | List of class members | [optional] 
**Filters** | [**ClassFilter[][]**](Array.md) | List of filter lists, which are joined by logical &#x60;and&#x60; (CNF) | [optional] 

## Examples

- Prepare the resource
```powershell
$ClassWrite = Initialize-GrommunioAdminClassWrite  -Classname null `
 -ParentClasses null `
 -Members null `
 -Filters null
```

- Convert the resource to JSON
```powershell
$ClassWrite | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

