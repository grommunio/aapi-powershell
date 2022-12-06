# DomainsUsersStorePropsResponse1
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Message** | **String** |  | [optional] 
**Errors** | [**SystemCollectionsHashtable**](.md) | Tag name / error message for tags that failed to update | [optional] 

## Examples

- Prepare the resource
```powershell
$DomainsUsersStorePropsResponse1 = Initialize-GrommunioAdminDomainsUsersStorePropsResponse1  -Message null `
 -Errors null
```

- Convert the resource to JSON
```powershell
$DomainsUsersStorePropsResponse1 | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

