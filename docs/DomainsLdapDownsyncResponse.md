# DomainsLdapDownsyncResponse
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**VarData** | [**SyncStatus[]**](SyncStatus.md) | List of updated/imported users | [optional] 

## Examples

- Prepare the resource
```powershell
$DomainsLdapDownsyncResponse = Initialize-GrommunioAdminDomainsLdapDownsyncResponse  -VarData null
```

- Convert the resource to JSON
```powershell
$DomainsLdapDownsyncResponse | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

