#
# grommunio Admin API
# grommunio administration REST API
# Version: 1.9.2
#

Describe -tag 'GrommunioAdmin' -name 'GroAdminSystemDashboardResponseMemory' {
    Context 'GroAdminSystemDashboardResponseMemory' {
        It 'Initialize-GroAdminSystemDashboardResponseMemory' {
            # a simple test to create an object
            #$NewObject = Initialize-GroAdminSystemDashboardResponseMemory -Percent "TEST_VALUE" -Total "TEST_VALUE" -Free "TEST_VALUE" -Used "TEST_VALUE" -Buffer "TEST_VALUE" -Cache "TEST_VALUE" -Available "TEST_VALUE"
            #$NewObject | Should -BeOfType SystemDashboardResponseMemory
            #$NewObject.property | Should -Be 0
        }
    }
}
