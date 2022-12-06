#
# grommunio Admin API
# grommunio administration REST API
# Version: 1.9.2
#

Describe -tag 'GrommunioAdmin' -name 'GroAdminParentClass' {
    Context 'GroAdminParentClass' {
        It 'Initialize-GroAdminParentClass' {
            # a simple test to create an object
            #$NewObject = Initialize-GroAdminParentClass -ID "TEST_VALUE" -Classname "TEST_VALUE"
            #$NewObject | Should -BeOfType ParentClass
            #$NewObject.property | Should -Be 0
        }
    }
}
