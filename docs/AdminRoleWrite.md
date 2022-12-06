# AdminRoleWrite
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Name** | **String** |  | [optional] 
**Description** | **String** |  | [optional] 
**Permissions** | [**AdminPermission[]**](AdminPermission.md) |  | [optional] 
**Users** | **Int32[]** | List of user IDs to associate with the role | [optional] 

## Examples

- Prepare the resource
```powershell
$AdminRoleWrite = Initialize-GrommunioAdminAdminRoleWrite  -Name null `
 -Description null `
 -Permissions null `
 -Users null
```

- Convert the resource to JSON
```powershell
$AdminRoleWrite | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

