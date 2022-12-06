# AdminRole
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ID** | **Int32** | Unique ID of the object | [optional] [readonly] 
**Name** | **String** |  | [optional] 
**Description** | **String** |  | [optional] 
**Permissions** | [**AdminPermission[]**](AdminPermission.md) | List of permissions associated with the role | [optional] 
**Users** | [**User1[]**](User1.md) | List of users associated with the role | [optional] 

## Examples

- Prepare the resource
```powershell
$AdminRole = Initialize-GrommunioAdminAdminRole  -ID null `
 -Name null `
 -Description null `
 -Permissions null `
 -Users null
```

- Convert the resource to JSON
```powershell
$AdminRole | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

