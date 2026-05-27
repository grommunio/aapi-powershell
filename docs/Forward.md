# Forward
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ForwardType** | **Int32** | Forward type (0&#x3D;CC, 1&#x3D;Redirect) | [optional] 
**Destination** | **String** | Destination mail address | [optional] 

## Examples

- Prepare the resource
```powershell
$Forward = Initialize-GrommunioAdminForward  -ForwardType null `
 -Destination null
```

- Convert the resource to JSON
```powershell
$Forward | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

