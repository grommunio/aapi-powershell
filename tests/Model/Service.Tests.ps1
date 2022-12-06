#
# grommunio Admin API
# grommunio administration REST API
# Version: 1.9.2
#

Describe -tag 'GrommunioAdmin' -name 'GroAdminService' {
    Context 'GroAdminService' {
        It 'Initialize-GroAdminService' {
            # a simple test to create an object
            #$NewObject = Initialize-GroAdminService -State "TEST_VALUE" -Substate "TEST_VALUE" -Description "TEST_VALUE" -Autostart "TEST_VALUE" -Since "TEST_VALUE" -Name "TEST_VALUE" -Unit "TEST_VALUE"
            #$NewObject | Should -BeOfType Service
            #$NewObject.property | Should -Be 0
        }
    }
}
