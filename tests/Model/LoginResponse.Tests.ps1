#
# grommunio Admin API
# grommunio administration REST API
# Version: 1.9.2
#

Describe -tag 'GrommunioAdmin' -name 'GroAdminLoginResponse' {
    Context 'GroAdminLoginResponse' {
        It 'Initialize-GroAdminLoginResponse' {
            # a simple test to create an object
            #$NewObject = Initialize-GroAdminLoginResponse -GrommunioAuthJwt "TEST_VALUE" -Csrf "TEST_VALUE"
            #$NewObject | Should -BeOfType LoginResponse
            #$NewObject.property | Should -Be 0
        }
    }
}
