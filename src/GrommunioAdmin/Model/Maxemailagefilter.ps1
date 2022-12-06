#
# grommunio Admin API
# grommunio administration REST API
# Version: 1.9.2
#

<#
.SYNOPSIS

Enum Maxemailagefilter.

.DESCRIPTION

The email age limit for synchronization (0=all, 1=1 day, 2=3 days, 3=1 week, 4=2 weeks, 5=1 month)
#>

enum Maxemailagefilter {
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

