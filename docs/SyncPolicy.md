# SyncPolicy
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Allowbluetooth** | **Int32** | Whether Bluetooth and hands-free profiles are allowed on the device (0&#x3D;disabled, 1&#x3D;allow only HFP, 2&#x3D;allow) | [optional] [default to 2]
**Allowbrowser** | **Int32** | Whether the device allows the use of a web browser. | [optional] [default to 1]
**Allowcam** | **Int32** | Whether the device allows the use of the built-in camera. | [optional] [default to 1]
**Allowconsumeremail** | **Int32** | Whether the device allows the use of personal email. | [optional] [default to 1]
**Allowdesktopsync** | **Int32** | Whether the device allows synchronization with Desktop ActiveSync. | [optional] [default to 1]
**Allowhtmlemail** | **Int32** | Whether the device uses HTML-formatted email. | [optional] [default to 1]
**Allowinternetsharing** | **Int32** | Whether the device allows the use of Internet Sharing. | [optional] [default to 1]
**Allowirda** | **Int32** | Whether the device allows the use of IrDA (infrared) connections. | [optional] [default to 1]
**Allowpopimapemail** | **Int32** | Whether the device allows access to POP/IMAP email. | [optional] [default to 1]
**Allowremotedesk** | **Int32** | Whether the device allows the use of Remote Desktop. | [optional] [default to 1]
**Allowsimpledevpw** | **Int32** | Whether the device allows simple passwords. | [optional] [default to 1]
**Allowsmimeencalgneg** | **Int32** | Whether the device can negotiate the encryption algorithm to be used for signing (0&#x3D;not allowed, 1&#x3D;only strong, 2&#x3D;any) | [optional] [default to 2]
**Allowsmimesoftcerts** | **Int32** | Whether the device uses soft certificates to sign outgoing messages. | [optional] [default to 1]
**Allowstoragecard** | **Int32** | Whether the device allows the use of the storage card. | [optional] [default to 1]
**Allowtextmessaging** | **Int32** | Whether the device allows Short Message Service (SMS)/text messaging. | [optional] [default to 1]
**Allowunsignedapps** | **Int32** | Whether the device allows unsigned applications to execute. | [optional] [default to 1]
**Allowunsigninstallpacks** | **Int32** | Whether the device allows unsigned cabinet (.cab) files to be installed. | [optional] [default to 1]
**Allowwifi** | **Int32** | Whether the device allows the use of Wi-Fi connections. | [optional] [default to 1]
**Alphanumpwreq** | **Int32** | Indicates whether a client device requires an alphanumeric password. | [optional] [default to 0]
**Approvedapplist** | **String[]** | A list of in-RAM applications that are approved for execution. | [optional] 
**Attenabled** | **Int32** | Indicates whether email attachments are enabled. | [optional] [default to 1]
**Devencenabled** | **Int32** | Deprecated, kept for backwards compatibility | [optional] [default to 0]
**Devpwenabled** | **Int32** | Indicates whether a client device requires a password. | [optional] [default to 0]
**Devpwexpiration** | **Int32** | Whether the password expires after the specified number of days, as determined by the policy (0&#x3D;unlimited). | [optional] [default to 0]
**Devpwhistory** | **Int32** | The minimum number of previously used passwords the client device stores to prevent reuse (0&#x3D;no storage). | [optional] [default to 0]
**Maxattsize** | [**SyncPolicyMaxattsize**](SyncPolicyMaxattsize.md) |  | [optional] 
**Maxcalagefilter** | **Int32** | The maximum number of calendar days that can be synchronized (0&#x3D;unlimited, 4&#x3D;2 weeks, 5&#x3D;1 month, 6&#x3D;3 months, 7&#x3D;6 months) | [optional] [default to 0]
**Maxdevpwfailedattempts** | **Int32** | The number of password failures that are permitted before the device is wiped. | [optional] [default to 8]
**Maxemailagefilter** | **Int32** | The email age limit for synchronization (0&#x3D;all, 1&#x3D;1 day, 2&#x3D;3 days, 3&#x3D;1 week, 4&#x3D;2 weeks, 5&#x3D;1 month) | [optional] [default to 0]
**Maxemailbodytruncsize** | **Int32** | The truncation size for plain text-formatted email messages (-1&#x3D;unlimited, 0&#x3D;header only, &gt;0&#x3D;truncate to size) | [optional] [default to -1]
**Maxemailhtmlbodytruncsize** | **Int32** | The truncation size for HTML-formatted email messages (-1&#x3D;unlimited, 0&#x3D;header only, &gt;0&#x3D;truncate to size) | [optional] [default to -1]
**Maxinacttimedevlock** | **Int32** | The number of seconds of inactivity before the device locks itself (&gt;9999&#x3D;unlimited) | [optional] [default to 900]
**Mindevcomplexchars** | **Int32** | The minimum number of character classes (lower case, upper case, numbers and symbols) contained within the password. | [optional] [default to 3]
**Mindevpwlenngth** | **Int32** | The minimum device password length that the user can enter (1&#x3D;unlimited). | [optional] [default to 4]
**Pwrecoveryenabled** | **Int32** | Indicates whether to enable a recovery password to be sent to the server by using the Settings command. | [optional] [default to 0]
**Reqdevenc** | **Int32** | Whether the device uses encryption. | [optional] [default to 0]
**Reqencsmimealgorithm** | **Int32** | The algorithm to be used when encrypting a message (0&#x3D;TripleDES, 1&#x3D;DES, 2&#x3D;RC2128bit, 3&#x3D;RC264bit, 4&#x3D;RC240bit) | [optional] [default to 0]
**Reqencsmimemessages** | **Int32** | Whether the device is required to send encrypted messages. | [optional] [default to 0]
**Reqmansyncroam** | **Int32** | Whether the device requires manual synchronization when the device is roaming. | [optional] [default to 0]
**Reqsignedsmimealgorithm** | **Int32** | The algorithm to be used when signing a message (0&#x3D;SHA1, 1&#x3D;MD5) | [optional] [default to 0]
**Reqsignedsmimemessages** | **Int32** | Whether the device is required to send signed S/MIME messages. | [optional] [default to 0]
**Reqstoragecardenc** | **Int32** | Require encryption on storage card (0&#x3D;no, 1&#x3D;yes) | [optional] [default to 0]
**Unapprovedinromapplist** | **String[]** | A list of in-ROM applications that are not approved for execution. | [optional] 

## Examples

- Prepare the resource
```powershell
$SyncPolicy = Initialize-GrommunioAdminSyncPolicy  -Allowbluetooth null `
 -Allowbrowser null `
 -Allowcam null `
 -Allowconsumeremail null `
 -Allowdesktopsync null `
 -Allowhtmlemail null `
 -Allowinternetsharing null `
 -Allowirda null `
 -Allowpopimapemail null `
 -Allowremotedesk null `
 -Allowsimpledevpw null `
 -Allowsmimeencalgneg null `
 -Allowsmimesoftcerts null `
 -Allowstoragecard null `
 -Allowtextmessaging null `
 -Allowunsignedapps null `
 -Allowunsigninstallpacks null `
 -Allowwifi null `
 -Alphanumpwreq null `
 -Approvedapplist null `
 -Attenabled null `
 -Devencenabled null `
 -Devpwenabled null `
 -Devpwexpiration null `
 -Devpwhistory null `
 -Maxattsize null `
 -Maxcalagefilter null `
 -Maxdevpwfailedattempts null `
 -Maxemailagefilter null `
 -Maxemailbodytruncsize null `
 -Maxemailhtmlbodytruncsize null `
 -Maxinacttimedevlock null `
 -Mindevcomplexchars null `
 -Mindevpwlenngth null `
 -Pwrecoveryenabled null `
 -Reqdevenc null `
 -Reqencsmimealgorithm null `
 -Reqencsmimemessages null `
 -Reqmansyncroam null `
 -Reqsignedsmimealgorithm null `
 -Reqsignedsmimemessages null `
 -Reqstoragecardenc null `
 -Unapprovedinromapplist null
```

- Convert the resource to JSON
```powershell
$SyncPolicy | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

