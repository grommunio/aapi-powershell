# StatusResponse
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Message** | **String** |  | [optional] 
**Database** | **Boolean** | Whether the database connection is initialized | [optional] 
**Tasq** | **Boolean** | Whether the TasQ server is running | [optional] 

## Examples

- Prepare the resource
```powershell
$StatusResponse = Initialize-GrommunioAdminStatusResponse  -Message null `
 -Database null `
 -Tasq null
```

- Convert the resource to JSON
```powershell
$StatusResponse | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

