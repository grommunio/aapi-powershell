# ClassRead
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ID** | **Int32** | Unique ID of the object | [optional] [readonly] 
**Classname** | **String** |  | [optional] 
**Listname** | **String** | Name of the associated mlist | [optional] 
**ParentClasses** | [**ParentClass[]**](ParentClass.md) | List of parent classes | [optional] 
**Children** | [**Child[]**](Child.md) | List of child classes | [optional] 
**Members** | **String[]** | List of class members | [optional] 
**Filters** | [**ClassFilter[][]**](Array.md) | List of filter lists, which are joined by logical &#x60;and&#x60; (CNF) | [optional] 

## Examples

- Prepare the resource
```powershell
$ClassRead = Initialize-GrommunioAdminClassRead  -ID null `
 -Classname null `
 -Listname null `
 -ParentClasses null `
 -Children null `
 -Members null `
 -Filters null
```

- Convert the resource to JSON
```powershell
$ClassRead | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

