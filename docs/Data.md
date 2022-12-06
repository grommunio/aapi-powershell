# ModelData
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Status** | **Int32** | Device status | [optional] 

## Examples

- Prepare the resource
```powershell
$ModelData = Initialize-GrommunioAdminModelData  -Status null
```

- Convert the resource to JSON
```powershell
$ModelData | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

