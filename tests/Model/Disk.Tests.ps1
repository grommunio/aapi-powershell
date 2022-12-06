#
# grommunio Admin API
# grommunio administration REST API
# Version: 1.9.2
#

Describe -tag 'GrommunioAdmin' -name 'GroAdminDisk' {
    Context 'GroAdminDisk' {
        It 'Initialize-GroAdminDisk' {
            # a simple test to create an object
            #$NewObject = Initialize-GroAdminDisk -Percent "TEST_VALUE" -Total "TEST_VALUE" -Used "TEST_VALUE" -Free "TEST_VALUE" -Device "TEST_VALUE" -Mountpoint "TEST_VALUE" -Filesystem "TEST_VALUE"
            #$NewObject | Should -BeOfType Disk
            #$NewObject.property | Should -Be 0
        }
    }
}
