# Users
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Username** | **String** | Name of the attribute that corresponds to the username (e-mail address) | [optional] 
**DisplayName** | **String** | Name of the attribute that contains the name | [optional] 
**Filters** | **String[]** | List of additional filter expressions to use for user search | [optional] 
**VarFilter** | **String** | LDAP search filter to apply to user lookup | [optional] 
**Templates** | **String[]** | List of mapping templates to use | [optional] 
**Attributes** | **System.Collections.Hashtable** | LDAP attribute -&gt; PropTag mapping to used for LDAP import. Any mappings specified take precedence over active templates | [optional] 
**DefaultQuota** | **Int32** | Storage quota of imported users if no mapping exists | [optional] 
**SearchAttributes** | **String[]** | List of attributes to use for searching | [optional] 
**Aliases** | **String** | LDAP attribute containing alternative e-mail addresses | [optional] 

## Examples

- Prepare the resource
```powershell
$Users = Initialize-GrommunioAdminUsers  -Username null `
 -DisplayName null `
 -Filters null `
 -VarFilter (&amp;(objectclass&#x3D;person)(mailPrimaryAddress&#x3D;*)) `
 -Templates null `
 -Attributes null `
 -DefaultQuota null `
 -SearchAttributes null `
 -Aliases null
```

- Convert the resource to JSON
```powershell
$Users | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

