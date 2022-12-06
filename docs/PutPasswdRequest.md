# PutPasswdRequest
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**New** | **String** | The new password | 
**Old** | **String** | The old password | 
**User** | **String** | Set password for a specific user (use inline authentication) | [optional] 

## Examples

- Prepare the resource
```powershell
$PutPasswdRequest = Initialize-GrommunioAdminPutPasswdRequest  -New null `
 -Old null `
 -User null
```

- Convert the resource to JSON
```powershell
$PutPasswdRequest | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

