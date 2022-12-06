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
Mail address of the user to grant access to
.OUTPUTS

PostStoreAccessUserRequest<PSCustomObject>
#>

function Initialize-GroAdminPostStoreAccessUserRequest {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Username}
    )

    Process {
        'Creating PSCustomObject: GrommunioAdmin => GroAdminPostStoreAccessUserRequest' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "username" = ${Username}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to PostStoreAccessUserRequest<PSCustomObject>

.DESCRIPTION

Convert from JSON to PostStoreAccessUserRequest<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

PostStoreAccessUserRequest<PSCustomObject>
#>
function ConvertFrom-GroAdminJsonToPostStoreAccessUserRequest {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: GrommunioAdmin => GroAdminPostStoreAccessUserRequest' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in GroAdminPostStoreAccessUserRequest
        $AllProperties = ("username")
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

        $PSO = [PSCustomObject]@{
            "username" = ${Username}
        }

        return $PSO
    }

}

