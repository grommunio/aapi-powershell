# SystemMailqResponse
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**PostfixMailq** | **String** | Output of the postfix mailq command | [optional] 
**GromoxMailq** | **String** | Output of the gromox-mailq command | [optional] 
**Postqueue** | [**SystemCollectionsHashtable[]**](SystemCollectionsHashtable.md) | Output of postqueue -j | [optional] 

## Examples

- Prepare the resource
```powershell
$SystemMailqResponse = Initialize-GrommunioAdminSystemMailqResponse  -PostfixMailq null `
 -GromoxMailq null `
 -Postqueue null
```

- Convert the resource to JSON
```powershell
$SystemMailqResponse | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

