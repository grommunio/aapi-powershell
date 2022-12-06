#
# grommunio Admin API
# grommunio administration REST API
# Version: 1.9.2
#

Describe -tag 'GrommunioAdmin' -name 'GroAdminClassTreeElement' {
    Context 'GroAdminClassTreeElement' {
        It 'Initialize-GroAdminClassTreeElement' {
            # a simple test to create an object
            #$NewObject = Initialize-GroAdminClassTreeElement -ID "TEST_VALUE" -Name "TEST_VALUE" -Children "TEST_VALUE"
            #$NewObject | Should -BeOfType ClassTreeElement
            #$NewObject.property | Should -Be 0
        }
    }
}
