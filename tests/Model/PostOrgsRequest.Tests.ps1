#
# grommunio Admin API
# grommunio administration REST API
# Version: 1.9.2
#

Describe -tag 'GrommunioAdmin' -name 'GroAdminPostOrgsRequest' {
    Context 'GroAdminPostOrgsRequest' {
        It 'Initialize-GroAdminPostOrgsRequest' {
            # a simple test to create an object
            #$NewObject = Initialize-GroAdminPostOrgsRequest -Name "TEST_VALUE" -Description "TEST_VALUE" -Domains "TEST_VALUE"
            #$NewObject | Should -BeOfType PostOrgsRequest
            #$NewObject.property | Should -Be 0
        }
    }
}
