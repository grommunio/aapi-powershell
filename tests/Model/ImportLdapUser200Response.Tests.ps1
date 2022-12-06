#
# grommunio Admin API
# grommunio administration REST API
# Version: 1.9.2
#

Describe -tag 'GrommunioAdmin' -name 'GroAdminImportLdapUser200Response' {
    Context 'GroAdminImportLdapUser200Response' {
        It 'Initialize-GroAdminImportLdapUser200Response' {
            # a simple test to create an object
            #$NewObject = Initialize-GroAdminImportLdapUser200Response -Message "TEST_VALUE" -ID "TEST_VALUE" -Username "TEST_VALUE" -DomainID "TEST_VALUE" -Roles "TEST_VALUE" -Properties "TEST_VALUE" -Aliases "TEST_VALUE" -Status "TEST_VALUE" -Pop3Imap "TEST_VALUE" -Smtp "TEST_VALUE" -ChangePassword "TEST_VALUE" -PublicAddress "TEST_VALUE" -PrivChat "TEST_VALUE" -PrivVideo "TEST_VALUE" -PrivFiles "TEST_VALUE" -PrivArchive "TEST_VALUE" -LdapID "TEST_VALUE" -Fetchmail "TEST_VALUE" -SyncPolicy "TEST_VALUE" -Chat "TEST_VALUE" -ChatAdmin "TEST_VALUE" -Lang "TEST_VALUE" -Forward "TEST_VALUE" -Homeserver "TEST_VALUE"
            #$NewObject | Should -BeOfType ImportLdapUser200Response
            #$NewObject.property | Should -Be 0
        }
    }
}
