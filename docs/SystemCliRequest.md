# SystemCliRequest
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Command** | **String** | CLI command to execute | 
**Mode** | [**Mode**](Mode.md) |  | [optional] 
**Color** | **Boolean** | Enable terminal colors | [optional] [default to $false]
**Fs** | **System.Collections.Hashtable** | If not null, enable filesystem redirection. Each property is a file path | [optional] 

## Examples

- Prepare the resource
```powershell
$SystemCliRequest = Initialize-GrommunioAdminSystemCliRequest  -Command null `
 -Mode null `
 -Color null `
 -Fs null
```

- Convert the resource to JSON
```powershell
$SystemCliRequest | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

