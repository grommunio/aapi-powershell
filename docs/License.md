# License
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Product** | **String** | Product name | [optional] 
**MaxUsers** | **Int32** | License user limit | [optional] 
**NotBefore** | **String** | Date string with time | [optional] 
**NotAfter** | **String** | Date string with time | [optional] 
**CurrentUsers** | **Int32** | Number of currently existing users | [optional] 
**Certificate** | **String** | Download link for the certificate | [optional] 

## Examples

- Prepare the resource
```powershell
$License = Initialize-GrommunioAdminLicense  -Product null `
 -MaxUsers null `
 -NotBefore null `
 -NotAfter null `
 -CurrentUsers null `
 -Certificate null
```

- Convert the resource to JSON
```powershell
$License | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

