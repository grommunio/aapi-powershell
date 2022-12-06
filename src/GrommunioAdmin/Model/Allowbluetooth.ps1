#
# grommunio Admin API
# grommunio administration REST API
# Version: 1.9.2
#

<#
.SYNOPSIS

Enum Allowbluetooth.

.DESCRIPTION

Whether Bluetooth and hands-free profiles are allowed on the device (0=disabled, 1=allow only HFP, 2=allow)
#>

enum Allowbluetooth {
    # enum value: "0"
    NUMBER_0
    # enum value: "1"
    NUMBER_1
    # enum value: "2"
    NUMBER_2
}

