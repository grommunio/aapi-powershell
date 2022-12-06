#
# grommunio Admin API
# grommunio administration REST API
# Version: 1.9.2
#

Describe -tag 'GrommunioAdmin' -name 'GroAdminSystemOrgsLdapResponse' {
    Context 'GroAdminSystemOrgsLdapResponse' {
        It 'Initialize-GroAdminSystemOrgsLdapResponse' {
            # a simple test to create an object
            #$NewObject = Initialize-GroAdminSystemOrgsLdapResponse -LdapAvailable "TEST_VALUE" -VarData "TEST_VALUE"
            #$NewObject | Should -BeOfType SystemOrgsLdapResponse
            #$NewObject.property | Should -Be 0
        }
    }
}
