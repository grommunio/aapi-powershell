# Data3
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Devicetype** | **String** |  | [optional] 
**Useragent** | **String** |  | [optional] 
**Firstsynctime** | **Int32** | UNIX timestamp of first sync | [optional] 
**Lastupdatetime** | **Int32** | UNIX timestamp of last update | [optional] 
**Asversion** | [**Data3Asversion**](Data3Asversion.md) |  | [optional] 
**FoldersSyncable** | **Int32** | Number of folders that can be synced | [optional] 
**FoldersSynced** | **Int32** | Number of folders that were actually synced | [optional] 

## Examples

- Prepare the resource
```powershell
$Data3 = Initialize-GrommunioAdminData3  -Devicetype null `
 -Useragent null `
 -Firstsynctime null `
 -Lastupdatetime null `
 -Asversion null `
 -FoldersSyncable null `
 -FoldersSynced null
```

- Convert the resource to JSON
```powershell
$Data3 | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

