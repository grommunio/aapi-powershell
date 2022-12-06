# PasswdRequest
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**New** | **String** | The new password | 
**Old** | **String** | The old password | 
**User** | **String** | Set password for a specific user (use inline authentication) | [optional] 

## Examples

- Prepare the resource
```powershell
$PasswdRequest = Initialize-GrommunioAdminPasswdRequest  -New null `
 -Old null `
 -User null
```

- Convert the resource to JSON
```powershell
$PasswdRequest | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

