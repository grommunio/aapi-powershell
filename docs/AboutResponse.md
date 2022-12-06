# AboutResponse
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**API** | **String** | Version of the API (according to the specification) | [optional] 
**Backend** | **String** | Version of the implementation | [optional] 
**Schema** | **Int32** | Database schema version | [optional] 

## Examples

- Prepare the resource
```powershell
$AboutResponse = Initialize-GrommunioAdminAboutResponse  -API null `
 -Backend null `
 -Schema null
```

- Convert the resource to JSON
```powershell
$AboutResponse | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

