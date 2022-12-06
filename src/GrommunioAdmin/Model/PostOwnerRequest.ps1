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
Username (e-mail address) to add to member list
.PARAMETER Permissions
Bit mask of permissions to grant the user (defaults to folder owner)
.OUTPUTS

PostOwnerRequest<PSCustomObject>
#>

function Initialize-GroAdminPostOwnerRequest {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Username},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${Permissions}
    )

    Process {
        'Creating PSCustomObject: GrommunioAdmin => GroAdminPostOwnerRequest' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if ($null -eq $Username) {
            throw "invalid value for 'Username', 'Username' cannot be null."
        }


        $PSO = [PSCustomObject]@{
            "username" = ${Username}
            "permissions" = ${Permissions}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to PostOwnerRequest<PSCustomObject>

.DESCRIPTION

Convert from JSON to PostOwnerRequest<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

PostOwnerRequest<PSCustomObject>
#>
function ConvertFrom-GroAdminJsonToPostOwnerRequest {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: GrommunioAdmin => GroAdminPostOwnerRequest' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in GroAdminPostOwnerRequest
        $AllProperties = ("username", "permissions")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        If ([string]::IsNullOrEmpty($Json) -or $Json -eq "{}") { # empty json
            throw "Error! Empty JSON cannot be serialized due to the required property 'username' missing."
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "username"))) {
            throw "Error! JSON cannot be serialized due to the required property 'username' missing."
        } else {
            $Username = $JsonParameters.PSobject.Properties["username"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "permissions"))) { #optional property not found
            $Permissions = $null
        } else {
            $Permissions = $JsonParameters.PSobject.Properties["permissions"].value
        }

        $PSO = [PSCustomObject]@{
            "username" = ${Username}
            "permissions" = ${Permissions}
        }

        return $PSO
    }

}

