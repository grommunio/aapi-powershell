#
# grommunio Admin API
# grommunio administration REST API
# Version: 1.9.2
#

Describe -tag 'GrommunioAdmin' -name 'GroAdminClassWrite' {
    Context 'GroAdminClassWrite' {
        It 'Initialize-GroAdminClassWrite' {
            # a simple test to create an object
            #$NewObject = Initialize-GroAdminClassWrite -Classname "TEST_VALUE" -ParentClasses "TEST_VALUE" -Members "TEST_VALUE" -Filters "TEST_VALUE"
            #$NewObject | Should -BeOfType ClassWrite
            #$NewObject.property | Should -Be 0
        }
    }
}
