#
# grommunio Admin API
# grommunio administration REST API
# Version: 1.9.2
#

<#
.SYNOPSIS

No summary available.

.DESCRIPTION

Active Sync Policy overrides

.PARAMETER Allowbluetooth
No description available.
.PARAMETER Allowbrowser
No description available.
.PARAMETER Allowcam
No description available.
.PARAMETER Allowconsumeremail
No description available.
.PARAMETER Allowdesktopsync
No description available.
.PARAMETER Allowhtmlemail
No description available.
.PARAMETER Allowinternetsharing
No description available.
.PARAMETER Allowirda
No description available.
.PARAMETER Allowpopimapemail
No description available.
.PARAMETER Allowremotedesk
No description available.
.PARAMETER Allowsimpledevpw
No description available.
.PARAMETER Allowsmimeencalgneg
No description available.
.PARAMETER Allowsmimesoftcerts
No description available.
.PARAMETER Allowstoragecard
No description available.
.PARAMETER Allowtextmessaging
No description available.
.PARAMETER Allowunsignedapps
No description available.
.PARAMETER Allowunsigninstallpacks
No description available.
.PARAMETER Allowwifi
No description available.
.PARAMETER Alphanumpwreq
No description available.
.PARAMETER Approvedapplist
A list of in-RAM applications that are approved for execution.
.PARAMETER Attenabled
No description available.
.PARAMETER Devencenabled
No description available.
.PARAMETER Devpwenabled
No description available.
.PARAMETER Devpwexpiration
Whether the password expires after the specified number of days, as determined by the policy (0=unlimited).
.PARAMETER Devpwhistory
The minimum number of previously used passwords the client device stores to prevent reuse (0=no storage).
.PARAMETER Maxattsize
No description available.
.PARAMETER Maxcalagefilter
No description available.
.PARAMETER Maxdevpwfailedattempts
The number of password failures that are permitted before the device is wiped.
.PARAMETER Maxemailagefilter
No description available.
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
No description available.
.PARAMETER Reqdevenc
No description available.
.PARAMETER Reqencsmimealgorithm
No description available.
.PARAMETER Reqencsmimemessages
No description available.
.PARAMETER Reqmansyncroam
No description available.
.PARAMETER Reqsignedsmimealgorithm
No description available.
.PARAMETER Reqsignedsmimemessages
No description available.
.PARAMETER Unapprovedinromapplist
A list of in-ROM applications that are not approved for execution.
.OUTPUTS

SyncPolicy<PSCustomObject>
#>

