#
# grommunio Admin API
# grommunio administration REST API
# Version: 1.19.0
#

<#
.SYNOPSIS

Enum UserStatus.

.DESCRIPTION

User status (0=Normal, 1=Suspended, 3=Deleted, 4=Shared Mailbox, 5=Contact)
#>

enum UserStatus {
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
    # enum value: "5"
    NUMBER_5
}

