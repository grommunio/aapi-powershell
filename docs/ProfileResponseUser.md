# ProfileResponseUser
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Username** | **String** |  | [optional] 
**RealName** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$ProfileResponseUser = Initialize-GrommunioAdminProfileResponseUser  -Username null `
 -RealName null
```

- Convert the resource to JSON
```powershell
$ProfileResponseUser | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

