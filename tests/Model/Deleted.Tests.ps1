#
# grommunio Admin API
# grommunio administration REST API
# Version: 1.9.2
#

Describe -tag 'GrommunioAdmin' -name 'GroAdminDeleted' {
    Context 'GroAdminDeleted' {
        It 'Initialize-GroAdminDeleted' {
            # a simple test to create an object
            #$NewObject = Initialize-GroAdminDeleted -ID "TEST_VALUE" -Username "TEST_VALUE"
            #$NewObject | Should -BeOfType Deleted
            #$NewObject.property | Should -Be 0
        }
    }
}
