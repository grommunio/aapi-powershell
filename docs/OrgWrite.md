# OrgWrite
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Name** | **String** |  | [optional] 
**Description** | **String** |  | [optional] 
**Domains** | **Int32[]** | List of domain IDs belonging to the organization | [optional] 

## Examples

- Prepare the resource
```powershell
$OrgWrite = Initialize-GrommunioAdminOrgWrite  -Name null `
 -Description null `
 -Domains null
```

- Convert the resource to JSON
```powershell
$OrgWrite | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

