# SystemOrgsLdapDownsyncResponse
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**VarData** | [**SyncStatus[]**](SyncStatus.md) | List of updated/imported users | [optional] 

## Examples

- Prepare the resource
```powershell
$SystemOrgsLdapDownsyncResponse = Initialize-GrommunioAdminSystemOrgsLdapDownsyncResponse  -VarData null
```

- Convert the resource to JSON
```powershell
$SystemOrgsLdapDownsyncResponse | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

