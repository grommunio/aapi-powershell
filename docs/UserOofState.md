# UserOofState
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**State** | [**State1**](State1.md) |  | [optional] 
**ExternalAudience** | [**ExternalAudience**](ExternalAudience.md) |  | [optional] 
**StartTime** | **String** | Date string with time | [optional] 
**EndTime** | **String** | Date string with time | [optional] 
**InternalSubject** | **String** | Subject for internal out-of-office reply | [optional] [default to "Out of Office"]
**InternalReply** | **String** | Internal out-of-office reply body | [optional] 
**ExternalSubject** | **String** | Subject for external out-of-office reply | [optional] [default to "Out of Office"]
**ExternalReply** | **String** | External out-of-office reply body | [optional] 

## Examples

- Prepare the resource
```powershell
$UserOofState = Initialize-GrommunioAdminUserOofState  -State null `
 -ExternalAudience null `
 -StartTime null `
 -EndTime null `
 -InternalSubject null `
 -InternalReply null `
 -ExternalSubject null `
 -ExternalReply null
```

- Convert the resource to JSON
```powershell
$UserOofState | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

