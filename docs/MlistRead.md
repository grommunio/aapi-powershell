# MlistRead
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ID** | **Int32** | Unique ID of the object | [optional] [readonly] 
**Listname** | **String** | Name or e-mail address of the list | [optional] 
**ListType** | [**ListType**](ListType.md) |  | [optional] 
**ListPrivilege** | [**ListPrivilege**](ListPrivilege.md) |  | [optional] 
**Associations** | **String[]** | Recipients, only available if listType&#x3D;0 | [optional] 
**Specifieds** | **String[]** | Senders, only available if listPrivilege&#x3D;3 | [optional] 
**Class** | [**MlistReadClass**](MlistReadClass.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$MlistRead = Initialize-GrommunioAdminMlistRead  -ID null `
 -Listname null `
 -ListType null `
 -ListPrivilege null `
 -Associations null `
 -Specifieds null `
 -Class null
```

- Convert the resource to JSON
```powershell
$MlistRead | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

