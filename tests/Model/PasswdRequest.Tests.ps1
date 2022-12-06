#
# grommunio Admin API
# grommunio administration REST API
# Version: 1.9.2
#

Describe -tag 'GrommunioAdmin' -name 'GroAdminPasswdRequest' {
    Context 'GroAdminPasswdRequest' {
        It 'Initialize-GroAdminPasswdRequest' {
            # a simple test to create an object
            #$NewObject = Initialize-GroAdminPasswdRequest -New "TEST_VALUE" -Old "TEST_VALUE" -User "TEST_VALUE"
            #$NewObject | Should -BeOfType PasswdRequest
            #$NewObject.property | Should -Be 0
        }
    }
}
