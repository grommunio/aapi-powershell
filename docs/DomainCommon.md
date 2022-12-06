# DomainCommon
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ID** | **Int32** | Unique ID of the object | [optional] [readonly] 
**OrgID** | **Int32** |  | [optional] [default to 0]
**Domainname** | **String** | Name of the domain, automatically converted to IDNA format | [optional] 
**Displayname** | **String** | Decoded unicode domain name | [optional] [readonly] 
**Homedir** | **String** |  | [optional] [readonly] 
**MaxUser** | **Int32** |  | [optional] 
**Title** | **String** |  | [optional] 
**Address** | **String** |  | [optional] 
**AdminName** | **String** |  | [optional] 
**Tel** | **String** |  | [optional] 
**EndDay** | **String** | Date string | [optional] 
**DomainStatus** | **Int32** | Domain status (0&#x3D;Normal, 1&#x3D;Suspended, 2&#x3D;Out Of Date, 3&#x3D;Deleted) | [optional] [default to 0]
**ActiveUsers** | **Int32** |  | [optional] [readonly] 
**InactiveUsers** | **Int32** |  | [optional] [readonly] 
**SyncPolicy** | [**DomainCommonSyncPolicy**](DomainCommonSyncPolicy.md) |  | [optional] 
**Chat** | **Boolean** | Whether chat is enabled for this domain | [optional] 

## Examples

- Prepare the resource
```powershell
$DomainCommon = Initialize-GrommunioAdminDomainCommon  -ID null `
 -OrgID null `
 -Domainname null `
 -Displayname null `
 -Homedir null `
 -MaxUser null `
 -Title null `
 -Address null `
 -AdminName null `
 -Tel null `
 -EndDay null `
 -DomainStatus null `
 -ActiveUsers null `
 -InactiveUsers null `
 -SyncPolicy null `
 -Chat null
```

- Convert the resource to JSON
```powershell
$DomainCommon | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

