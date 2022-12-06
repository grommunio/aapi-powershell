#
# grommunio Admin API
# grommunio administration REST API
# Version: 1.9.2
#

Describe -tag 'GrommunioAdmin' -name 'GroAdminChkFormatResponse' {
    Context 'GroAdminChkFormatResponse' {
        It 'Initialize-GroAdminChkFormatResponse' {
            # a simple test to create an object
            #$NewObject = Initialize-GroAdminChkFormatResponse -Domain "TEST_VALUE" -Email "TEST_VALUE"
            #$NewObject | Should -BeOfType ChkFormatResponse
            #$NewObject.property | Should -Be 0
        }
    }
}
