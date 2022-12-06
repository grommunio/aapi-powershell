# DomainsUsersStorePropsResponse
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**VarData** | [**SystemCollectionsHashtable**](.md) | User properties as name/value pairs | [optional] 

## Examples

- Prepare the resource
```powershell
$DomainsUsersStorePropsResponse = Initialize-GrommunioAdminDomainsUsersStorePropsResponse  -VarData null
```

- Convert the resource to JSON
```powershell
$DomainsUsersStorePropsResponse | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

