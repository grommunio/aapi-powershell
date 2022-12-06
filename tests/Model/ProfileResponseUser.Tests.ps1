#
# grommunio Admin API
# grommunio administration REST API
# Version: 1.9.2
#

Describe -tag 'GrommunioAdmin' -name 'GroAdminProfileResponseUser' {
    Context 'GroAdminProfileResponseUser' {
        It 'Initialize-GroAdminProfileResponseUser' {
            # a simple test to create an object
            #$NewObject = Initialize-GroAdminProfileResponseUser -Username "TEST_VALUE" -RealName "TEST_VALUE"
            #$NewObject | Should -BeOfType ProfileResponseUser
            #$NewObject.property | Should -Be 0
        }
    }
}
