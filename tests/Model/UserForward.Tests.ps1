#
# grommunio Admin API
# grommunio administration REST API
# Version: 1.9.2
#

Describe -tag 'GrommunioAdmin' -name 'GroAdminUserForward' {
    Context 'GroAdminUserForward' {
        It 'Initialize-GroAdminUserForward' {
            # a simple test to create an object
            #$NewObject = Initialize-GroAdminUserForward -ForwardType "TEST_VALUE" -Destination "TEST_VALUE"
            #$NewObject | Should -BeOfType UserForward
            #$NewObject.property | Should -Be 0
        }
    }
}
