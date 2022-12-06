#
# grommunio Admin API
# grommunio administration REST API
# Version: 1.9.2
#

Describe -tag 'GrommunioAdmin' -name 'GroAdminOrgWrite' {
    Context 'GroAdminOrgWrite' {
        It 'Initialize-GroAdminOrgWrite' {
            # a simple test to create an object
            #$NewObject = Initialize-GroAdminOrgWrite -Name "TEST_VALUE" -Description "TEST_VALUE" -Domains "TEST_VALUE"
            #$NewObject | Should -BeOfType OrgWrite
            #$NewObject.property | Should -Be 0
        }
    }
}
