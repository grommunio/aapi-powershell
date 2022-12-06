# Data6
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ID** | **String** | LDAP object ID of the person | [optional] 
**Name** | **String** | Display name of the person | [optional] 
**Email** | **String** | E-mail address of the person | [optional] 
**Type** | **String** | Type of the entry (either &#39;user&#39; or &#39;contact&#39;) | [optional] 
**VarError** | **String** | Why the entry cannot be imported (showAll&#x3D;true only) | [optional] 

## Examples

- Prepare the resource
```powershell
$Data6 = Initialize-GrommunioAdminData6  -ID null `
 -Name null `
 -Email null `
 -Type null `
 -VarError null
```

- Convert the resource to JSON
```powershell
$Data6 | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

