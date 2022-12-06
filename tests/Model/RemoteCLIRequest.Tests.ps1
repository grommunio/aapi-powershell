#
# grommunio Admin API
# grommunio administration REST API
# Version: 1.9.2
#

Describe -tag 'GrommunioAdmin' -name 'GroAdminRemoteCLIRequest' {
    Context 'GroAdminRemoteCLIRequest' {
        It 'Initialize-GroAdminRemoteCLIRequest' {
            # a simple test to create an object
            #$NewObject = Initialize-GroAdminRemoteCLIRequest -Command "TEST_VALUE" -Mode "TEST_VALUE" -Color "TEST_VALUE" -Fs "TEST_VALUE"
            #$NewObject | Should -BeOfType RemoteCLIRequest
            #$NewObject.property | Should -Be 0
        }
    }
}
