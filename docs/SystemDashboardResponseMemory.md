# SystemDashboardResponseMemory
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Percent** | **Decimal** | Percent of used memory | [optional] 
**Total** | **Int32** | Total memory (bytes) | [optional] 
**Free** | **Int32** | Unused memory (bytes) | [optional] 
**Used** | **Int32** | Memory used by applications (bytes) | [optional] 
**Buffer** | **Int32** | Memory used for buffers (bytes) | [optional] 
**Cache** | **Int32** | Memory used for cached data (bytes) | [optional] 
**Available** | [**AnyType**](.md) | Memory that is available for applications (bytes) | [optional] 

## Examples

- Prepare the resource
```powershell
$SystemDashboardResponseMemory = Initialize-GrommunioAdminSystemDashboardResponseMemory  -Percent null `
 -Total null `
 -Free null `
 -Used null `
 -Buffer null `
 -Cache null `
 -Available null
```

- Convert the resource to JSON
```powershell
$SystemDashboardResponseMemory | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

