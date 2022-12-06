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

.PARAMETER Usernames

.OUTPUTS

PutStoreAccessUserRequest<PSCustomObject>
#>

function Initialize-GroAdminPutStoreAccessUserRequest {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String[]]
        ${Usernames}
    )

    Process {
        'Creating PSCustomObject: GrommunioAdmin => GroAdminPutStoreAccessUserRequest' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "usernames" = ${Usernames}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to PutStoreAccessUserRequest<PSCustomObject>

.DESCRIPTION

Convert from JSON to PutStoreAccessUserRequest<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

PutStoreAccessUserRequest<PSCustomObject>
#>
function ConvertFrom-GroAdminJsonToPutStoreAccessUserRequest {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: GrommunioAdmin => GroAdminPutStoreAccessUserRequest' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in GroAdminPutStoreAccessUserRequest
        $AllProperties = ("usernames")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "usernames"))) { #optional property not found
            $Usernames = $null
        } else {
            $Usernames = $JsonParameters.PSobject.Properties["usernames"].value
        }

        $PSO = [PSCustomObject]@{
            "usernames" = ${Usernames}
        }

        return $PSO
    }

}

