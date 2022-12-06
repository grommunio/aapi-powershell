# DomainsLdapCheckResponse
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Orphaned** | [**Orphaned[]**](Orphaned.md) | List of users whose externID could not be found in LDAP | [optional] 

## Examples

- Prepare the resource
```powershell
$DomainsLdapCheckResponse = Initialize-GrommunioAdminDomainsLdapCheckResponse  -Orphaned null
```

- Convert the resource to JSON
```powershell
$DomainsLdapCheckResponse | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

