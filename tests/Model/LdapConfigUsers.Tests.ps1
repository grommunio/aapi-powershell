#
# grommunio Admin API
# grommunio administration REST API
# Version: 1.9.2
#

Describe -tag 'GrommunioAdmin' -name 'GroAdminLdapConfigUsers' {
    Context 'GroAdminLdapConfigUsers' {
        It 'Initialize-GroAdminLdapConfigUsers' {
            # a simple test to create an object
            #$NewObject = Initialize-GroAdminLdapConfigUsers -Username "TEST_VALUE" -DisplayName "TEST_VALUE" -Filters "TEST_VALUE" -VarFilter "TEST_VALUE" -Templates "TEST_VALUE" -Attributes "TEST_VALUE" -DefaultQuota "TEST_VALUE" -SearchAttributes "TEST_VALUE" -Aliases "TEST_VALUE"
            #$NewObject | Should -BeOfType LdapConfigUsers
            #$NewObject.property | Should -Be 0
        }
    }
}
