# DomainsUsersRolesResponse
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**VarData** | [**Data4[]**](Data4.md) | List of role references | [optional] 

## Examples

- Prepare the resource
```powershell
$DomainsUsersRolesResponse = Initialize-GrommunioAdminDomainsUsersRolesResponse  -VarData null
```

- Convert the resource to JSON
```powershell
$DomainsUsersRolesResponse | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

