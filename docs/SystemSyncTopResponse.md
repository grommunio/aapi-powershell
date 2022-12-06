# SystemSyncTopResponse
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**MaxUpdated** | **Int32** | Maximum effective value for &#x60;filterUpdated&#x60; | [optional] 
**MaxEnded** | **Int32** | Maximum effective value for &#x60;filterEnded&#x60; | [optional] 
**VarData** | [**Data2[]**](Data2.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$SystemSyncTopResponse = Initialize-GrommunioAdminSystemSyncTopResponse  -MaxUpdated null `
 -MaxEnded null `
 -VarData null
```

- Convert the resource to JSON
```powershell
$SystemSyncTopResponse | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

