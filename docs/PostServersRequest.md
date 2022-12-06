# PostServersRequest
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ID** | **Int32** | Unique ID of the object | [optional] [readonly] 
**Hostname** | **String** | Internal hostname of the server | [optional] 
**Extname** | **String** | External address of the server | [optional] 
**Users** | **Int32** | Number of users on the server | [optional] [readonly] 
**Domains** | **Int32** | Number of domains on the server | [optional] [readonly] 

## Examples

- Prepare the resource
```powershell
$PostServersRequest = Initialize-GrommunioAdminPostServersRequest  -ID null `
 -Hostname null `
 -Extname null `
 -Users null `
 -Domains null
```

- Convert the resource to JSON
```powershell
$PostServersRequest | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

