#
# grommunio Admin API
# grommunio administration REST API
# Version: 1.19.0
#

<#
.SYNOPSIS

No summary available.

.DESCRIPTION

Active Sync Policy overrides

.PARAMETER Allowbluetooth
Whether Bluetooth and hands-free profiles are allowed on the device (0=disabled, 1=allow only HFP, 2=allow)
.PARAMETER Allowbrowser
Whether the device allows the use of a web browser.
.PARAMETER Allowcam
Whether the device allows the use of the built-in camera.
.PARAMETER Allowconsumeremail
Whether the device allows the use of personal email.
.PARAMETER Allowdesktopsync
Whether the device allows synchronization with Desktop ActiveSync.
.PARAMETER Allowhtmlemail
Whether the device uses HTML-formatted email.
.PARAMETER Allowinternetsharing
Whether the device allows the use of Internet Sharing.
.PARAMETER Allowirda
Whether the device allows the use of IrDA (infrared) connections.
.PARAMETER Allowpopimapemail
Whether the device allows access to POP/IMAP email.
.PARAMETER Allowremotedesk
Whether the device allows the use of Remote Desktop.
.PARAMETER Allowsimpledevpw
Whether the device allows simple passwords.
.PARAMETER Allowsmimeencalgneg
Whether the device can negotiate the encryption algorithm to be used for signing (0=not allowed, 1=only strong, 2=any)
.PARAMETER Allowsmimesoftcerts
Whether the device uses soft certificates to sign outgoing messages.
.PARAMETER Allowstoragecard
Whether the device allows the use of the storage card.
.PARAMETER Allowtextmessaging
Whether the device allows Short Message Service (SMS)/text messaging.
.PARAMETER Allowunsignedapps
Whether the device allows unsigned applications to execute.
.PARAMETER Allowunsigninstallpacks
Whether the device allows unsigned cabinet (.cab) files to be installed.
.PARAMETER Allowwifi
Whether the device allows the use of Wi-Fi connections.
.PARAMETER Alphanumpwreq
Indicates whether a client device requires an alphanumeric password.
.PARAMETER Approvedapplist
A list of in-RAM applications that are approved for execution.
.PARAMETER Attenabled
Indicates whether email attachments are enabled.
.PARAMETER Devencenabled
Deprecated, kept for backwards compatibility
.PARAMETER Devpwenabled
Indicates whether a client device requires a password.
.PARAMETER Devpwexpiration
Whether the password expires after the specified number of days, as determined by the policy (0=unlimited).
.PARAMETER Devpwhistory
The minimum number of previously used passwords the client device stores to prevent reuse (0=no storage).
.PARAMETER Maxattsize
No description available.
.PARAMETER Maxcalagefilter
The maximum number of calendar days that can be synchronized (0=unlimited, 4=2 weeks, 5=1 month, 6=3 months, 7=6 months)
.PARAMETER Maxdevpwfailedattempts
The number of password failures that are permitted before the device is wiped.
.PARAMETER Maxemailagefilter
The email age limit for synchronization (0=all, 1=1 day, 2=3 days, 3=1 week, 4=2 weeks, 5=1 month)
.PARAMETER Maxemailbodytruncsize
The truncation size for plain text-formatted email messages (-1=unlimited, 0=header only, >0=truncate to size)
.PARAMETER Maxemailhtmlbodytruncsize
The truncation size for HTML-formatted email messages (-1=unlimited, 0=header only, >0=truncate to size)
.PARAMETER Maxinacttimedevlock
The number of seconds of inactivity before the device locks itself (>9999=unlimited)
.PARAMETER Mindevcomplexchars
The minimum number of character classes (lower case, upper case, numbers and symbols) contained within the password.
.PARAMETER Mindevpwlenngth
The minimum device password length that the user can enter (1=unlimited).
.PARAMETER Pwrecoveryenabled
Indicates whether to enable a recovery password to be sent to the server by using the Settings command.
.PARAMETER Reqdevenc
Whether the device uses encryption.
.PARAMETER Reqencsmimealgorithm
The algorithm to be used when encrypting a message (0=TripleDES, 1=DES, 2=RC2128bit, 3=RC264bit, 4=RC240bit)
.PARAMETER Reqencsmimemessages
Whether the device is required to send encrypted messages.
.PARAMETER Reqmansyncroam
Whether the device requires manual synchronization when the device is roaming.
.PARAMETER Reqsignedsmimealgorithm
The algorithm to be used when signing a message (0=SHA1, 1=MD5)
.PARAMETER Reqsignedsmimemessages
Whether the device is required to send signed S/MIME messages.
.PARAMETER Reqstoragecardenc
Require encryption on storage card (0=no, 1=yes)
.PARAMETER Unapprovedinromapplist
A list of in-ROM applications that are not approved for execution.
.OUTPUTS

