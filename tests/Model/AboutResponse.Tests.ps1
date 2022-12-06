#
# grommunio Admin API
# grommunio administration REST API
# Version: 1.9.2
#

Describe -tag 'GrommunioAdmin' -name 'GroAdminAboutResponse' {
    Context 'GroAdminAboutResponse' {
        It 'Initialize-GroAdminAboutResponse' {
            # a simple test to create an object
            #$NewObject = Initialize-GroAdminAboutResponse -API "TEST_VALUE" -Backend "TEST_VALUE" -Schema "TEST_VALUE"
            #$NewObject | Should -BeOfType AboutResponse
            #$NewObject.property | Should -Be 0
        }
    }
}
