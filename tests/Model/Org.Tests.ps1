#
# grommunio Admin API
# grommunio administration REST API
# Version: 1.9.2
#

Describe -tag 'GrommunioAdmin' -name 'GroAdminOrg' {
    Context 'GroAdminOrg' {
        It 'Initialize-GroAdminOrg' {
            # a simple test to create an object
            #$NewObject = Initialize-GroAdminOrg -ID "TEST_VALUE" -Name "TEST_VALUE" -Description "TEST_VALUE" -Domains "TEST_VALUE"
            #$NewObject | Should -BeOfType Org
            #$NewObject.property | Should -Be 0
        }
    }
}