SyncPolicy<PSCustomObject>
#>

function Initialize-GroAdminSyncPolicy {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("0", "1", "2")]
        [System.Nullable[Int32]]
        ${Allowbluetooth} = 2,
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("0", "1")]
        [System.Nullable[Int32]]
        ${Allowbrowser} = 1,
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("0", "1")]
        [System.Nullable[Int32]]
        ${Allowcam} = 1,
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("0", "1")]
        [System.Nullable[Int32]]
        ${Allowconsumeremail} = 1,
        [Parameter(Position = 4, ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("0", "1")]
        [System.Nullable[Int32]]
        ${Allowdesktopsync} = 1,
        [Parameter(Position = 5, ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("0", "1")]
        [System.Nullable[Int32]]
        ${Allowhtmlemail} = 1,
        [Parameter(Position = 6, ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("0", "1")]
        [System.Nullable[Int32]]
        ${Allowinternetsharing} = 1,
        [Parameter(Position = 7, ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("0", "1")]
        [System.Nullable[Int32]]
        ${Allowirda} = 1,
        [Parameter(Position = 8, ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("0", "1")]
        [System.Nullable[Int32]]
        ${Allowpopimapemail} = 1,
        [Parameter(Position = 9, ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("0", "1")]
        [System.Nullable[Int32]]
        ${Allowremotedesk} = 1,
        [Parameter(Position = 10, ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("0", "1")]
        [System.Nullable[Int32]]
        ${Allowsimpledevpw} = 1,
        [Parameter(Position = 11, ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("0", "1", "2")]
        [System.Nullable[Int32]]
        ${Allowsmimeencalgneg} = 2,
        [Parameter(Position = 12, ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("0", "1")]
        [System.Nullable[Int32]]
        ${Allowsmimesoftcerts} = 1,
        [Parameter(Position = 13, ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("0", "1")]
        [System.Nullable[Int32]]
        ${Allowstoragecard} = 1,
        [Parameter(Position = 14, ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("0", "1")]
        [System.Nullable[Int32]]
        ${Allowtextmessaging} = 1,
        [Parameter(Position = 15, ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("0", "1")]
        [System.Nullable[Int32]]
        ${Allowunsignedapps} = 1,
        [Parameter(Position = 16, ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("0", "1")]
        [System.Nullable[Int32]]
        ${Allowunsigninstallpacks} = 1,
        [Parameter(Position = 17, ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("0", "1")]
        [System.Nullable[Int32]]
        ${Allowwifi} = 1,
        [Parameter(Position = 18, ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("0", "1")]
        [System.Nullable[Int32]]
        ${Alphanumpwreq} = 0,
        [Parameter(Position = 19, ValueFromPipelineByPropertyName = $true)]
        [String[]]
        ${Approvedapplist},
        [Parameter(Position = 20, ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("0", "1")]
        [System.Nullable[Int32]]
        ${Attenabled} = 1,
        [Parameter(Position = 21, ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("0", "1")]
        [System.Nullable[Int32]]
        ${Devencenabled} = 0,
        [Parameter(Position = 22, ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("0", "1")]
        [System.Nullable[Int32]]
        ${Devpwenabled} = 0,
        [Parameter(Position = 23, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${Devpwexpiration} = 0,
        [Parameter(Position = 24, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${Devpwhistory} = 0,
        [Parameter(Position = 25, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Maxattsize},
        [Parameter(Position = 26, ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("0", "4", "5", "6", "7")]
        [System.Nullable[Int32]]
        ${Maxcalagefilter} = 0,
        [Parameter(Position = 27, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${Maxdevpwfailedattempts} = 8,
        [Parameter(Position = 28, ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("0", "1", "2", "3", "4", "5")]
        [System.Nullable[Int32]]
        ${Maxemailagefilter} = 0,
        [Parameter(Position = 29, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${Maxemailbodytruncsize} = -1,
        [Parameter(Position = 30, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${Maxemailhtmlbodytruncsize} = -1,
        [Parameter(Position = 31, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${Maxinacttimedevlock} = 900,
        [Parameter(Position = 32, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${Mindevcomplexchars} = 3,
        [Parameter(Position = 33, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${Mindevpwlenngth} = 4,
        [Parameter(Position = 34, ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("0", "1")]
        [System.Nullable[Int32]]
        ${Pwrecoveryenabled} = 0,
        [Parameter(Position = 35, ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("0", "1")]
        [System.Nullable[Int32]]
        ${Reqdevenc} = 0,
        [Parameter(Position = 36, ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("0", "1", "2", "3", "4")]
        [System.Nullable[Int32]]
        ${Reqencsmimealgorithm} = 0,
        [Parameter(Position = 37, ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("0", "1")]
        [System.Nullable[Int32]]
        ${Reqencsmimemessages} = 0,
        [Parameter(Position = 38, ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("0", "1")]
        [System.Nullable[Int32]]
        ${Reqmansyncroam} = 0,
        [Parameter(Position = 39, ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("0", "1")]
        [System.Nullable[Int32]]
        ${Reqsignedsmimealgorithm} = 0,
        [Parameter(Position = 40, ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("0", "1")]
        [System.Nullable[Int32]]
        ${Reqsignedsmimemessages} = 0,
        [Parameter(Position = 41, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${Reqstoragecardenc} = 0,
        [Parameter(Position = 42, ValueFromPipelineByPropertyName = $true)]
        [String[]]
        ${Unapprovedinromapplist}
    )

    Process {
        'Creating PSCustomObject: GrommunioAdmin => GroAdminSyncPolicy' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if ($Maxdevpwfailedattempts -and $Maxdevpwfailedattempts -gt 16) {
          throw "invalid value for 'Maxdevpwfailedattempts', must be smaller than or equal to 16."
        }

        if ($Maxdevpwfailedattempts -and $Maxdevpwfailedattempts -lt 4) {
          throw "invalid value for 'Maxdevpwfailedattempts', must be greater than or equal to 4."
        }

        if ($Mindevcomplexchars -and $Mindevcomplexchars -gt 4) {
          throw "invalid value for 'Mindevcomplexchars', must be smaller than or equal to 4."
        }

        if ($Mindevcomplexchars -and $Mindevcomplexchars -lt 1) {
          throw "invalid value for 'Mindevcomplexchars', must be greater than or equal to 1."
        }

        if ($Mindevpwlenngth -and $Mindevpwlenngth -gt 16) {
          throw "invalid value for 'Mindevpwlenngth', must be smaller than or equal to 16."
        }

        if ($Mindevpwlenngth -and $Mindevpwlenngth -lt 1) {
          throw "invalid value for 'Mindevpwlenngth', must be greater than or equal to 1."
        }


        $PSO = [PSCustomObject]@{
            'allowbluetooth' = ${Allowbluetooth}
            'allowbrowser' = ${Allowbrowser}
            'allowcam' = ${Allowcam}
            'allowconsumeremail' = ${Allowconsumeremail}
            'allowdesktopsync' = ${Allowdesktopsync}
            'allowhtmlemail' = ${Allowhtmlemail}
            'allowinternetsharing' = ${Allowinternetsharing}
            'allowirda' = ${Allowirda}
            'allowpopimapemail' = ${Allowpopimapemail}
            'allowremotedesk' = ${Allowremotedesk}
            'allowsimpledevpw' = ${Allowsimpledevpw}
            'allowsmimeencalgneg' = ${Allowsmimeencalgneg}
            'allowsmimesoftcerts' = ${Allowsmimesoftcerts}
            'allowstoragecard' = ${Allowstoragecard}
            'allowtextmessaging' = ${Allowtextmessaging}
            'allowunsignedapps' = ${Allowunsignedapps}
            'allowunsigninstallpacks' = ${Allowunsigninstallpacks}
            'allowwifi' = ${Allowwifi}
            'alphanumpwreq' = ${Alphanumpwreq}
            'approvedapplist' = ${Approvedapplist}
            'attenabled' = ${Attenabled}
            'devencenabled' = ${Devencenabled}
            'devpwenabled' = ${Devpwenabled}
            'devpwexpiration' = ${Devpwexpiration}
            'devpwhistory' = ${Devpwhistory}
            'maxattsize' = ${Maxattsize}
            'maxcalagefilter' = ${Maxcalagefilter}
            'maxdevpwfailedattempts' = ${Maxdevpwfailedattempts}
            'maxemailagefilter' = ${Maxemailagefilter}
            'maxemailbodytruncsize' = ${Maxemailbodytruncsize}
            'maxemailhtmlbodytruncsize' = ${Maxemailhtmlbodytruncsize}
            'maxinacttimedevlock' = ${Maxinacttimedevlock}
            'mindevcomplexchars' = ${Mindevcomplexchars}
            'mindevpwlenngth' = ${Mindevpwlenngth}
            'pwrecoveryenabled' = ${Pwrecoveryenabled}
            'reqdevenc' = ${Reqdevenc}
            'reqencsmimealgorithm' = ${Reqencsmimealgorithm}
            'reqencsmimemessages' = ${Reqencsmimemessages}
            'reqmansyncroam' = ${Reqmansyncroam}
            'reqsignedsmimealgorithm' = ${Reqsignedsmimealgorithm}
            'reqsignedsmimemessages' = ${Reqsignedsmimemessages}
            'reqstoragecardenc' = ${Reqstoragecardenc}
            'unapprovedinromapplist' = ${Unapprovedinromapplist}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to SyncPolicy<PSCustomObject>

.DESCRIPTION

Convert from JSON to SyncPolicy<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

SyncPolicy<PSCustomObject>
#>
function ConvertFrom-GroAdminJsonToSyncPolicy {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: GrommunioAdmin => GroAdminSyncPolicy' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in GroAdminSyncPolicy
        $AllProperties = ('allowbluetooth', 'allowbrowser', 'allowcam', 'allowconsumeremail', 'allowdesktopsync', 'allowhtmlemail', 'allowinternetsharing', 'allowirda', 'allowpopimapemail', 'allowremotedesk', 'allowsimpledevpw', 'allowsmimeencalgneg', 'allowsmimesoftcerts', 'allowstoragecard', 'allowtextmessaging', 'allowunsignedapps', 'allowunsigninstallpacks', 'allowwifi', 'alphanumpwreq', 'approvedapplist', 'attenabled', 'devencenabled', 'devpwenabled', 'devpwexpiration', 'devpwhistory', 'maxattsize', 'maxcalagefilter', 'maxdevpwfailedattempts', 'maxemailagefilter', 'maxemailbodytruncsize', 'maxemailhtmlbodytruncsize', 'maxinacttimedevlock', 'mindevcomplexchars', 'mindevpwlenngth', 'pwrecoveryenabled', 'reqdevenc', 'reqencsmimealgorithm', 'reqencsmimemessages', 'reqmansyncroam', 'reqsignedsmimealgorithm', 'reqsignedsmimemessages', 'reqstoragecardenc', 'unapprovedinromapplist')
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match 'allowbluetooth'))) { #optional property not found
            $Allowbluetooth = $null
        } else {
            $Allowbluetooth = $JsonParameters.PSobject.Properties['allowbluetooth'].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match 'allowbrowser'))) { #optional property not found
            $Allowbrowser = $null
        } else {
            $Allowbrowser = $JsonParameters.PSobject.Properties['allowbrowser'].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match 'allowcam'))) { #optional property not found
            $Allowcam = $null
        } else {
            $Allowcam = $JsonParameters.PSobject.Properties['allowcam'].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match 'allowconsumeremail'))) { #optional property not found
            $Allowconsumeremail = $null
        } else {
            $Allowconsumeremail = $JsonParameters.PSobject.Properties['allowconsumeremail'].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match 'allowdesktopsync'))) { #optional property not found
            $Allowdesktopsync = $null
        } else {
            $Allowdesktopsync = $JsonParameters.PSobject.Properties['allowdesktopsync'].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match 'allowhtmlemail'))) { #optional property not found
            $Allowhtmlemail = $null
        } else {
            $Allowhtmlemail = $JsonParameters.PSobject.Properties['allowhtmlemail'].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match 'allowinternetsharing'))) { #optional property not found
            $Allowinternetsharing = $null
        } else {
            $Allowinternetsharing = $JsonParameters.PSobject.Properties['allowinternetsharing'].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match 'allowirda'))) { #optional property not found
            $Allowirda = $null
        } else {
            $Allowirda = $JsonParameters.PSobject.Properties['allowirda'].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match 'allowpopimapemail'))) { #optional property not found
            $Allowpopimapemail = $null
        } else {
            $Allowpopimapemail = $JsonParameters.PSobject.Properties['allowpopimapemail'].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match 'allowremotedesk'))) { #optional property not found
            $Allowremotedesk = $null
        } else {
            $Allowremotedesk = $JsonParameters.PSobject.Properties['allowremotedesk'].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match 'allowsimpledevpw'))) { #optional property not found
            $Allowsimpledevpw = $null
        } else {
            $Allowsimpledevpw = $JsonParameters.PSobject.Properties['allowsimpledevpw'].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match 'allowsmimeencalgneg'))) { #optional property not found
            $Allowsmimeencalgneg = $null
        } else {
            $Allowsmimeencalgneg = $JsonParameters.PSobject.Properties['allowsmimeencalgneg'].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match 'allowsmimesoftcerts'))) { #optional property not found
            $Allowsmimesoftcerts = $null
        } else {
            $Allowsmimesoftcerts = $JsonParameters.PSobject.Properties['allowsmimesoftcerts'].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match 'allowstoragecard'))) { #optional property not found
            $Allowstoragecard = $null
        } else {
            $Allowstoragecard = $JsonParameters.PSobject.Properties['allowstoragecard'].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match 'allowtextmessaging'))) { #optional property not found
            $Allowtextmessaging = $null
        } else {
            $Allowtextmessaging = $JsonParameters.PSobject.Properties['allowtextmessaging'].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match 'allowunsignedapps'))) { #optional property not found
            $Allowunsignedapps = $null
        } else {
            $Allowunsignedapps = $JsonParameters.PSobject.Properties['allowunsignedapps'].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match 'allowunsigninstallpacks'))) { #optional property not found
            $Allowunsigninstallpacks = $null
        } else {
            $Allowunsigninstallpacks = $JsonParameters.PSobject.Properties['allowunsigninstallpacks'].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match 'allowwifi'))) { #optional property not found
            $Allowwifi = $null
        } else {
            $Allowwifi = $JsonParameters.PSobject.Properties['allowwifi'].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match 'alphanumpwreq'))) { #optional property not found
            $Alphanumpwreq = $null
        } else {
            $Alphanumpwreq = $JsonParameters.PSobject.Properties['alphanumpwreq'].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match 'approvedapplist'))) { #optional property not found
            $Approvedapplist = $null
        } else {
            $Approvedapplist = $JsonParameters.PSobject.Properties['approvedapplist'].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match 'attenabled'))) { #optional property not found
            $Attenabled = $null
        } else {
            $Attenabled = $JsonParameters.PSobject.Properties['attenabled'].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match 'devencenabled'))) { #optional property not found
            $Devencenabled = $null
        } else {
            $Devencenabled = $JsonParameters.PSobject.Properties['devencenabled'].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match 'devpwenabled'))) { #optional property not found
            $Devpwenabled = $null
        } else {
            $Devpwenabled = $JsonParameters.PSobject.Properties['devpwenabled'].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match 'devpwexpiration'))) { #optional property not found
            $Devpwexpiration = $null
        } else {
            $Devpwexpiration = $JsonParameters.PSobject.Properties['devpwexpiration'].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match 'devpwhistory'))) { #optional property not found
            $Devpwhistory = $null
        } else {
            $Devpwhistory = $JsonParameters.PSobject.Properties['devpwhistory'].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match 'maxattsize'))) { #optional property not found
            $Maxattsize = $null
        } else {
            $Maxattsize = $JsonParameters.PSobject.Properties['maxattsize'].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match 'maxcalagefilter'))) { #optional property not found
            $Maxcalagefilter = $null
        } else {
            $Maxcalagefilter = $JsonParameters.PSobject.Properties['maxcalagefilter'].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match 'maxdevpwfailedattempts'))) { #optional property not found
            $Maxdevpwfailedattempts = $null
        } else {
            $Maxdevpwfailedattempts = $JsonParameters.PSobject.Properties['maxdevpwfailedattempts'].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match 'maxemailagefilter'))) { #optional property not found
            $Maxemailagefilter = $null
        } else {
            $Maxemailagefilter = $JsonParameters.PSobject.Properties['maxemailagefilter'].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match 'maxemailbodytruncsize'))) { #optional property not found
            $Maxemailbodytruncsize = $null
        } else {
            $Maxemailbodytruncsize = $JsonParameters.PSobject.Properties['maxemailbodytruncsize'].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match 'maxemailhtmlbodytruncsize'))) { #optional property not found
            $Maxemailhtmlbodytruncsize = $null
        } else {
            $Maxemailhtmlbodytruncsize = $JsonParameters.PSobject.Properties['maxemailhtmlbodytruncsize'].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match 'maxinacttimedevlock'))) { #optional property not found
            $Maxinacttimedevlock = $null
        } else {
            $Maxinacttimedevlock = $JsonParameters.PSobject.Properties['maxinacttimedevlock'].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match 'mindevcomplexchars'))) { #optional property not found
            $Mindevcomplexchars = $null
        } else {
            $Mindevcomplexchars = $JsonParameters.PSobject.Properties['mindevcomplexchars'].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match 'mindevpwlenngth'))) { #optional property not found
            $Mindevpwlenngth = $null
        } else {
            $Mindevpwlenngth = $JsonParameters.PSobject.Properties['mindevpwlenngth'].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match 'pwrecoveryenabled'))) { #optional property not found
            $Pwrecoveryenabled = $null
        } else {
            $Pwrecoveryenabled = $JsonParameters.PSobject.Properties['pwrecoveryenabled'].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match 'reqdevenc'))) { #optional property not found
            $Reqdevenc = $null
        } else {
            $Reqdevenc = $JsonParameters.PSobject.Properties['reqdevenc'].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match 'reqencsmimealgorithm'))) { #optional property not found
            $Reqencsmimealgorithm = $null
        } else {
            $Reqencsmimealgorithm = $JsonParameters.PSobject.Properties['reqencsmimealgorithm'].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match 'reqencsmimemessages'))) { #optional property not found
            $Reqencsmimemessages = $null
        } else {
            $Reqencsmimemessages = $JsonParameters.PSobject.Properties['reqencsmimemessages'].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match 'reqmansyncroam'))) { #optional property not found
            $Reqmansyncroam = $null
        } else {
            $Reqmansyncroam = $JsonParameters.PSobject.Properties['reqmansyncroam'].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match 'reqsignedsmimealgorithm'))) { #optional property not found
            $Reqsignedsmimealgorithm = $null
        } else {
            $Reqsignedsmimealgorithm = $JsonParameters.PSobject.Properties['reqsignedsmimealgorithm'].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match 'reqsignedsmimemessages'))) { #optional property not found
            $Reqsignedsmimemessages = $null
        } else {
            $Reqsignedsmimemessages = $JsonParameters.PSobject.Properties['reqsignedsmimemessages'].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match 'reqstoragecardenc'))) { #optional property not found
            $Reqstoragecardenc = $null
        } else {
            $Reqstoragecardenc = $JsonParameters.PSobject.Properties['reqstoragecardenc'].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match 'unapprovedinromapplist'))) { #optional property not found
            $Unapprovedinromapplist = $null
        } else {
            $Unapprovedinromapplist = $JsonParameters.PSobject.Properties['unapprovedinromapplist'].value
        }

        $PSO = [PSCustomObject]@{
            'allowbluetooth' = ${Allowbluetooth}
            'allowbrowser' = ${Allowbrowser}
            'allowcam' = ${Allowcam}
            'allowconsumeremail' = ${Allowconsumeremail}
            'allowdesktopsync' = ${Allowdesktopsync}
            'allowhtmlemail' = ${Allowhtmlemail}
            'allowinternetsharing' = ${Allowinternetsharing}
            'allowirda' = ${Allowirda}
            'allowpopimapemail' = ${Allowpopimapemail}
            'allowremotedesk' = ${Allowremotedesk}
            'allowsimpledevpw' = ${Allowsimpledevpw}
            'allowsmimeencalgneg' = ${Allowsmimeencalgneg}
            'allowsmimesoftcerts' = ${Allowsmimesoftcerts}
            'allowstoragecard' = ${Allowstoragecard}
            'allowtextmessaging' = ${Allowtextmessaging}
            'allowunsignedapps' = ${Allowunsignedapps}
            'allowunsigninstallpacks' = ${Allowunsigninstallpacks}
            'allowwifi' = ${Allowwifi}
            'alphanumpwreq' = ${Alphanumpwreq}
            'approvedapplist' = ${Approvedapplist}
            'attenabled' = ${Attenabled}
            'devencenabled' = ${Devencenabled}
            'devpwenabled' = ${Devpwenabled}
            'devpwexpiration' = ${Devpwexpiration}
            'devpwhistory' = ${Devpwhistory}
            'maxattsize' = ${Maxattsize}
            'maxcalagefilter' = ${Maxcalagefilter}
            'maxdevpwfailedattempts' = ${Maxdevpwfailedattempts}
            'maxemailagefilter' = ${Maxemailagefilter}
            'maxemailbodytruncsize' = ${Maxemailbodytruncsize}
            'maxemailhtmlbodytruncsize' = ${Maxemailhtmlbodytruncsize}
            'maxinacttimedevlock' = ${Maxinacttimedevlock}
            'mindevcomplexchars' = ${Mindevcomplexchars}
            'mindevpwlenngth' = ${Mindevpwlenngth}
            'pwrecoveryenabled' = ${Pwrecoveryenabled}
            'reqdevenc' = ${Reqdevenc}
            'reqencsmimealgorithm' = ${Reqencsmimealgorithm}
            'reqencsmimemessages' = ${Reqencsmimemessages}
            'reqmansyncroam' = ${Reqmansyncroam}
            'reqsignedsmimealgorithm' = ${Reqsignedsmimealgorithm}
            'reqsignedsmimemessages' = ${Reqsignedsmimemessages}
            'reqstoragecardenc' = ${Reqstoragecardenc}
            'unapprovedinromapplist' = ${Unapprovedinromapplist}
        }

        return $PSO
    }

}

