#
# grommunio Admin API
# grommunio administration REST API
# Version: 1.9.2
#

Describe -tag 'GrommunioAdmin' -name 'GroAdminDomainCommonSyncPolicyAllOf' {
    Context 'GroAdminDomainCommonSyncPolicyAllOf' {
        It 'Initialize-GroAdminDomainCommonSyncPolicyAllOf' {
            # a simple test to create an object
            #$NewObject = Initialize-GroAdminDomainCommonSyncPolicyAllOf -Allowbluetooth "TEST_VALUE" -Allowbrowser "TEST_VALUE" -Allowcam "TEST_VALUE" -Allowconsumeremail "TEST_VALUE" -Allowdesktopsync "TEST_VALUE" -Allowhtmlemail "TEST_VALUE" -Allowinternetsharing "TEST_VALUE" -Allowirda "TEST_VALUE" -Allowpopimapemail "TEST_VALUE" -Allowremotedesk "TEST_VALUE" -Allowsimpledevpw "TEST_VALUE" -Allowsmimeencalgneg "TEST_VALUE" -Allowsmimesoftcerts "TEST_VALUE" -Allowstoragecard "TEST_VALUE" -Allowtextmessaging "TEST_VALUE" -Allowunsignedapps "TEST_VALUE" -Allowunsigninstallpacks "TEST_VALUE" -Allowwifi "TEST_VALUE" -Alphanumpwreq "TEST_VALUE" -Approvedapplist "TEST_VALUE" -Attenabled "TEST_VALUE" -Devencenabled "TEST_VALUE" -Devpwenabled "TEST_VALUE" -Devpwexpiration "TEST_VALUE" -Devpwhistory "TEST_VALUE" -Maxattsize "TEST_VALUE" -Maxcalagefilter "TEST_VALUE" -Maxdevpwfailedattempts "TEST_VALUE" -Maxemailagefilter "TEST_VALUE" -Maxemailbodytruncsize "TEST_VALUE" -Maxemailhtmlbodytruncsize "TEST_VALUE" -Maxinacttimedevlock "TEST_VALUE" -Mindevcomplexchars "TEST_VALUE" -Mindevpwlenngth "TEST_VALUE" -Pwrecoveryenabled "TEST_VALUE" -Reqdevenc "TEST_VALUE" -Reqencsmimealgorithm "TEST_VALUE" -Reqencsmimemessages "TEST_VALUE" -Reqmansyncroam "TEST_VALUE" -Reqsignedsmimealgorithm "TEST_VALUE" -Reqsignedsmimemessages "TEST_VALUE" -Unapprovedinromapplist "TEST_VALUE"
            #$NewObject | Should -BeOfType DomainCommonSyncPolicyAllOf
            #$NewObject.property | Should -Be 0
        }
    }
}
