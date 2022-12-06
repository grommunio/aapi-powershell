#
# grommunio Admin API
# grommunio administration REST API
# Version: 1.9.2
#

Describe -tag 'GrommunioAdmin' -name 'GroAdminSystemDashboardResponse' {
    Context 'GroAdminSystemDashboardResponse' {
        It 'Initialize-GroAdminSystemDashboardResponse' {
            # a simple test to create an object
            #$NewObject = Initialize-GroAdminSystemDashboardResponse -Disks "TEST_VALUE" -Load "TEST_VALUE" -CpuPercent "TEST_VALUE" -Memory "TEST_VALUE" -Swap "TEST_VALUE" -Booted "TEST_VALUE"
            #$NewObject | Should -BeOfType SystemDashboardResponse
            #$NewObject.property | Should -Be 0
        }
    }
}
