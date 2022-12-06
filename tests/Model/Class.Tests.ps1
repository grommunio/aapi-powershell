#
# grommunio Admin API
# grommunio administration REST API
# Version: 1.9.2
#

Describe -tag 'GrommunioAdmin' -name 'GroAdminClass' {
    Context 'GroAdminClass' {
        It 'Initialize-GroAdminClass' {
            # a simple test to create an object
            #$NewObject = Initialize-GroAdminClass -ID "TEST_VALUE" -Classname "TEST_VALUE"
            #$NewObject | Should -BeOfType Class
            #$NewObject.property | Should -Be 0
        }
    }
}
