#
# grommunio Admin API
# grommunio administration REST API
# Version: 1.9.2
#

Describe -tag 'GrommunioAdmin' -name 'GroAdminSwap' {
    Context 'GroAdminSwap' {
        It 'Initialize-GroAdminSwap' {
            # a simple test to create an object
            #$NewObject = Initialize-GroAdminSwap -Percent "TEST_VALUE" -Total "TEST_VALUE" -Free "TEST_VALUE" -Used "TEST_VALUE"
            #$NewObject | Should -BeOfType Swap
            #$NewObject.property | Should -Be 0
        }
    }
}
