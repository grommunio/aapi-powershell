# SystemDashboardResponse
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Disks** | [**Disk[]**](Disk.md) | List of disks | [optional] 
**Load** | **Decimal[]** | Load averages (1 / 5 / 15 minutes) | [optional] 
**CpuPercent** | [**SystemDashboardResponseCpuPercent**](SystemDashboardResponseCpuPercent.md) |  | [optional] 
**Memory** | [**SystemDashboardResponseMemory**](SystemDashboardResponseMemory.md) |  | [optional] 
**Swap** | [**SystemDashboardResponseSwap**](SystemDashboardResponseSwap.md) |  | [optional] 
**Booted** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$SystemDashboardResponse = Initialize-GrommunioAdminSystemDashboardResponse  -Disks null `
 -Load null `
 -CpuPercent null `
 -Memory null `
 -Swap null `
 -Booted null
```

- Convert the resource to JSON
```powershell
$SystemDashboardResponse | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

