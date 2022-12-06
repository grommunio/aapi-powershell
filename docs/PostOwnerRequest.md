# PostOwnerRequest
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Username** | **String** | Username (e-mail address) to add to member list | 
**Permissions** | **Int32** | Bit mask of permissions to grant the user (defaults to folder owner) | [optional] 

## Examples

- Prepare the resource
```powershell
$PostOwnerRequest = Initialize-GrommunioAdminPostOwnerRequest  -Username null `
 -Permissions null
```

- Convert the resource to JSON
```powershell
$PostOwnerRequest | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

