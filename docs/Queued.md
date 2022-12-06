# Queued
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Message** | **String** |  | [optional] 
**TaskID** | **Int32** | ID of the task running the command | [optional] 

## Examples

- Prepare the resource
```powershell
$Queued = Initialize-GrommunioAdminQueued  -Message null `
 -TaskID null
```

- Convert the resource to JSON
```powershell
$Queued | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

