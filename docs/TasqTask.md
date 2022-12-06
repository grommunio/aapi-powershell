# TasqTask
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ID** | **Int32** | Unique ID of the object | [optional] [readonly] 
**Command** | **String** | Task command | [optional] 
**State** | [**State**](State.md) |  | [optional] 
**Created** | **String** | Date string with time | [optional] 
**Updated** | **String** | Date string with time | [optional] 
**Message** | **String** | Status message | [optional] 
**Params** | [**SystemCollectionsHashtable**](.md) | Task specific parameters | [optional] 

## Examples

- Prepare the resource
```powershell
$TasqTask = Initialize-GrommunioAdminTasqTask  -ID null `
 -Command null `
 -State null `
 -Created null `
 -Updated null `
 -Message null `
 -Params null
```

- Convert the resource to JSON
```powershell
$TasqTask | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

