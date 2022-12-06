#
# grommunio Admin API
# grommunio administration REST API
# Version: 1.9.2
#

Describe -tag 'GrommunioAdmin' -name 'GroAdminSyncStatus' {
    Context 'GroAdminSyncStatus' {
        It 'Initialize-GroAdminSyncStatus' {
            # a simple test to create an object
            #$NewObject = Initialize-GroAdminSyncStatus -ID "TEST_VALUE" -Username "TEST_VALUE" -Code "TEST_VALUE" -Message "TEST_VALUE"
            #$NewObject | Should -BeOfType SyncStatus
            #$NewObject.property | Should -Be 0
        }
    }
}
