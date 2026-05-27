#
# grommunio Admin API
# grommunio administration REST API
# Version: 1.19.0
#

Describe -tag 'GrommunioAdmin' -name 'GroAdminUserUpdate' {
    Context 'GroAdminUserUpdate' {
        It 'Initialize-GroAdminUserUpdate' {
            # a simple test to create an object
            #$NewObject = Initialize-GroAdminUserUpdate -Username "TEST_VALUE" -Properties "TEST_VALUE" -Altnames "TEST_VALUE" -Aliases "TEST_VALUE" -Status "TEST_VALUE" -Pop3Imap "TEST_VALUE" -Smtp "TEST_VALUE" -ChangePassword "TEST_VALUE" -PublicAddress "TEST_VALUE" -PrivChat "TEST_VALUE" -PrivVideo "TEST_VALUE" -PrivFiles "TEST_VALUE" -PrivArchive "TEST_VALUE" -PrivWeb "TEST_VALUE" -PrivEas "TEST_VALUE" -PrivDav "TEST_VALUE" -LdapID "TEST_VALUE" -Fetchmail "TEST_VALUE" -SyncPolicy "TEST_VALUE" -Chat "TEST_VALUE" -ChatAdmin "TEST_VALUE" -Lang "TEST_VALUE" -Forward "TEST_VALUE" -Homeserver "TEST_VALUE"
            #$NewObject | Should -BeOfType UserUpdate
            #$NewObject.property | Should -Be 0
        }
    }
}
