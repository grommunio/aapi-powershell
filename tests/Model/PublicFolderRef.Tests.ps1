#
# grommunio Admin API
# grommunio administration REST API
# Version: 1.9.2
#

Describe -tag 'GrommunioAdmin' -name 'GroAdminPublicFolderRef' {
    Context 'GroAdminPublicFolderRef' {
        It 'Initialize-GroAdminPublicFolderRef' {
            # a simple test to create an object
            #$NewObject = Initialize-GroAdminPublicFolderRef -Folderid "TEST_VALUE" -Name "TEST_VALUE" -Container "TEST_VALUE" -Children "TEST_VALUE"
            #$NewObject | Should -BeOfType PublicFolderRef
            #$NewObject.property | Should -Be 0
        }
    }
}
