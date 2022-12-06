# UserInit
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Username** | **String** |  | [optional] 
**Password** | **String** | Initial password | [optional] 
**DomainID** | **Int32** |  | [optional] [readonly] 
**Properties** | [**SystemCollectionsHashtable**](.md) | User properties as name/value pairs | [optional] 
**Aliases** | **String[]** | List of aliases for this user | [optional] 
**Status** | [**UserStatus**](UserStatus.md) |  | [optional] 
**Pop3Imap** | **Boolean** | POP3/IMAP privilege | [optional] 
**Smtp** | **Boolean** | SMTP privilege | [optional] 
**ChangePassword** | **Boolean** | Password changing privilege | [optional] 
**PublicAddress** | **Boolean** | Public address privilege | [optional] 
**PrivChat** | **Boolean** | Chat privilege | [optional] 
**PrivVideo** | **Boolean** | Meet privilege | [optional] 
**PrivFiles** | **Boolean** | Files privilege | [optional] 
**PrivArchive** | **Boolean** | Archive privilege | [optional] 
**Fetchmail** | [**FetchmailEntry[]**](FetchmailEntry.md) | List of fetchmail entries for this user | [optional] 
**SyncPolicy** | [**DomainCommonSyncPolicy**](DomainCommonSyncPolicy.md) |  | [optional] 
**Chat** | **Boolean** | Whether chat is enabled for this user | [optional] 
**ChatAdmin** | **Boolean** | Whether this user has grommunio-chat admin permissions | [optional] 
**Lang** | **String** | User language | [optional] 
**Forward** | [**UserForward**](UserForward.md) |  | [optional] 
**Homeserver** | **Int32** | ID of the homeserver | [optional] 

## Examples

- Prepare the resource
```powershell
$UserInit = Initialize-GrommunioAdminUserInit  -Username null `
 -Password null `
 -DomainID null `
 -Properties null `
 -Aliases null `
 -Status null `
 -Pop3Imap null `
 -Smtp null `
 -ChangePassword null `
 -PublicAddress null `
 -PrivChat null `
 -PrivVideo null `
 -PrivFiles null `
 -PrivArchive null `
 -Fetchmail null `
 -SyncPolicy null `
 -Chat null `
 -ChatAdmin null `
 -Lang null `
 -Forward null `
 -Homeserver null
```

- Convert the resource to JSON
```powershell
$UserInit | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

