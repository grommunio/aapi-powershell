#
# grommunio Admin API
# grommunio administration REST API
# Version: 1.9.2
#

Describe -tag 'GrommunioAdmin' -name 'GroAdminLicense' {
    Context 'GroAdminLicense' {
        It 'Initialize-GroAdminLicense' {
            # a simple test to create an object
            #$NewObject = Initialize-GroAdminLicense -Product "TEST_VALUE" -MaxUsers "TEST_VALUE" -NotBefore "TEST_VALUE" -NotAfter "TEST_VALUE" -CurrentUsers "TEST_VALUE" -Certificate "TEST_VALUE"
            #$NewObject | Should -BeOfType License
            #$NewObject.property | Should -Be 0
        }
    }
}
