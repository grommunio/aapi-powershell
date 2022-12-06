# SetOrgLDAPConfRequest
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Disabled** | **Boolean** | Disable LDAP service | [optional] [default to $false]
**Connection** | [**LdapConfigConnection**](LdapConfigConnection.md) |  | [optional] 
**BaseDn** | **String** | Base DN to use for user search | [optional] 
**ObjectID** | **String** | Name of an attribute that uniquely identifies an LDAP object | [optional] 
**Users** | [**LdapConfigUsers**](LdapConfigUsers.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$SetOrgLDAPConfRequest = Initialize-GrommunioAdminSetOrgLDAPConfRequest  -Disabled null `
 -Connection null `
 -BaseDn null `
 -ObjectID null `
 -Users null
```

- Convert the resource to JSON
```powershell
$SetOrgLDAPConfRequest | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

