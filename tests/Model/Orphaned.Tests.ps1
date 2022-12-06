#
# grommunio Admin API
# grommunio administration REST API
# Version: 1.9.2
#

Describe -tag 'GrommunioAdmin' -name 'GroAdminOrphaned' {
    Context 'GroAdminOrphaned' {
        It 'Initialize-GroAdminOrphaned' {
            # a simple test to create an object
            #$NewObject = Initialize-GroAdminOrphaned -ID "TEST_VALUE" -Username "TEST_VALUE"
            #$NewObject | Should -BeOfType Orphaned
            #$NewObject.property | Should -Be 0
        }
    }
}
