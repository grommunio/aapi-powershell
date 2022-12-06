# SyncPolicy
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Allowbluetooth** | [**Allowbluetooth**](Allowbluetooth.md) |  | [optional] 
**Allowbrowser** | [**Allowbrowser**](Allowbrowser.md) |  | [optional] 
**Allowcam** | [**Allowcam**](Allowcam.md) |  | [optional] 
**Allowconsumeremail** | [**Allowconsumeremail**](Allowconsumeremail.md) |  | [optional] 
**Allowdesktopsync** | [**Allowdesktopsync**](Allowdesktopsync.md) |  | [optional] 
**Allowhtmlemail** | [**Allowhtmlemail**](Allowhtmlemail.md) |  | [optional] 
**Allowinternetsharing** | [**Allowinternetsharing**](Allowinternetsharing.md) |  | [optional] 
**Allowirda** | [**Allowirda**](Allowirda.md) |  | [optional] 
**Allowpopimapemail** | [**Allowpopimapemail**](Allowpopimapemail.md) |  | [optional] 
**Allowremotedesk** | [**Allowremotedesk**](Allowremotedesk.md) |  | [optional] 
**Allowsimpledevpw** | [**Allowsimpledevpw**](Allowsimpledevpw.md) |  | [optional] 
**Allowsmimeencalgneg** | [**Allowsmimeencalgneg**](Allowsmimeencalgneg.md) |  | [optional] 
**Allowsmimesoftcerts** | [**Allowsmimesoftcerts**](Allowsmimesoftcerts.md) |  | [optional] 
**Allowstoragecard** | [**Allowstoragecard**](Allowstoragecard.md) |  | [optional] 
**Allowtextmessaging** | [**Allowtextmessaging**](Allowtextmessaging.md) |  | [optional] 
**Allowunsignedapps** | [**Allowunsignedapps**](Allowunsignedapps.md) |  | [optional] 
**Allowunsigninstallpacks** | [**Allowunsigninstallpacks**](Allowunsigninstallpacks.md) |  | [optional] 
**Allowwifi** | [**Allowwifi**](Allowwifi.md) |  | [optional] 
**Alphanumpwreq** | [**Alphanumpwreq**](Alphanumpwreq.md) |  | [optional] 
**Approvedapplist** | **String[]** | A list of in-RAM applications that are approved for execution. | [optional] 
**Attenabled** | [**Attenabled**](Attenabled.md) |  | [optional] 
**Devencenabled** | [**Devencenabled**](Devencenabled.md) |  | [optional] 
**Devpwenabled** | [**Devpwenabled**](Devpwenabled.md) |  | [optional] 
**Devpwexpiration** | **Int32** | Whether the password expires after the specified number of days, as determined by the policy (0&#x3D;unlimited). | [optional] [default to 0]
**Devpwhistory** | **Int32** | The minimum number of previously used passwords the client device stores to prevent reuse (0&#x3D;no storage). | [optional] [default to 0]
**Maxattsize** | [**SyncPolicyMaxattsize**](SyncPolicyMaxattsize.md) |  | [optional] 
**Maxcalagefilter** | [**Maxcalagefilter**](Maxcalagefilter.md) |  | [optional] 
**Maxdevpwfailedattempts** | **Int32** | The number of password failures that are permitted before the device is wiped. | [optional] [default to 8]
**Maxemailagefilter** | [**Maxemailagefilter**](Maxemailagefilter.md) |  | [optional] 
**Maxemailbodytruncsize** | **Int32** | The truncation size for plain text-formatted email messages (-1&#x3D;unlimited, 0&#x3D;header only, &gt;0&#x3D;truncate to size) | [optional] [default to -1]
**Maxemailhtmlbodytruncsize** | **Int32** | The truncation size for HTML-formatted email messages (-1&#x3D;unlimited, 0&#x3D;header only, &gt;0&#x3D;truncate to size) | [optional] [default to -1]
**Maxinacttimedevlock** | **Int32** | The number of seconds of inactivity before the device locks itself (&gt;9999&#x3D;unlimited) | [optional] [default to 900]
**Mindevcomplexchars** | **Int32** | The minimum number of character classes (lower case, upper case, numbers and symbols) contained within the password. | [optional] [default to 3]
**Mindevpwlenngth** | **Int32** | The minimum device password length that the user can enter (1&#x3D;unlimited). | [optional] [default to 4]
**Pwrecoveryenabled** | [**Pwrecoveryenabled**](Pwrecoveryenabled.md) |  | [optional] 
**Reqdevenc** | [**Reqdevenc**](Reqdevenc.md) |  | [optional] 
**Reqencsmimealgorithm** | [**Reqencsmimealgorithm**](Reqencsmimealgorithm.md) |  | [optional] 
**Reqencsmimemessages** | [**Reqencsmimemessages**](Reqencsmimemessages.md) |  | [optional] 
**Reqmansyncroam** | [**Reqmansyncroam**](Reqmansyncroam.md) |  | [optional] 
**Reqsignedsmimealgorithm** | [**Reqsignedsmimealgorithm**](Reqsignedsmimealgorithm.md) |  | [optional] 
**Reqsignedsmimemessages** | [**Reqsignedsmimemessages**](Reqsignedsmimemessages.md) |  | [optional] 
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
 -Unapprovedinromapplist null
```

- Convert the resource to JSON
```powershell
$SyncPolicy | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

