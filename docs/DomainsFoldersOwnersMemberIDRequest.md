# DomainsFoldersOwnersMemberIDRequest
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Permissions** | **Int32** | Bit mask of permissions to set for the user (defaults to folder owner) | 

## Examples

- Prepare the resource
```powershell
$DomainsFoldersOwnersMemberIDRequest = Initialize-GrommunioAdminDomainsFoldersOwnersMemberIDRequest  -Permissions null
```

- Convert the resource to JSON
```powershell
$DomainsFoldersOwnersMemberIDRequest | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

