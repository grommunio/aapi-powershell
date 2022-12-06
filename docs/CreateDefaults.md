# CreateDefaults
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**User** | [**SystemCollectionsHashtable**](.md) | Default values for user creation | [optional] 
**Domain** | [**SystemCollectionsHashtable**](.md) | Default values for domain creation | [optional] 

## Examples

- Prepare the resource
```powershell
$CreateDefaults = Initialize-GrommunioAdminCreateDefaults  -User null `
 -Domain null
```

- Convert the resource to JSON
```powershell
$CreateDefaults | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

