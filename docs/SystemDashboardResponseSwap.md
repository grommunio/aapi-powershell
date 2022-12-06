# SystemDashboardResponseSwap
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Percent** | **Decimal** | Percentage of used swap memory | [optional] 
**Total** | **Int32** | Total swap memory (bytes) | [optional] 
**Free** | **Int32** | Available swap memory (bytes) | [optional] 
**Used** | **Int32** | Used swap memory (bytes) | [optional] 

## Examples

- Prepare the resource
```powershell
$SystemDashboardResponseSwap = Initialize-GrommunioAdminSystemDashboardResponseSwap  -Percent null `
 -Total null `
 -Free null `
 -Used null
```

- Convert the resource to JSON
```powershell
$SystemDashboardResponseSwap | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

