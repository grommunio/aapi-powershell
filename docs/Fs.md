# Fs
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Mode** | **String** | Mode the file was opened with | [optional] 
**Conf** | **String** | Configuration key the file path was derived from | [optional] 
**Content** | **String** | Content of the file | [optional] 

## Examples

- Prepare the resource
```powershell
$Fs = Initialize-GrommunioAdminFs  -Mode null `
 -Conf null `
 -Content null
```

- Convert the resource to JSON
```powershell
$Fs | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

