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

.PARAMETER Password
Password of the user requesting the wipe
.OUTPUTS

DomainsUsersSyncDeviceIDWipeRequest<PSCustomObject>
#>

function Initialize-GroAdminDomainsUsersSyncDeviceIDWipeRequest {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Password}
    )

    Process {
        'Creating PSCustomObject: GrommunioAdmin => GroAdminDomainsUsersSyncDeviceIDWipeRequest' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "password" = ${Password}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to DomainsUsersSyncDeviceIDWipeRequest<PSCustomObject>

.DESCRIPTION

Convert from JSON to DomainsUsersSyncDeviceIDWipeRequest<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

DomainsUsersSyncDeviceIDWipeRequest<PSCustomObject>
#>
function ConvertFrom-GroAdminJsonToDomainsUsersSyncDeviceIDWipeRequest {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: GrommunioAdmin => GroAdminDomainsUsersSyncDeviceIDWipeRequest' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in GroAdminDomainsUsersSyncDeviceIDWipeRequest
        $AllProperties = ("password")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "password"))) { #optional property not found
            $Password = $null
        } else {
            $Password = $JsonParameters.PSobject.Properties["password"].value
        }

        $PSO = [PSCustomObject]@{
            "password" = ${Password}
        }

        return $PSO
    }

}

