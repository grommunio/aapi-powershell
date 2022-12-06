# SystemDashboardServicesResponse
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Services** | [**Service[]**](Service.md) | List of systemd services | [optional] 

## Examples

- Prepare the resource
```powershell
$SystemDashboardServicesResponse = Initialize-GrommunioAdminSystemDashboardServicesResponse  -Services null
```

- Convert the resource to JSON
```powershell
$SystemDashboardServicesResponse | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

