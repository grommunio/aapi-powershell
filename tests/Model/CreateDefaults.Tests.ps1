#
# grommunio Admin API
# grommunio administration REST API
# Version: 1.9.2
#

Describe -tag 'GrommunioAdmin' -name 'GroAdminCreateDefaults' {
    Context 'GroAdminCreateDefaults' {
        It 'Initialize-GroAdminCreateDefaults' {
            # a simple test to create an object
            #$NewObject = Initialize-GroAdminCreateDefaults -User "TEST_VALUE" -Domain "TEST_VALUE"
            #$NewObject | Should -BeOfType CreateDefaults
            #$NewObject.property | Should -Be 0
        }
    }
}
