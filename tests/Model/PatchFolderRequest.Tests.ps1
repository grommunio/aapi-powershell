#
# grommunio Admin API
# grommunio administration REST API
# Version: 1.9.2
#

Describe -tag 'GrommunioAdmin' -name 'GroAdminPatchFolderRequest' {
    Context 'GroAdminPatchFolderRequest' {
        It 'Initialize-GroAdminPatchFolderRequest' {
            # a simple test to create an object
            #$NewObject = Initialize-GroAdminPatchFolderRequest -Displayname "TEST_VALUE" -Container "TEST_VALUE" -Comment "TEST_VALUE"
            #$NewObject | Should -BeOfType PatchFolderRequest
            #$NewObject.property | Should -Be 0
        }
    }
}
