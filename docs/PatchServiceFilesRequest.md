# PatchServiceFilesRequest
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Name** | **String** | New service name. If a service with this name exists, configurations are merged | [optional] 

## Examples

- Prepare the resource
```powershell
$PatchServiceFilesRequest = Initialize-GrommunioAdminPatchServiceFilesRequest  -Name null
```

- Convert the resource to JSON
```powershell
$PatchServiceFilesRequest | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

