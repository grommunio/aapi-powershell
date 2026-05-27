# PostDeviceWipeRequest
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Password** | **String** | Password of the user requesting the wipe | [optional] 
**Status** | **Int32** | New device wipe status | [optional] 

## Examples

- Prepare the resource
```powershell
$PostDeviceWipeRequest = Initialize-GrommunioAdminPostDeviceWipeRequest  -Password null `
 -Status null
```

- Convert the resource to JSON
```powershell
$PostDeviceWipeRequest | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

