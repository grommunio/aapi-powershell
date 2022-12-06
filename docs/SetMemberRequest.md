# SetMemberRequest
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Permissions** | **Int32** | Bit mask of permissions to set for the user (defaults to folder owner) | 

## Examples

- Prepare the resource
```powershell
$SetMemberRequest = Initialize-GrommunioAdminSetMemberRequest  -Permissions null
```

- Convert the resource to JSON
```powershell
$SetMemberRequest | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

