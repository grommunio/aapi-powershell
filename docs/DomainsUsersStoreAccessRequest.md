# DomainsUsersStoreAccessRequest
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Username** | **String** | Mail address of the user to grant access to | [optional] 

## Examples

- Prepare the resource
```powershell
$DomainsUsersStoreAccessRequest = Initialize-GrommunioAdminDomainsUsersStoreAccessRequest  -Username null
```

- Convert the resource to JSON
```powershell
$DomainsUsersStoreAccessRequest | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

