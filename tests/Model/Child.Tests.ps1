#
# grommunio Admin API
# grommunio administration REST API
# Version: 1.9.2
#

Describe -tag 'GrommunioAdmin' -name 'GroAdminChild' {
    Context 'GroAdminChild' {
        It 'Initialize-GroAdminChild' {
            # a simple test to create an object
            #$NewObject = Initialize-GroAdminChild -ID "TEST_VALUE" -Classname "TEST_VALUE"
            #$NewObject | Should -BeOfType Child
            #$NewObject.property | Should -Be 0
        }
    }
}
