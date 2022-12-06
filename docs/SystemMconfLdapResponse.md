# SystemMconfLdapResponse
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**LdapAvailable** | **Boolean** | Whether ldap is currently active | [optional] 
**VarData** | [**SetOrgLDAPConfRequest**](SetOrgLDAPConfRequest.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$SystemMconfLdapResponse = Initialize-GrommunioAdminSystemMconfLdapResponse  -LdapAvailable null `
 -VarData null
```

- Convert the resource to JSON
```powershell
$SystemMconfLdapResponse | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

