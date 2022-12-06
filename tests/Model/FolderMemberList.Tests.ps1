#
# grommunio Admin API
# grommunio administration REST API
# Version: 1.9.2
#

Describe -tag 'GrommunioAdmin' -name 'GroAdminFolderMemberList' {
    Context 'GroAdminFolderMemberList' {
        It 'Initialize-GroAdminFolderMemberList' {
            # a simple test to create an object
            #$NewObject = Initialize-GroAdminFolderMemberList -MemberID "TEST_VALUE" -DisplayName "TEST_VALUE" -Username "TEST_VALUE"
            #$NewObject | Should -BeOfType FolderMemberList
            #$NewObject.property | Should -Be 0
        }
    }
}
