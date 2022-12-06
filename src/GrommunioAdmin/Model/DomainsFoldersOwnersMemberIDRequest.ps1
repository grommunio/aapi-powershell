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

.PARAMETER Permissions
Bit mask of permissions to set for the user (defaults to folder owner)
.OUTPUTS

DomainsFoldersOwnersMemberIDRequest<PSCustomObject>
#>

function Initialize-GroAdminDomainsFoldersOwnersMemberIDRequest {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [Int32]
        ${Permissions}
    )

    Process {
        'Creating PSCustomObject: GrommunioAdmin => GroAdminDomainsFoldersOwnersMemberIDRequest' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if ($null -eq $Permissions) {
            throw "invalid value for 'Permissions', 'Permissions' cannot be null."
        }


        $PSO = [PSCustomObject]@{
            "permissions" = ${Permissions}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to DomainsFoldersOwnersMemberIDRequest<PSCustomObject>

.DESCRIPTION

Convert from JSON to DomainsFoldersOwnersMemberIDRequest<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

DomainsFoldersOwnersMemberIDRequest<PSCustomObject>
#>
function ConvertFrom-GroAdminJsonToDomainsFoldersOwnersMemberIDRequest {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: GrommunioAdmin => GroAdminDomainsFoldersOwnersMemberIDRequest' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in GroAdminDomainsFoldersOwnersMemberIDRequest
        $AllProperties = ("permissions")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        If ([string]::IsNullOrEmpty($Json) -or $Json -eq "{}") { # empty json
            throw "Error! Empty JSON cannot be serialized due to the required property 'permissions' missing."
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "permissions"))) {
            throw "Error! JSON cannot be serialized due to the required property 'permissions' missing."
        } else {
            $Permissions = $JsonParameters.PSobject.Properties["permissions"].value
        }

        $PSO = [PSCustomObject]@{
            "permissions" = ${Permissions}
        }

        return $PSO
    }

}

