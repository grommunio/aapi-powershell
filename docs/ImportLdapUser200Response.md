# ImportLdapUser200Response
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Message** | [**AnyType**](.md) | Contact import for multiple domains at once | [optional] 
**ID** | **Int32** | Unique ID of the object | [optional] [readonly] 
**Username** | **String** |  | [optional] 
**DomainID** | **Int32** |  | [optional] [readonly] 
**Roles** | [**Role[]**](Role.md) | List of role associated with the user | [optional] 
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
**LdapID** | **String** | Base64 encoded LDAP object ID | [optional] 
**Fetchmail** | [**FetchmailEntry[]**](FetchmailEntry.md) | List of fetchmail entries for this user | [optional] 
**SyncPolicy** | [**DomainCommonSyncPolicy**](DomainCommonSyncPolicy.md) |  | [optional] 
**Chat** | **Boolean** | Whether chat is enabled for this user | [optional] 
**ChatAdmin** | **Boolean** | Whether this user has grommunio-chat admin permissions | [optional] 
**Lang** | **String** | User language | [optional] 
**Forward** | [**UserForward**](UserForward.md) |  | [optional] 
**Homeserver** | [**DomainHomeserver**](DomainHomeserver.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$ImportLdapUser200Response = Initialize-GrommunioAdminImportLdapUser200Response  -Message null `
 -ID null `
 -Username null `
 -DomainID null `
 -Roles null `
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
 -LdapID null `
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
$ImportLdapUser200Response | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

