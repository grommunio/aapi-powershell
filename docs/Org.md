# Org
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ID** | **Int32** | Unique ID of the object | [optional] [readonly] 
**Name** | **String** |  | [optional] 
**Description** | **String** |  | [optional] 
**DomainCount** | **Int32** | Number of domains in this organization | [optional] 
**Domains** | [**OrgDomainsInner[]**](OrgDomainsInner.md) | List of domains belonging to the organization | [optional] 

## Examples

- Prepare the resource
```powershell
$Org = Initialize-GrommunioAdminOrg  -ID null `
 -Name null `
 -Description null `
 -DomainCount null `
 -Domains null
```

- Convert the resource to JSON
```powershell
$Org | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

