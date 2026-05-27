# MlistRead
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ID** | **Int32** | Unique ID of the object | [optional] [readonly] 
**Listname** | **String** | Name or e-mail address of the list | [optional] 
**ListType** | **Int32** | Type of mailing list (0&#x3D;Normal, 2&#x3D;Domain) | [optional] 
**ListPrivilege** | **Int32** | Sender privilege of list (0&#x3D;All, 1&#x3D;Internal, 2&#x3D;Domain, 3&#x3D;Specific, 4&#x3D;Outgoing) | [optional] 
**Associations** | **String[]** | Recipients, only available if listType&#x3D;0 | [optional] 
**Specifieds** | **String[]** | Senders, only available if listPrivilege&#x3D;3 | [optional] 
**DisplayName** | **String** | Display name property of the associated user object | [optional] 
**Hidden** | **Int32** | attributehidde_gromox property of the associated user object | [optional] 
**User** | **Int32** | ID of the associated user | [optional] 

## Examples

- Prepare the resource
```powershell
$MlistRead = Initialize-GrommunioAdminMlistRead  -ID null `
 -Listname null `
 -ListType null `
 -ListPrivilege null `
 -Associations null `
 -Specifieds null `
 -DisplayName null `
 -Hidden null `
 -User null
```

- Convert the resource to JSON
```powershell
$MlistRead | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