function Initialize-GroAdminSyncPolicy {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Allowbluetooth},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Allowbrowser},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Allowcam},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Allowconsumeremail},
        [Parameter(Position = 4, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Allowdesktopsync},
        [Parameter(Position = 5, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Allowhtmlemail},
        [Parameter(Position = 6, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Allowinternetsharing},
        [Parameter(Position = 7, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Allowirda},
        [Parameter(Position = 8, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Allowpopimapemail},
        [Parameter(Position = 9, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Allowremotedesk},
        [Parameter(Position = 10, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Allowsimpledevpw},
        [Parameter(Position = 11, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Allowsmimeencalgneg},
        [Parameter(Position = 12, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Allowsmimesoftcerts},
        [Parameter(Position = 13, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Allowstoragecard},
        [Parameter(Position = 14, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Allowtextmessaging},
        [Parameter(Position = 15, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Allowunsignedapps},
        [Parameter(Position = 16, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Allowunsigninstallpacks},
        [Parameter(Position = 17, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Allowwifi},
        [Parameter(Position = 18, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Alphanumpwreq},
        [Parameter(Position = 19, ValueFromPipelineByPropertyName = $true)]
        [String[]]
        ${Approvedapplist},
        [Parameter(Position = 20, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Attenabled},
        [Parameter(Position = 21, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Devencenabled},
        [Parameter(Position = 22, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Devpwenabled},
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
        [PSCustomObject]
        ${Maxcalagefilter},
        [Parameter(Position = 27, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${Maxdevpwfailedattempts} = 8,
        [Parameter(Position = 28, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Maxemailagefilter},
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
        [PSCustomObject]
        ${Pwrecoveryenabled},
        [Parameter(Position = 35, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Reqdevenc},
        [Parameter(Position = 36, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Reqencsmimealgorithm},
        [Parameter(Position = 37, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Reqencsmimemessages},
        [Parameter(Position = 38, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Reqmansyncroam},
        [Parameter(Position = 39, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Reqsignedsmimealgorithm},
        [Parameter(Position = 40, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Reqsignedsmimemessages},
        [Parameter(Position = 41, ValueFromPipelineByPropertyName = $true)]
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
            "allowbluetooth" = ${Allowbluetooth}
            "allowbrowser" = ${Allowbrowser}
            "allowcam" = ${Allowcam}
            "allowconsumeremail" = ${Allowconsumeremail}
            "allowdesktopsync" = ${Allowdesktopsync}
            "allowhtmlemail" = ${Allowhtmlemail}
            "allowinternetsharing" = ${Allowinternetsharing}
            "allowirda" = ${Allowirda}
            "allowpopimapemail" = ${Allowpopimapemail}
            "allowremotedesk" = ${Allowremotedesk}
            "allowsimpledevpw" = ${Allowsimpledevpw}
            "allowsmimeencalgneg" = ${Allowsmimeencalgneg}
            "allowsmimesoftcerts" = ${Allowsmimesoftcerts}
            "allowstoragecard" = ${Allowstoragecard}
            "allowtextmessaging" = ${Allowtextmessaging}
            "allowunsignedapps" = ${Allowunsignedapps}
            "allowunsigninstallpacks" = ${Allowunsigninstallpacks}
            "allowwifi" = ${Allowwifi}
            "alphanumpwreq" = ${Alphanumpwreq}
            "approvedapplist" = ${Approvedapplist}
            "attenabled" = ${Attenabled}
            "devencenabled" = ${Devencenabled}
            "devpwenabled" = ${Devpwenabled}
            "devpwexpiration" = ${Devpwexpiration}
            "devpwhistory" = ${Devpwhistory}
            "maxattsize" = ${Maxattsize}
            "maxcalagefilter" = ${Maxcalagefilter}
            "maxdevpwfailedattempts" = ${Maxdevpwfailedattempts}
            "maxemailagefilter" = ${Maxemailagefilter}
            "maxemailbodytruncsize" = ${Maxemailbodytruncsize}
            "maxemailhtmlbodytruncsize" = ${Maxemailhtmlbodytruncsize}
            "maxinacttimedevlock" = ${Maxinacttimedevlock}
            "mindevcomplexchars" = ${Mindevcomplexchars}
            "mindevpwlenngth" = ${Mindevpwlenngth}
            "pwrecoveryenabled" = ${Pwrecoveryenabled}
            "reqdevenc" = ${Reqdevenc}
            "reqencsmimealgorithm" = ${Reqencsmimealgorithm}
            "reqencsmimemessages" = ${Reqencsmimemessages}
            "reqmansyncroam" = ${Reqmansyncroam}
            "reqsignedsmimealgorithm" = ${Reqsignedsmimealgorithm}
            "reqsignedsmimemessages" = ${Reqsignedsmimemessages}
            "unapprovedinromapplist" = ${Unapprovedinromapplist}
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
        $AllProperties = ("allowbluetooth", "allowbrowser", "allowcam", "allowconsumeremail", "allowdesktopsync", "allowhtmlemail", "allowinternetsharing", "allowirda", "allowpopimapemail", "allowremotedesk", "allowsimpledevpw", "allowsmimeencalgneg", "allowsmimesoftcerts", "allowstoragecard", "allowtextmessaging", "allowunsignedapps", "allowunsigninstallpacks", "allowwifi", "alphanumpwreq", "approvedapplist", "attenabled", "devencenabled", "devpwenabled", "devpwexpiration", "devpwhistory", "maxattsize", "maxcalagefilter", "maxdevpwfailedattempts", "maxemailagefilter", "maxemailbodytruncsize", "maxemailhtmlbodytruncsize", "maxinacttimedevlock", "mindevcomplexchars", "mindevpwlenngth", "pwrecoveryenabled", "reqdevenc", "reqencsmimealgorithm", "reqencsmimemessages", "reqmansyncroam", "reqsignedsmimealgorithm", "reqsignedsmimemessages", "unapprovedinromapplist")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "allowbluetooth"))) { #optional property not found
            $Allowbluetooth = $null
        } else {
            $Allowbluetooth = $JsonParameters.PSobject.Properties["allowbluetooth"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "allowbrowser"))) { #optional property not found
            $Allowbrowser = $null
        } else {
            $Allowbrowser = $JsonParameters.PSobject.Properties["allowbrowser"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "allowcam"))) { #optional property not found
            $Allowcam = $null
        } else {
            $Allowcam = $JsonParameters.PSobject.Properties["allowcam"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "allowconsumeremail"))) { #optional property not found
            $Allowconsumeremail = $null
        } else {
            $Allowconsumeremail = $JsonParameters.PSobject.Properties["allowconsumeremail"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "allowdesktopsync"))) { #optional property not found
            $Allowdesktopsync = $null
        } else {
            $Allowdesktopsync = $JsonParameters.PSobject.Properties["allowdesktopsync"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "allowhtmlemail"))) { #optional property not found
            $Allowhtmlemail = $null
        } else {
            $Allowhtmlemail = $JsonParameters.PSobject.Properties["allowhtmlemail"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "allowinternetsharing"))) { #optional property not found
            $Allowinternetsharing = $null
        } else {
            $Allowinternetsharing = $JsonParameters.PSobject.Properties["allowinternetsharing"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "allowirda"))) { #optional property not found
            $Allowirda = $null
        } else {
            $Allowirda = $JsonParameters.PSobject.Properties["allowirda"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "allowpopimapemail"))) { #optional property not found
            $Allowpopimapemail = $null
        } else {
            $Allowpopimapemail = $JsonParameters.PSobject.Properties["allowpopimapemail"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "allowremotedesk"))) { #optional property not found
            $Allowremotedesk = $null
        } else {
            $Allowremotedesk = $JsonParameters.PSobject.Properties["allowremotedesk"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "allowsimpledevpw"))) { #optional property not found
            $Allowsimpledevpw = $null
        } else {
            $Allowsimpledevpw = $JsonParameters.PSobject.Properties["allowsimpledevpw"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "allowsmimeencalgneg"))) { #optional property not found
            $Allowsmimeencalgneg = $null
        } else {
            $Allowsmimeencalgneg = $JsonParameters.PSobject.Properties["allowsmimeencalgneg"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "allowsmimesoftcerts"))) { #optional property not found
            $Allowsmimesoftcerts = $null
        } else {
            $Allowsmimesoftcerts = $JsonParameters.PSobject.Properties["allowsmimesoftcerts"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "allowstoragecard"))) { #optional property not found
            $Allowstoragecard = $null
        } else {
            $Allowstoragecard = $JsonParameters.PSobject.Properties["allowstoragecard"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "allowtextmessaging"))) { #optional property not found
            $Allowtextmessaging = $null
        } else {
            $Allowtextmessaging = $JsonParameters.PSobject.Properties["allowtextmessaging"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "allowunsignedapps"))) { #optional property not found
            $Allowunsignedapps = $null
        } else {
            $Allowunsignedapps = $JsonParameters.PSobject.Properties["allowunsignedapps"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "allowunsigninstallpacks"))) { #optional property not found
            $Allowunsigninstallpacks = $null
        } else {
            $Allowunsigninstallpacks = $JsonParameters.PSobject.Properties["allowunsigninstallpacks"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "allowwifi"))) { #optional property not found
            $Allowwifi = $null
        } else {
            $Allowwifi = $JsonParameters.PSobject.Properties["allowwifi"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "alphanumpwreq"))) { #optional property not found
            $Alphanumpwreq = $null
        } else {
            $Alphanumpwreq = $JsonParameters.PSobject.Properties["alphanumpwreq"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "approvedapplist"))) { #optional property not found
            $Approvedapplist = $null
        } else {
            $Approvedapplist = $JsonParameters.PSobject.Properties["approvedapplist"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "attenabled"))) { #optional property not found
            $Attenabled = $null
        } else {
            $Attenabled = $JsonParameters.PSobject.Properties["attenabled"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "devencenabled"))) { #optional property not found
            $Devencenabled = $null
        } else {
            $Devencenabled = $JsonParameters.PSobject.Properties["devencenabled"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "devpwenabled"))) { #optional property not found
            $Devpwenabled = $null
        } else {
            $Devpwenabled = $JsonParameters.PSobject.Properties["devpwenabled"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "devpwexpiration"))) { #optional property not found
            $Devpwexpiration = $null
        } else {
            $Devpwexpiration = $JsonParameters.PSobject.Properties["devpwexpiration"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "devpwhistory"))) { #optional property not found
            $Devpwhistory = $null
        } else {
            $Devpwhistory = $JsonParameters.PSobject.Properties["devpwhistory"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "maxattsize"))) { #optional property not found
            $Maxattsize = $null
        } else {
            $Maxattsize = $JsonParameters.PSobject.Properties["maxattsize"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "maxcalagefilter"))) { #optional property not found
            $Maxcalagefilter = $null
        } else {
            $Maxcalagefilter = $JsonParameters.PSobject.Properties["maxcalagefilter"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "maxdevpwfailedattempts"))) { #optional property not found
            $Maxdevpwfailedattempts = $null
        } else {
            $Maxdevpwfailedattempts = $JsonParameters.PSobject.Properties["maxdevpwfailedattempts"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "maxemailagefilter"))) { #optional property not found
            $Maxemailagefilter = $null
        } else {
            $Maxemailagefilter = $JsonParameters.PSobject.Properties["maxemailagefilter"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "maxemailbodytruncsize"))) { #optional property not found
            $Maxemailbodytruncsize = $null
        } else {
            $Maxemailbodytruncsize = $JsonParameters.PSobject.Properties["maxemailbodytruncsize"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "maxemailhtmlbodytruncsize"))) { #optional property not found
            $Maxemailhtmlbodytruncsize = $null
        } else {
            $Maxemailhtmlbodytruncsize = $JsonParameters.PSobject.Properties["maxemailhtmlbodytruncsize"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "maxinacttimedevlock"))) { #optional property not found
            $Maxinacttimedevlock = $null
        } else {
            $Maxinacttimedevlock = $JsonParameters.PSobject.Properties["maxinacttimedevlock"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "mindevcomplexchars"))) { #optional property not found
            $Mindevcomplexchars = $null
        } else {
            $Mindevcomplexchars = $JsonParameters.PSobject.Properties["mindevcomplexchars"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "mindevpwlenngth"))) { #optional property not found
            $Mindevpwlenngth = $null
        } else {
            $Mindevpwlenngth = $JsonParameters.PSobject.Properties["mindevpwlenngth"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "pwrecoveryenabled"))) { #optional property not found
            $Pwrecoveryenabled = $null
        } else {
            $Pwrecoveryenabled = $JsonParameters.PSobject.Properties["pwrecoveryenabled"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "reqdevenc"))) { #optional property not found
            $Reqdevenc = $null
        } else {
            $Reqdevenc = $JsonParameters.PSobject.Properties["reqdevenc"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "reqencsmimealgorithm"))) { #optional property not found
            $Reqencsmimealgorithm = $null
        } else {
            $Reqencsmimealgorithm = $JsonParameters.PSobject.Properties["reqencsmimealgorithm"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "reqencsmimemessages"))) { #optional property not found
            $Reqencsmimemessages = $null
        } else {
            $Reqencsmimemessages = $JsonParameters.PSobject.Properties["reqencsmimemessages"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "reqmansyncroam"))) { #optional property not found
            $Reqmansyncroam = $null
        } else {
            $Reqmansyncroam = $JsonParameters.PSobject.Properties["reqmansyncroam"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "reqsignedsmimealgorithm"))) { #optional property not found
            $Reqsignedsmimealgorithm = $null
        } else {
            $Reqsignedsmimealgorithm = $JsonParameters.PSobject.Properties["reqsignedsmimealgorithm"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "reqsignedsmimemessages"))) { #optional property not found
            $Reqsignedsmimemessages = $null
        } else {
            $Reqsignedsmimemessages = $JsonParameters.PSobject.Properties["reqsignedsmimemessages"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "unapprovedinromapplist"))) { #optional property not found
            $Unapprovedinromapplist = $null
        } else {
            $Unapprovedinromapplist = $JsonParameters.PSobject.Properties["unapprovedinromapplist"].value
        }

        $PSO = [PSCustomObject]@{
            "allowbluetooth" = ${Allowbluetooth}
            "allowbrowser" = ${Allowbrowser}
            "allowcam" = ${Allowcam}
            "allowconsumeremail" = ${Allowconsumeremail}
            "allowdesktopsync" = ${Allowdesktopsync}
            "allowhtmlemail" = ${Allowhtmlemail}
            "allowinternetsharing" = ${Allowinternetsharing}
            "allowirda" = ${Allowirda}
            "allowpopimapemail" = ${Allowpopimapemail}
            "allowremotedesk" = ${Allowremotedesk}
            "allowsimpledevpw" = ${Allowsimpledevpw}
            "allowsmimeencalgneg" = ${Allowsmimeencalgneg}
            "allowsmimesoftcerts" = ${Allowsmimesoftcerts}
            "allowstoragecard" = ${Allowstoragecard}
            "allowtextmessaging" = ${Allowtextmessaging}
            "allowunsignedapps" = ${Allowunsignedapps}
            "allowunsigninstallpacks" = ${Allowunsigninstallpacks}
            "allowwifi" = ${Allowwifi}
            "alphanumpwreq" = ${Alphanumpwreq}
            "approvedapplist" = ${Approvedapplist}
            "attenabled" = ${Attenabled}
            "devencenabled" = ${Devencenabled}
            "devpwenabled" = ${Devpwenabled}
            "devpwexpiration" = ${Devpwexpiration}
            "devpwhistory" = ${Devpwhistory}
            "maxattsize" = ${Maxattsize}
            "maxcalagefilter" = ${Maxcalagefilter}
            "maxdevpwfailedattempts" = ${Maxdevpwfailedattempts}
            "maxemailagefilter" = ${Maxemailagefilter}
            "maxemailbodytruncsize" = ${Maxemailbodytruncsize}
            "maxemailhtmlbodytruncsize" = ${Maxemailhtmlbodytruncsize}
            "maxinacttimedevlock" = ${Maxinacttimedevlock}
            "mindevcomplexchars" = ${Mindevcomplexchars}
            "mindevpwlenngth" = ${Mindevpwlenngth}
            "pwrecoveryenabled" = ${Pwrecoveryenabled}
            "reqdevenc" = ${Reqdevenc}
            "reqencsmimealgorithm" = ${Reqencsmimealgorithm}
            "reqencsmimemessages" = ${Reqencsmimemessages}
            "reqmansyncroam" = ${Reqmansyncroam}
            "reqsignedsmimealgorithm" = ${Reqsignedsmimealgorithm}
            "reqsignedsmimemessages" = ${Reqsignedsmimemessages}
            "unapprovedinromapplist" = ${Unapprovedinromapplist}
        }

        return $PSO
    }

}

