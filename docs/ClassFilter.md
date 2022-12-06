# ClassFilter
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Prop** | **String** | Column name or property to test | 
**Op** | [**Op**](Op.md) |  | 
**Val** | **String** | Value used for comparison (binary operators) | [optional] 

## Examples

- Prepare the resource
```powershell
$ClassFilter = Initialize-GrommunioAdminClassFilter  -Prop null `
 -Op null `
 -Val null
```

- Convert the resource to JSON
```powershell
$ClassFilter | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

