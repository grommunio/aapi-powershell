# MlistWrite
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Listname** | **String** | Name or e-mail address of the list | [optional] 
**ListType** | [**ListType1**](ListType1.md) |  | [optional] 
**ListPrivilege** | [**ListPrivilege**](ListPrivilege.md) |  | [optional] 
**Associations** | **String[]** | Recipients, only available if listType&#x3D;0 | [optional] 
**Specifieds** | **String[]** | Senders, only available if listPrivilege&#x3D;3 | [optional] 
**Class** | **Int32** | ID of the associated class, only available if listType&#x3D;3 | [optional] 

## Examples

- Prepare the resource
```powershell
$MlistWrite = Initialize-GrommunioAdminMlistWrite  -Listname null `
 -ListType null `
 -ListPrivilege null `
 -Associations null `
 -Specifieds null `
 -Class null
```

- Convert the resource to JSON
```powershell
$MlistWrite | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

