#
# grommunio Admin API
# grommunio administration REST API
# Version: 1.9.2
#

Describe -tag 'GrommunioAdmin' -name 'GroAdminSystemCliResponse' {
    Context 'GroAdminSystemCliResponse' {
        It 'Initialize-GroAdminSystemCliResponse' {
            # a simple test to create an object
            #$NewObject = Initialize-GroAdminSystemCliResponse -Code "TEST_VALUE" -Stdout "TEST_VALUE" -Fs "TEST_VALUE" -Completions "TEST_VALUE"
            #$NewObject | Should -BeOfType SystemCliResponse
            #$NewObject.property | Should -Be 0
        }
    }
}
