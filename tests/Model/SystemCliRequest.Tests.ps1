#
# grommunio Admin API
# grommunio administration REST API
# Version: 1.9.2
#

Describe -tag 'GrommunioAdmin' -name 'GroAdminSystemCliRequest' {
    Context 'GroAdminSystemCliRequest' {
        It 'Initialize-GroAdminSystemCliRequest' {
            # a simple test to create an object
            #$NewObject = Initialize-GroAdminSystemCliRequest -Command "TEST_VALUE" -Mode "TEST_VALUE" -Color "TEST_VALUE" -Fs "TEST_VALUE"
            #$NewObject | Should -BeOfType SystemCliRequest
            #$NewObject.property | Should -Be 0
        }
    }
}
