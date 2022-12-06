#
# grommunio Admin API
# grommunio administration REST API
# Version: 1.9.2
#

Describe -tag 'GrommunioAdmin' -name 'GroAdminStatusResponse' {
    Context 'GroAdminStatusResponse' {
        It 'Initialize-GroAdminStatusResponse' {
            # a simple test to create an object
            #$NewObject = Initialize-GroAdminStatusResponse -Message "TEST_VALUE" -Database "TEST_VALUE" -Tasq "TEST_VALUE"
            #$NewObject | Should -BeOfType StatusResponse
            #$NewObject.property | Should -Be 0
        }
    }
}
