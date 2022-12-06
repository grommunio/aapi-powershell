# SystemDbconfRequest
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Name** | **String** | New service name. If a service with this name exists, configurations are merged | [optional] 

## Examples

- Prepare the resource
```powershell
$SystemDbconfRequest = Initialize-GrommunioAdminSystemDbconfRequest  -Name null
```

- Convert the resource to JSON
```powershell
$SystemDbconfRequest | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

