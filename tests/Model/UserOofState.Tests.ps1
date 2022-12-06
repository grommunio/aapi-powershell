#
# grommunio Admin API
# grommunio administration REST API
# Version: 1.9.2
#

Describe -tag 'GrommunioAdmin' -name 'GroAdminUserOofState' {
    Context 'GroAdminUserOofState' {
        It 'Initialize-GroAdminUserOofState' {
            # a simple test to create an object
            #$NewObject = Initialize-GroAdminUserOofState -State "TEST_VALUE" -ExternalAudience "TEST_VALUE" -StartTime "TEST_VALUE" -EndTime "TEST_VALUE" -InternalSubject "TEST_VALUE" -InternalReply "TEST_VALUE" -ExternalSubject "TEST_VALUE" -ExternalReply "TEST_VALUE"
            #$NewObject | Should -BeOfType UserOofState
            #$NewObject.property | Should -Be 0
        }
    }
}
