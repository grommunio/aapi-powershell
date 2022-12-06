#
# grommunio Admin API
# grommunio administration REST API
# Version: 1.9.2
#

Describe -tag 'GrommunioAdmin' -name 'GroAdminServiceWipeRequest' {
    Context 'GroAdminServiceWipeRequest' {
        It 'Initialize-GroAdminServiceWipeRequest' {
            # a simple test to create an object
            #$NewObject = Initialize-GroAdminServiceWipeRequest -Password "TEST_VALUE" -RemoteIP "TEST_VALUE" -Status "TEST_VALUE" -Time "TEST_VALUE"
            #$NewObject | Should -BeOfType ServiceWipeRequest
            #$NewObject.property | Should -Be 0
        }
    }
}
