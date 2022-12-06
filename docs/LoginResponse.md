# LoginResponse
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**GrommunioAuthJwt** | **String** | API access token | [optional] 
**Csrf** | **String** | CSRF token | [optional] 

## Examples

- Prepare the resource
```powershell
$LoginResponse = Initialize-GrommunioAdminLoginResponse  -GrommunioAuthJwt null `
 -Csrf null
```

- Convert the resource to JSON
```powershell
$LoginResponse | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

