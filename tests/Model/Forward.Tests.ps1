#
# grommunio Admin API
# grommunio administration REST API
# Version: 1.9.2
#

Describe -tag 'GrommunioAdmin' -name 'GroAdminForward' {
    Context 'GroAdminForward' {
        It 'Initialize-GroAdminForward' {
            # a simple test to create an object
            #$NewObject = Initialize-GroAdminForward -ForwardType "TEST_VALUE" -Destination "TEST_VALUE"
            #$NewObject | Should -BeOfType Forward
            #$NewObject.property | Should -Be 0
        }
    }
}
