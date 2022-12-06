#
# grommunio Admin API
# grommunio administration REST API
# Version: 1.9.2
#

Describe -tag 'GrommunioAdmin' -name 'GroAdminProfileResponse' {
    Context 'GroAdminProfileResponse' {
        It 'Initialize-GroAdminProfileResponse' {
            # a simple test to create an object
            #$NewObject = Initialize-GroAdminProfileResponse -User "TEST_VALUE" -Capabilities "TEST_VALUE"
            #$NewObject | Should -BeOfType ProfileResponse
            #$NewObject.property | Should -Be 0
        }
    }
}
