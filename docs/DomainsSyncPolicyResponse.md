# DomainsSyncPolicyResponse
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**VarData** | [**DomainCommonSyncPolicy**](DomainCommonSyncPolicy.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$DomainsSyncPolicyResponse = Initialize-GrommunioAdminDomainsSyncPolicyResponse  -VarData null
```

- Convert the resource to JSON
```powershell
$DomainsSyncPolicyResponse | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

