#
# grommunio Admin API
# grommunio administration REST API
# Version: 1.9.2
#

Describe -tag 'GrommunioAdmin' -name 'GroAdminPostDomainRequest' {
    Context 'GroAdminPostDomainRequest' {
        It 'Initialize-GroAdminPostDomainRequest' {
            # a simple test to create an object
            #$NewObject = Initialize-GroAdminPostDomainRequest -ID "TEST_VALUE" -OrgID "TEST_VALUE" -Domainname "TEST_VALUE" -Displayname "TEST_VALUE" -Homedir "TEST_VALUE" -MaxUser "TEST_VALUE" -Title "TEST_VALUE" -Address "TEST_VALUE" -AdminName "TEST_VALUE" -Tel "TEST_VALUE" -EndDay "TEST_VALUE" -DomainStatus "TEST_VALUE" -ActiveUsers "TEST_VALUE" -InactiveUsers "TEST_VALUE" -SyncPolicy "TEST_VALUE" -Chat "TEST_VALUE" -Homeserver "TEST_VALUE"
            #$NewObject | Should -BeOfType PostDomainRequest
            #$NewObject.property | Should -Be 0
        }
    }
}
