# FetchmailEntry
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ID** | **Int32** |  | [optional] 
**Mailbox** | **String** | Username of the local user | [optional] 
**Active** | **Boolean** | Whether fetchmail is currently activated | [optional] 
**SrcServer** | **String** | Source server address | [optional] 
**SrcUser** | **String** | Source user | [optional] 
**SrcPassword** | **String** | Password of the source user | [optional] 
**Date** | **String** | Last modification time | [optional] [readonly] 
**SrcAuth** | [**SrcAuth**](SrcAuth.md) |  | [optional] 
**SrcFolder** | **String** | Folder to sync from | [optional] 
**Fetchall** | **Boolean** | Whether to fetch seen mails | [optional] 
**Keep** | **Boolean** | Keep original e-mails | [optional] 
**Protocol** | [**Protocol**](Protocol.md) |  | [optional] 
**UseSSL** | **Boolean** | Whether to use SSL | [optional] 
**SslCertCheck** | **Boolean** | Check ssl certificate | [optional] [default to $false]
**SslCertPath** | **String** | Path to local certificate directory or null to use local default | [optional] 
**SslFingerprint** | **String** | Fingerprint of the server certificate | [optional] 
**ExtraOptions** | **String** | Additional fetchmail options | [optional] 

## Examples

- Prepare the resource
```powershell
$FetchmailEntry = Initialize-GrommunioAdminFetchmailEntry  -ID null `
 -Mailbox null `
 -Active null `
 -SrcServer null `
 -SrcUser null `
 -SrcPassword null `
 -Date null `
 -SrcAuth null `
 -SrcFolder null `
 -Fetchall null `
 -Keep null `
 -Protocol null `
 -UseSSL null `
 -SslCertCheck null `
 -SslCertPath null `
 -SslFingerprint null `
 -ExtraOptions null
```

- Convert the resource to JSON
```powershell
$FetchmailEntry | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

