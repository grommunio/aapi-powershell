#
# grommunio Admin API
# grommunio administration REST API
# Version: 1.9.2
#

Describe -tag 'GrommunioAdmin' -name 'GroAdminFs' {
    Context 'GroAdminFs' {
        It 'Initialize-GroAdminFs' {
            # a simple test to create an object
            #$NewObject = Initialize-GroAdminFs -Mode "TEST_VALUE" -Conf "TEST_VALUE" -Content "TEST_VALUE"
            #$NewObject | Should -BeOfType Fs
            #$NewObject.property | Should -Be 0
        }
    }
}
