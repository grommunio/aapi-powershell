#
# grommunio Admin API
# grommunio administration REST API
# Version: 1.9.2
#

<#
.SYNOPSIS

No summary available.

.DESCRIPTION

No description available.

.PARAMETER Username
No description available.
.PARAMETER RealName
No description available.
.OUTPUTS

ProfileResponseUser<PSCustomObject>
#>

function Initialize-GroAdminProfileResponseUser {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Username},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${RealName}
    )

    Process {
        'Creating PSCustomObject: GrommunioAdmin => GroAdminProfileResponseUser' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "username" = ${Username}
            "realName" = ${RealName}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to ProfileResponseUser<PSCustomObject>

.DESCRIPTION

Convert from JSON to ProfileResponseUser<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

ProfileResponseUser<PSCustomObject>
#>
function ConvertFrom-GroAdminJsonToProfileResponseUser {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: GrommunioAdmin => GroAdminProfileResponseUser' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in GroAdminProfileResponseUser
        $AllProperties = ("username", "realName")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "username"))) { #optional property not found
            $Username = $null
        } else {
            $Username = $JsonParameters.PSobject.Properties["username"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "realName"))) { #optional property not found
            $RealName = $null
        } else {
            $RealName = $JsonParameters.PSobject.Properties["realName"].value
        }

        $PSO = [PSCustomObject]@{
            "username" = ${Username}
            "realName" = ${RealName}
        }

        return $PSO
    }

}

