# FolderMemberList
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**MemberID** | **Int32** | Member ID of the owner list | [optional] 
**DisplayName** | **String** | Name of member | [optional] 
**Username** | **String** | E-Mail address of the user | [optional] 

## Examples

- Prepare the resource
```powershell
$FolderMemberList = Initialize-GrommunioAdminFolderMemberList  -MemberID null `
 -DisplayName null `
 -Username null
```

- Convert the resource to JSON
```powershell
$FolderMemberList | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

