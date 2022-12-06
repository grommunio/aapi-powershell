# DomainsUsersResponse
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**VarData** | [**User[]**](User.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$DomainsUsersResponse = Initialize-GrommunioAdminDomainsUsersResponse  -VarData null
```

- Convert the resource to JSON
```powershell
$DomainsUsersResponse | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

