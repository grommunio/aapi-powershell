#
# grommunio Admin API
# grommunio administration REST API
# Version: 1.9.2
#

Describe -tag 'GrommunioAdmin' -name 'GroAdminSetMemberRequest' {
    Context 'GroAdminSetMemberRequest' {
        It 'Initialize-GroAdminSetMemberRequest' {
            # a simple test to create an object
            #$NewObject = Initialize-GroAdminSetMemberRequest -Permissions "TEST_VALUE"
            #$NewObject | Should -BeOfType SetMemberRequest
            #$NewObject.property | Should -Be 0
        }
    }
}
