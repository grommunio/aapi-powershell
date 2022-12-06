# DomainsUsersRolesRequest
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Roles** | **Int32[]** | List of role IDs the user is associated with | [optional] 

## Examples

- Prepare the resource
```powershell
$DomainsUsersRolesRequest = Initialize-GrommunioAdminDomainsUsersRolesRequest  -Roles null
```

- Convert the resource to JSON
```powershell
$DomainsUsersRolesRequest | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

