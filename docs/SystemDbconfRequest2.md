# SystemDbconfRequest2
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Name** | **String** | New file name | [optional] 
**VarData** | **System.Collections.Hashtable** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$SystemDbconfRequest2 = Initialize-GrommunioAdminSystemDbconfRequest2  -Name null `
 -VarData null
```

- Convert the resource to JSON
```powershell
$SystemDbconfRequest2 | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

