# InvalidRequest1
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Message** | **String** |  | [optional] 
**Errors** | **String[]** | List of errors encountered during validation | [optional] 

## Examples

- Prepare the resource
```powershell
$InvalidRequest1 = Initialize-GrommunioAdminInvalidRequest1  -Message null `
 -Errors null
```

- Convert the resource to JSON
```powershell
$InvalidRequest1 | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

