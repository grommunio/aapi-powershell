#
# grommunio Admin API
# grommunio administration REST API
# Version: 1.9.2
#

<#
.SYNOPSIS

Enum SrcAuth.

.DESCRIPTION

Type auf authentication to use
#>

enum SrcAuth {
    # enum value: "password"
    password
    # enum value: "kerberos_v5"
    kerberos_v5
    # enum value: "kerberos"
    kerberos
    # enum value: "kerberos_v4"
    kerberos_v4
    # enum value: "gssapi"
    gssapi
    # enum value: "cram-md5"
    cram_md5
    # enum value: "otp"
    otp
    # enum value: "ntlm"
    ntlm
    # enum value: "msn"
    msn
    # enum value: "ssh"
    ssh
    # enum value: "any"
    any
}

