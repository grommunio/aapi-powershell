# ServiceUserinfoResponse
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Ldap** | **Boolean** | Whether the user is linked to an LDAP object | [optional] 

## Examples

- Prepare the resource
```powershell
$ServiceUserinfoResponse = Initialize-GrommunioAdminServiceUserinfoResponse  -Ldap null
```

- Convert the resource to JSON
```powershell
$ServiceUserinfoResponse | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

