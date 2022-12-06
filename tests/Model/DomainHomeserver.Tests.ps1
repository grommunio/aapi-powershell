#
# grommunio Admin API
# grommunio administration REST API
# Version: 1.9.2
#

Describe -tag 'GrommunioAdmin' -name 'GroAdminDomainHomeserver' {
    Context 'GroAdminDomainHomeserver' {
        It 'Initialize-GroAdminDomainHomeserver' {
            # a simple test to create an object
            #$NewObject = Initialize-GroAdminDomainHomeserver -ID "TEST_VALUE" -Hostname "TEST_VALUE"
            #$NewObject | Should -BeOfType DomainHomeserver
            #$NewObject.property | Should -Be 0
        }
    }
}
