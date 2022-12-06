#
# grommunio Admin API
# grommunio administration REST API
# Version: 1.9.2
#

Describe -tag 'GrommunioAdmin' -name 'GroAdminMlistReadClass' {
    Context 'GroAdminMlistReadClass' {
        It 'Initialize-GroAdminMlistReadClass' {
            # a simple test to create an object
            #$NewObject = Initialize-GroAdminMlistReadClass -ID "TEST_VALUE" -Classname "TEST_VALUE"
            #$NewObject | Should -BeOfType MlistReadClass
            #$NewObject.property | Should -Be 0
        }
    }
}
