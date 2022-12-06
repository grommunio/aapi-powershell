# CpuPercent
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**User** | **Decimal** | Percentage of user CPU time | [optional] 
**System** | **Decimal** | Percentage of system CPU time | [optional] 
**Io** | **Decimal** | Percentage of CPU time used for IO operations | [optional] 
**Interrupt** | **Decimal** | Percentage of CPU time used by interrupts | [optional] 
**Steal** | **Decimal** | Percentage of CPU time spent waiting for the hypervisor | [optional] 
**Idle** | **Decimal** | Idle CPU time | [optional] 

## Examples

- Prepare the resource
```powershell
$CpuPercent = Initialize-GrommunioAdminCpuPercent  -User null `
 -System null `
 -Io null `
 -Interrupt null `
 -Steal null `
 -Idle null
```

- Convert the resource to JSON
```powershell
$CpuPercent | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

