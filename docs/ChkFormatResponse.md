# ChkFormatResponse
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Domain** | **String** | Error message or &#x60;null&#x60; if valid | [optional] 
**Email** | **String** | Error message or &#x60;null&#x60; if valid | [optional] 

## Examples

- Prepare the resource
```powershell
$ChkFormatResponse = Initialize-GrommunioAdminChkFormatResponse  -Domain null `
 -Email null
```

- Convert the resource to JSON
```powershell
$ChkFormatResponse | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

