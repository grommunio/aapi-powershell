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
Password of the logged in user (with login) or the device owner (without login). Required when initiating wipe.
.PARAMETER RemoteIP
Source IP of the status update (default is the request origin).
.PARAMETER Status
No description available.
.PARAMETER Time
UNIX timestamp of the status update (default is time of the request)
.OUTPUTS

SetUserDeviceWipeStatusRequest<PSCustomObject>
#>

function Initialize-GroAdminSetUserDeviceWipeStatusRequest {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Password},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${RemoteIP},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Status},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${Time}
    )

    Process {
        'Creating PSCustomObject: GrommunioAdmin => GroAdminSetUserDeviceWipeStatusRequest' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if ($null -eq $Status) {
            throw "invalid value for 'Status', 'Status' cannot be null."
        }


        $PSO = [PSCustomObject]@{
            "password" = ${Password}
            "remoteIP" = ${RemoteIP}
            "status" = ${Status}
            "time" = ${Time}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to SetUserDeviceWipeStatusRequest<PSCustomObject>

.DESCRIPTION

Convert from JSON to SetUserDeviceWipeStatusRequest<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

SetUserDeviceWipeStatusRequest<PSCustomObject>
#>
function ConvertFrom-GroAdminJsonToSetUserDeviceWipeStatusRequest {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: GrommunioAdmin => GroAdminSetUserDeviceWipeStatusRequest' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in GroAdminSetUserDeviceWipeStatusRequest
        $AllProperties = ("password", "remoteIP", "status", "time")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        If ([string]::IsNullOrEmpty($Json) -or $Json -eq "{}") { # empty json
            throw "Error! Empty JSON cannot be serialized due to the required property 'status' missing."
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "status"))) {
            throw "Error! JSON cannot be serialized due to the required property 'status' missing."
        } else {
            $Status = $JsonParameters.PSobject.Properties["status"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "password"))) { #optional property not found
            $Password = $null
        } else {
            $Password = $JsonParameters.PSobject.Properties["password"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "remoteIP"))) { #optional property not found
            $RemoteIP = $null
        } else {
            $RemoteIP = $JsonParameters.PSobject.Properties["remoteIP"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "time"))) { #optional property not found
            $Time = $null
        } else {
            $Time = $JsonParameters.PSobject.Properties["time"].value
        }

        $PSO = [PSCustomObject]@{
            "password" = ${Password}
            "remoteIP" = ${RemoteIP}
            "status" = ${Status}
            "time" = ${Time}
        }

        return $PSO
    }

}

