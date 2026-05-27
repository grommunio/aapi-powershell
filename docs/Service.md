# Service
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**State** | **String** |  | [optional] 
**Substate** | **String** |  | [optional] 
**Description** | **String** |  | [optional] 
**Autostart** | **String** | State of the unit file | [optional] 
**Since** | **String** | Date string with time | [optional] 
**Name** | **String** | Name of the service | [optional] 
**Unit** | **String** | Name of the systemd unit. Required for action endpoints. | [optional] 

## Examples

- Prepare the resource
```powershell
$Service = Initialize-GrommunioAdminService  -State null `
 -Substate null `
 -Description null `
 -Autostart null `
 -Since null `
 -Name null `
 -Unit null
```

- Convert the resource to JSON
```powershell
$Service | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

