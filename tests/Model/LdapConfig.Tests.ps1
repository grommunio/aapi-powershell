#
# grommunio Admin API
# grommunio administration REST API
# Version: 1.9.2
#

Describe -tag 'GrommunioAdmin' -name 'GroAdminLdapConfig' {
    Context 'GroAdminLdapConfig' {
        It 'Initialize-GroAdminLdapConfig' {
            # a simple test to create an object
            #$NewObject = Initialize-GroAdminLdapConfig -Disabled "TEST_VALUE" -Connection "TEST_VALUE" -BaseDn "TEST_VALUE" -ObjectID "TEST_VALUE" -Users "TEST_VALUE"
            #$NewObject | Should -BeOfType LdapConfig
            #$NewObject.property | Should -Be 0
        }
    }
}
