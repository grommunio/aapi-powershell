# Data2
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**VarPid** | **Int32** | Process ID | [optional] 
**Ip** | **String** | IP address of the device | [optional] 
**User** | **String** |  | [optional] 
**Start** | **Int32** | UNIX timestamp of process start | [optional] 
**Devtype** | **String** |  | [optional] 
**Devid** | **String** |  | [optional] 
**Devagent** | **String** |  | [optional] 
**Command** | **Int32** |  | [optional] 
**Ended** | **Int32** | UNIX timestamp of process end or 0 if still running | [optional] 
**Push** | **Boolean** |  | [optional] 
**Addinfo** | **String** | Additional information about the process | [optional] 
**Update** | **Int32** | UNIX timestamp of last update | [optional] 

## Examples

- Prepare the resource
```powershell
$Data2 = Initialize-GrommunioAdminData2  -VarPid null `
 -Ip null `
 -User null `
 -Start null `
 -Devtype null `
 -Devid null `
 -Devagent null `
 -Command null `
 -Ended null `
 -Push null `
 -Addinfo null `
 -Update null
```

- Convert the resource to JSON
```powershell
$Data2 | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

