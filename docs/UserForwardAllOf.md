# UserForwardAllOf
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ForwardType** | [**ForwardType**](ForwardType.md) |  | [optional] 
**Destination** | **String** | Destination mail address | [optional] 

## Examples

- Prepare the resource
```powershell
$UserForwardAllOf = Initialize-GrommunioAdminUserForwardAllOf  -ForwardType null `
 -Destination null
```

- Convert the resource to JSON
```powershell
$UserForwardAllOf | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

