# LdapConfigConnection
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Server** | **String** | Space separated list of addresses of the LDAP server to connect to | [optional] 
**BindUser** | **String** | DN of the user to perform initial bind with | [optional] 
**BindPass** | **String** | Password for bindUser | [optional] 
**Starttls** | **Boolean** | Whether to initiate a StartTLS connection | [optional] 

## Examples

- Prepare the resource
```powershell
$LdapConfigConnection = Initialize-GrommunioAdminLdapConfigConnection  -Server null `
 -BindUser null `
 -BindPass null `
 -Starttls null
```

- Convert the resource to JSON
```powershell
$LdapConfigConnection | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

