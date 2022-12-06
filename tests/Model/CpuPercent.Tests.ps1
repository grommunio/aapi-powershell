#
# grommunio Admin API
# grommunio administration REST API
# Version: 1.9.2
#

Describe -tag 'GrommunioAdmin' -name 'GroAdminCpuPercent' {
    Context 'GroAdminCpuPercent' {
        It 'Initialize-GroAdminCpuPercent' {
            # a simple test to create an object
            #$NewObject = Initialize-GroAdminCpuPercent -User "TEST_VALUE" -System "TEST_VALUE" -Io "TEST_VALUE" -Interrupt "TEST_VALUE" -Steal "TEST_VALUE" -Idle "TEST_VALUE"
            #$NewObject | Should -BeOfType CpuPercent
            #$NewObject.property | Should -Be 0
        }
    }
}
