#
# grommunio Admin API
# grommunio administration REST API
# Version: 1.9.2
#

Describe -tag 'GrommunioAdmin' -name 'GroAdminGroAdminLDAPApi' {
    Context 'Invoke-GroAdminCheckUsers' {
        It 'Test Invoke-GroAdminCheckUsers' {
            #$TestResult = Invoke-GroAdminCheckUsers -Domain "TEST_VALUE" -Organization "TEST_VALUE"
            #$TestResult | Should -BeOfType TODO
            #$TestResult.property | Should -Be 0
        }
    }

    Context 'Invoke-GroAdminDeleteLDAPConf' {
        It 'Test Invoke-GroAdminDeleteLDAPConf' {
            #$TestResult = Invoke-GroAdminDeleteLDAPConf -XCsrfToken "TEST_VALUE"
            #$TestResult | Should -BeOfType TODO
            #$TestResult.property | Should -Be 0
        }
    }

    Context 'Invoke-GroAdminDeleteOrgLDAPConf' {
        It 'Test Invoke-GroAdminDeleteOrgLDAPConf' {
            #$TestResult = Invoke-GroAdminDeleteOrgLDAPConf -ID "TEST_VALUE" -XCsrfToken "TEST_VALUE"
            #$TestResult | Should -BeOfType TODO
            #$TestResult.property | Should -Be 0
        }
    }

    Context 'Invoke-GroAdminDeleteOrphaned' {
        It 'Test Invoke-GroAdminDeleteOrphaned' {
            #$TestResult = Invoke-GroAdminDeleteOrphaned -XCsrfToken "TEST_VALUE" -DeleteFiles "TEST_VALUE"
            #$TestResult | Should -BeOfType TODO
            #$TestResult.property | Should -Be 0
        }
    }

    Context 'Get-GroAdminLDAP' {
        It 'Test Get-GroAdminLDAP' {
            #$TestResult = Get-GroAdminLDAP -ID "TEST_VALUE" -Domain "TEST_VALUE" -Organization "TEST_VALUE"
            #$TestResult | Should -BeOfType TODO
            #$TestResult.property | Should -Be 0
        }
    }

    Context 'Get-GroAdminLDAPConf' {
        It 'Test Get-GroAdminLDAPConf' {
            #$TestResult = Get-GroAdminLDAPConf
            #$TestResult | Should -BeOfType TODO
            #$TestResult.property | Should -Be 0
        }
    }

    Context 'Get-GroAdminOrgLDAPConf' {
        It 'Test Get-GroAdminOrgLDAPConf' {
            #$TestResult = Get-GroAdminOrgLDAPConf -ID "TEST_VALUE"
            #$TestResult | Should -BeOfType TODO
            #$TestResult.property | Should -Be 0
        }
    }

    Context 'Import-GroAdminLdapUser' {
        It 'Test Import-GroAdminLdapUser' {
            #$TestResult = Import-GroAdminLdapUser -ID "TEST_VALUE" -XCsrfToken "TEST_VALUE" -Force "TEST_VALUE" -Lang "TEST_VALUE" -Domain "TEST_VALUE" -Organization "TEST_VALUE"
            #$TestResult | Should -BeOfType TODO
            #$TestResult.property | Should -Be 0
        }
    }

    Context 'Send-GroAdminDownsync' {
        It 'Test Send-GroAdminDownsync' {
            #$TestResult = Send-GroAdminDownsync -DomainID "TEST_VALUE" -UserID "TEST_VALUE" -XCsrfToken "TEST_VALUE" -ID "TEST_VALUE" -Lang "TEST_VALUE"
            #$TestResult | Should -BeOfType TODO
            #$TestResult.property | Should -Be 0
        }
    }

    Context 'Search-GroAdminLDAP' {
        It 'Test Search-GroAdminLDAP' {
            #$TestResult = Search-GroAdminLDAP -Query "TEST_VALUE" -Limit "TEST_VALUE" -Domain "TEST_VALUE" -Organization "TEST_VALUE" -ShowAll "TEST_VALUE"
            #$TestResult | Should -BeOfType TODO
            #$TestResult.property | Should -Be 0
        }
    }

    Context 'Set-GroAdminLDAPConf' {
        It 'Test Set-GroAdminLDAPConf' {
            #$TestResult = Set-GroAdminLDAPConf -XCsrfToken "TEST_VALUE" -Force "TEST_VALUE" -SetOrgLDAPConfRequest "TEST_VALUE"
            #$TestResult | Should -BeOfType TODO
            #$TestResult.property | Should -Be 0
        }
    }

    Context 'Set-GroAdminOrgLDAPConf' {
        It 'Test Set-GroAdminOrgLDAPConf' {
            #$TestResult = Set-GroAdminOrgLDAPConf -ID "TEST_VALUE" -XCsrfToken "TEST_VALUE" -SetOrgLDAPConfRequest "TEST_VALUE"
            #$TestResult | Should -BeOfType TODO
            #$TestResult.property | Should -Be 0
        }
    }

    Context 'Update-GroAdminAllDomainUsers' {
        It 'Test Update-GroAdminAllDomainUsers' {
            #$TestResult = Update-GroAdminAllDomainUsers -DomainID "TEST_VALUE" -XCsrfToken "TEST_VALUE" -Import "TEST_VALUE" -Lang "TEST_VALUE" -Timeout "TEST_VALUE"
            #$TestResult | Should -BeOfType TODO
            #$TestResult.property | Should -Be 0
        }
    }

    Context 'Update-GroAdminAllUsers' {
        It 'Test Update-GroAdminAllUsers' {
            #$TestResult = Update-GroAdminAllUsers -XCsrfToken "TEST_VALUE" -Import "TEST_VALUE" -Lang "TEST_VALUE" -Timeout "TEST_VALUE"
            #$TestResult | Should -BeOfType TODO
            #$TestResult.property | Should -Be 0
        }
    }

    Context 'Update-GroAdminOrgLDAPUsers' {
        It 'Test Update-GroAdminOrgLDAPUsers' {
            #$TestResult = Update-GroAdminOrgLDAPUsers -ID "TEST_VALUE" -XCsrfToken "TEST_VALUE" -Import "TEST_VALUE" -Lang "TEST_VALUE" -Timeout "TEST_VALUE"
            #$TestResult | Should -BeOfType TODO
            #$TestResult.property | Should -Be 0
        }
    }

}
