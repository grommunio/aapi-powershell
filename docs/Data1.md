# Data1
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Level** | **Int32** | Priority level number as described in journalctl (1) | [optional] 
**Message** | **String** | Log message | [optional] 
**Time** | **String** | Precise date/time string including fractional seconds | [optional] 
**Runtime** | **Decimal** | Time since last reboot | [optional] 

## Examples

- Prepare the resource
```powershell
$Data1 = Initialize-GrommunioAdminData1  -Level null `
 -Message null `
 -Time null `
 -Runtime null
```

- Convert the resource to JSON
```powershell
$Data1 | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

