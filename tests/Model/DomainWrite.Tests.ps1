#
# grommunio Admin API
# grommunio administration REST API
# Version: 1.9.2
#

Describe -tag 'GrommunioAdmin' -name 'GroAdminDomainWrite' {
    Context 'GroAdminDomainWrite' {
        It 'Initialize-GroAdminDomainWrite' {
            # a simple test to create an object
            #$NewObject = Initialize-GroAdminDomainWrite -ID "TEST_VALUE" -OrgID "TEST_VALUE" -Domainname "TEST_VALUE" -Displayname "TEST_VALUE" -Homedir "TEST_VALUE" -MaxUser "TEST_VALUE" -Title "TEST_VALUE" -Address "TEST_VALUE" -AdminName "TEST_VALUE" -Tel "TEST_VALUE" -EndDay "TEST_VALUE" -DomainStatus "TEST_VALUE" -ActiveUsers "TEST_VALUE" -InactiveUsers "TEST_VALUE" -SyncPolicy "TEST_VALUE" -Chat "TEST_VALUE" -Homeserver "TEST_VALUE"
            #$NewObject | Should -BeOfType DomainWrite
            #$NewObject.property | Should -Be 0
        }
    }
}
