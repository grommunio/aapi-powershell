#
# grommunio Admin API
# grommunio administration REST API
# Version: 1.9.2
#

Describe -tag 'GrommunioAdmin' -name 'GroAdminHomeserverRef' {
    Context 'GroAdminHomeserverRef' {
        It 'Initialize-GroAdminHomeserverRef' {
            # a simple test to create an object
            #$NewObject = Initialize-GroAdminHomeserverRef -ID "TEST_VALUE" -Hostname "TEST_VALUE"
            #$NewObject | Should -BeOfType HomeserverRef
            #$NewObject.property | Should -Be 0
        }
    }
}
