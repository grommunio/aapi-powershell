# SyncStatus
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ID** | **Int32** | Unique ID of the object | [optional] [readonly] 
**Username** | **String** |  | [optional] 
**Code** | [**Code**](Code.md) |  | [optional] 
**Message** | **String** | Update/import message | [optional] 

## Examples

- Prepare the resource
```powershell
$SyncStatus = Initialize-GrommunioAdminSyncStatus  -ID null `
 -Username null `
 -Code null `
 -Message null
```

- Convert the resource to JSON
```powershell
$SyncStatus | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

