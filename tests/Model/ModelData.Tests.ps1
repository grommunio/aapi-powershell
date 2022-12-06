#
# grommunio Admin API
# grommunio administration REST API
# Version: 1.9.2
#

Describe -tag 'GrommunioAdmin' -name 'GroAdminModelData' {
    Context 'GroAdminModelData' {
        It 'Initialize-GroAdminModelData' {
            # a simple test to create an object
            #$NewObject = Initialize-GroAdminModelData -Status "TEST_VALUE"
            #$NewObject | Should -BeOfType ModelData
            #$NewObject.property | Should -Be 0
        }
    }
}
