#
# grommunio Admin API
# grommunio administration REST API
# Version: 1.9.2
#

Describe -tag 'GrommunioAdmin' -name 'GroAdminLdapConfigConnection' {
    Context 'GroAdminLdapConfigConnection' {
        It 'Initialize-GroAdminLdapConfigConnection' {
            # a simple test to create an object
            #$NewObject = Initialize-GroAdminLdapConfigConnection -Server "TEST_VALUE" -BindUser "TEST_VALUE" -BindPass "TEST_VALUE" -Starttls "TEST_VALUE"
            #$NewObject | Should -BeOfType LdapConfigConnection
            #$NewObject.property | Should -Be 0
        }
    }
}
