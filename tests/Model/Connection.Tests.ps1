#
# grommunio Admin API
# grommunio administration REST API
# Version: 1.9.2
#

Describe -tag 'GrommunioAdmin' -name 'GroAdminConnection' {
    Context 'GroAdminConnection' {
        It 'Initialize-GroAdminConnection' {
            # a simple test to create an object
            #$NewObject = Initialize-GroAdminConnection -Server "TEST_VALUE" -BindUser "TEST_VALUE" -BindPass "TEST_VALUE" -Starttls "TEST_VALUE"
            #$NewObject | Should -BeOfType Connection
            #$NewObject.property | Should -Be 0
        }
    }
}
