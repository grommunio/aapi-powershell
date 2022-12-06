# SetUserDeviceWipeStatusRequest
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Password** | **String** | Password of the logged in user (with login) or the device owner (without login). Required when initiating wipe. | [optional] 
**RemoteIP** | **String** | Source IP of the status update (default is the request origin). | [optional] 
**Status** | [**Status**](Status.md) |  | 
**Time** | **Int32** | UNIX timestamp of the status update (default is time of the request) | [optional] 

## Examples

- Prepare the resource
```powershell
$SetUserDeviceWipeStatusRequest = Initialize-GrommunioAdminSetUserDeviceWipeStatusRequest  -Password null `
 -RemoteIP null `
 -Status null `
 -Time null
```

- Convert the resource to JSON
```powershell
$SetUserDeviceWipeStatusRequest | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

