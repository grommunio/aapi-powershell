# ImportLdapUser200Response
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Message** | [**AnyType**](.md) | Contact import for multiple domains at once | [optional] 
**ID** | **Int32** | Unique ID of the object | [optional] [readonly] 
**Username** | **String** |  | [optional] 
**DomainID** | **Int32** |  | [optional] [readonly] 
**Roles** | [**UserRolesInner[]**](UserRolesInner.md) | List of role associated with the user | [optional] 
**Properties** | [**System.Collections.Hashtable**](AnyType.md) | User properties as name/value pairs | [optional] 
**Altnames** | [**AltnamesInner[]**](AltnamesInner.md) | List of alternative login names | [optional] 
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
**PrivWeb** | **Boolean** | Web privilege | [optional] 
**PrivEas** | **Boolean** | EAS privilege | [optional] 
**PrivDav** | **Boolean** | DAV privilege | [optional] 
**LdapID** | **String** | Base64 encoded LDAP object ID | [optional] 
**Fetchmail** | [**FetchmailEntry[]**](FetchmailEntry.md) | List of fetchmail entries for this user | [optional] 
**SyncPolicy** | [**SyncPolicy**](SyncPolicy.md) |  | [optional] 
**Chat** | **Boolean** | Whether chat is enabled for this user | [optional] 
**ChatAdmin** | **Boolean** | Whether this user has grommunio-chat admin permissions | [optional] 
**Lang** | **String** | User language | [optional] 
**Forward** | [**Forward**](Forward.md) |  | [optional] 
**Homeserver** | [**HomeserverRef**](HomeserverRef.md) |  | [optional] 
**Mlist** | **Int32** | ID of the associated MList | [optional] 
**OrgID** | **Int32** | ID of the organization the user belongs to | [optional] 

## Examples

- Prepare the resource
```powershell
$ImportLdapUser200Response = Initialize-GrommunioAdminImportLdapUser200Response  -Message null `
 -ID null `
 -Username null `
 -DomainID null `
 -Roles null `
 -Properties null `
 -Altnames null `
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
 -PrivWeb null `
 -PrivEas null `
 -PrivDav null `
 -LdapID null `
 -Fetchmail null `
 -SyncPolicy null `
 -Chat null `
 -ChatAdmin null `
 -Lang null `
 -Forward null `
 -Homeserver null `
 -Mlist null `
 -OrgID null
```

- Convert the resource to JSON
```powershell
$ImportLdapUser200Response | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

