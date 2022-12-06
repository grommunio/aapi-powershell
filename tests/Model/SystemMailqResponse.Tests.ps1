#
# grommunio Admin API
# grommunio administration REST API
# Version: 1.9.2
#

Describe -tag 'GrommunioAdmin' -name 'GroAdminSystemMailqResponse' {
    Context 'GroAdminSystemMailqResponse' {
        It 'Initialize-GroAdminSystemMailqResponse' {
            # a simple test to create an object
            #$NewObject = Initialize-GroAdminSystemMailqResponse -PostfixMailq "TEST_VALUE" -GromoxMailq "TEST_VALUE" -Postqueue "TEST_VALUE"
            #$NewObject | Should -BeOfType SystemMailqResponse
            #$NewObject.property | Should -Be 0
        }
    }
}
