#
# grommunio Admin API
# grommunio administration REST API
# Version: 1.9.2
#

Describe -tag 'GrommunioAdmin' -name 'GroAdminFetchmailEntry' {
    Context 'GroAdminFetchmailEntry' {
        It 'Initialize-GroAdminFetchmailEntry' {
            # a simple test to create an object
            #$NewObject = Initialize-GroAdminFetchmailEntry -ID "TEST_VALUE" -Mailbox "TEST_VALUE" -Active "TEST_VALUE" -SrcServer "TEST_VALUE" -SrcUser "TEST_VALUE" -SrcPassword "TEST_VALUE" -Date "TEST_VALUE" -SrcAuth "TEST_VALUE" -SrcFolder "TEST_VALUE" -Fetchall "TEST_VALUE" -Keep "TEST_VALUE" -Protocol "TEST_VALUE" -UseSSL "TEST_VALUE" -SslCertCheck "TEST_VALUE" -SslCertPath "TEST_VALUE" -SslFingerprint "TEST_VALUE" -ExtraOptions "TEST_VALUE"
            #$NewObject | Should -BeOfType FetchmailEntry
            #$NewObject.property | Should -Be 0
        }
    }
}
