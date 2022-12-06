#
# grommunio Admin API
# grommunio administration REST API
# Version: 1.9.2
#

Describe -tag 'GrommunioAdmin' -name 'GroAdminPublicFolder' {
    Context 'GroAdminPublicFolder' {
        It 'Initialize-GroAdminPublicFolder' {
            # a simple test to create an object
            #$NewObject = Initialize-GroAdminPublicFolder -Folderid "TEST_VALUE" -Displayname "TEST_VALUE" -Comment "TEST_VALUE" -Creationtime "TEST_VALUE" -Container "TEST_VALUE"
            #$NewObject | Should -BeOfType PublicFolder
            #$NewObject.property | Should -Be 0
        }
    }
}
