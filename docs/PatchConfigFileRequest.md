# PatchConfigFileRequest
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Name** | **String** | New file name | [optional] 
**VarData** | **System.Collections.Hashtable** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$PatchConfigFileRequest = Initialize-GrommunioAdminPatchConfigFileRequest  -Name null `
 -VarData null
```

- Convert the resource to JSON
```powershell
$PatchConfigFileRequest | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

