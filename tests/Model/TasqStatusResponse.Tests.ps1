#
# grommunio Admin API
# grommunio administration REST API
# Version: 1.9.2
#

Describe -tag 'GrommunioAdmin' -name 'GroAdminTasqStatusResponse' {
    Context 'GroAdminTasqStatusResponse' {
        It 'Initialize-GroAdminTasqStatusResponse' {
            # a simple test to create an object
            #$NewObject = Initialize-GroAdminTasqStatusResponse -Running "TEST_VALUE" -Queued "TEST_VALUE" -Workers "TEST_VALUE"
            #$NewObject | Should -BeOfType TasqStatusResponse
            #$NewObject.property | Should -Be 0
        }
    }
}
