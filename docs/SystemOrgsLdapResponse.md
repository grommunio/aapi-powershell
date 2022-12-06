# SystemOrgsLdapResponse
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**LdapAvailable** | **Boolean** | Whether the LDAP is currently available | [optional] 
**VarData** | [**SetOrgLDAPConfRequest**](SetOrgLDAPConfRequest.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$SystemOrgsLdapResponse = Initialize-GrommunioAdminSystemOrgsLdapResponse  -LdapAvailable null `
 -VarData null
```

- Convert the resource to JSON
```powershell
$SystemOrgsLdapResponse | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

