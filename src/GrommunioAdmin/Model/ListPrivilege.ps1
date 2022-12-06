#
# grommunio Admin API
# grommunio administration REST API
# Version: 1.9.2
#

<#
.SYNOPSIS

Enum ListPrivilege.

.DESCRIPTION

Sender privilege of list (0=All, 1=Internal, 2=Domain, 3=Specific, 4=Outgoing)
#>

enum ListPrivilege {
    # enum value: "0"
    NUMBER_0
    # enum value: "1"
    NUMBER_1
    # enum value: "2"
    NUMBER_2
    # enum value: "3"
    NUMBER_3
    # enum value: "4"
    NUMBER_4
}

