#
# grommunio Admin API
# grommunio administration REST API
# Version: 1.9.2
#

Describe -tag 'GrommunioAdmin' -name 'GroAdminRole' {
    Context 'GroAdminRole' {
        It 'Initialize-GroAdminRole' {
            # a simple test to create an object
            #$NewObject = Initialize-GroAdminRole -ID "TEST_VALUE" -Name "TEST_VALUE"
            #$NewObject | Should -BeOfType Role
            #$NewObject.property | Should -Be 0
        }
    }
}
