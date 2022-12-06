# DomainHomeserver
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ID** | **Int32** | Unique ID of the object | [optional] [readonly] 
**Hostname** | **String** | Internal hostname of the server | [optional] 

## Examples

- Prepare the resource
```powershell
$DomainHomeserver = Initialize-GrommunioAdminDomainHomeserver  -ID null `
 -Hostname null
```

- Convert the resource to JSON
```powershell
$DomainHomeserver | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

