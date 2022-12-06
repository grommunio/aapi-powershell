# ProfileResponse
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**User** | [**ProfileResponseUser**](ProfileResponseUser.md) |  | [optional] 
**Capabilities** | **String[]** | List of capabilities the current user has | [optional] 

## Examples

- Prepare the resource
```powershell
$ProfileResponse = Initialize-GrommunioAdminProfileResponse  -User null `
 -Capabilities null
```

- Convert the resource to JSON
```powershell
$ProfileResponse | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

