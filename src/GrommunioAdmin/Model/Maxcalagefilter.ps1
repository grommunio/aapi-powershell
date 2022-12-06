#
# grommunio Admin API
# grommunio administration REST API
# Version: 1.9.2
#

<#
.SYNOPSIS

Enum Maxcalagefilter.

.DESCRIPTION

The maximum number of calendar days that can be synchronized (0=unlimited, 4=2 weeks, 5=1 month, 6=3 months, 7=6 months)
#>

enum Maxcalagefilter {
    # enum value: "0"
    NUMBER_0
    # enum value: "4"
    NUMBER_4
    # enum value: "5"
    NUMBER_5
    # enum value: "6"
    NUMBER_6
    # enum value: "7"
    NUMBER_7
}

