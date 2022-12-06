#
# grommunio Admin API
# grommunio administration REST API
# Version: 1.9.2
#

<#
.SYNOPSIS

Enum AuthBackendSelection.

.DESCRIPTION

No description available.
#>

enum AuthBackendSelection {
    # enum value: "always_mysql"
    always_mysql
    # enum value: "always_ldap"
    always_ldap
    # enum value: "externid"
    externid
}

