#
# grommunio Admin API
# grommunio administration REST API
# Version: 1.9.2
#

Describe -tag 'GrommunioAdmin' -name 'GroAdminHomeserver' {
    Context 'GroAdminHomeserver' {
        It 'Initialize-GroAdminHomeserver' {
            # a simple test to create an object
            #$NewObject = Initialize-GroAdminHomeserver -ID "TEST_VALUE" -Hostname "TEST_VALUE" -Extname "TEST_VALUE" -Users "TEST_VALUE" -Domains "TEST_VALUE"
            #$NewObject | Should -BeOfType Homeserver
            #$NewObject.property | Should -Be 0
        }
    }
}
