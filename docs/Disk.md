# Disk
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Percent** | **Decimal** | Percentage of used memory | [optional] 
**Total** | **Int32** | Total disk space (bytes) | [optional] 
**Used** | **Int32** | Used disk space (bytes) | [optional] 
**Free** | **Int32** | Free disk space (bytes) | [optional] 
**Device** | **String** |  | [optional] 
**Mountpoint** | **String** |  | [optional] 
**Filesystem** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$Disk = Initialize-GrommunioAdminDisk  -Percent null `
 -Total null `
 -Used null `
 -Free null `
 -Device null `
 -Mountpoint null `
 -Filesystem null
```

- Convert the resource to JSON
```powershell
$Disk | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

