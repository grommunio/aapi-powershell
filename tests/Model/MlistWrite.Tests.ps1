#
# grommunio Admin API
# grommunio administration REST API
# Version: 1.19.0
#

Describe -tag 'GrommunioAdmin' -name 'GroAdminMlistWrite' {
    Context 'GroAdminMlistWrite' {
        It 'Initialize-GroAdminMlistWrite' {
            # a simple test to create an object
            #$NewObject = Initialize-GroAdminMlistWrite -Listname "TEST_VALUE" -ListType "TEST_VALUE" -ListPrivilege "TEST_VALUE" -Associations "TEST_VALUE" -Specifieds "TEST_VALUE" -DisplayName "TEST_VALUE" -Hidden "TEST_VALUE"
            #$NewObject | Should -BeOfType MlistWrite
            #$NewObject.property | Should -Be 0
        }
    }
}
