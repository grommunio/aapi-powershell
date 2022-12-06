# Domain1
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ID** | **Int32** | Unique ID of the object | [optional] [readonly] 
**Domainname** | **String** |  | [optional] 
**Displayname** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$Domain1 = Initialize-GrommunioAdminDomain1  -ID null `
 -Domainname null `
 -Displayname null
```

- Convert the resource to JSON
```powershell
$Domain1 | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

