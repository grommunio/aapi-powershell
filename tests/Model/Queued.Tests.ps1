#
# grommunio Admin API
# grommunio administration REST API
# Version: 1.9.2
#

Describe -tag 'GrommunioAdmin' -name 'GroAdminQueued' {
    Context 'GroAdminQueued' {
        It 'Initialize-GroAdminQueued' {
            # a simple test to create an object
            #$NewObject = Initialize-GroAdminQueued -Message "TEST_VALUE" -TaskID "TEST_VALUE"
            #$NewObject | Should -BeOfType Queued
            #$NewObject.property | Should -Be 0
        }
    }
}
