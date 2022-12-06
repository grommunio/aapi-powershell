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

.PARAMETER User
Default values for user creation
.PARAMETER Domain
Default values for domain creation
.OUTPUTS

PutCreateParamsRequest<PSCustomObject>
#>

function Initialize-GroAdminPutCreateParamsRequest {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${User},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Domain}
    )

    Process {
        'Creating PSCustomObject: GrommunioAdmin => GroAdminPutCreateParamsRequest' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "user" = ${User}
            "domain" = ${Domain}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to PutCreateParamsRequest<PSCustomObject>

.DESCRIPTION

Convert from JSON to PutCreateParamsRequest<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

PutCreateParamsRequest<PSCustomObject>
#>
function ConvertFrom-GroAdminJsonToPutCreateParamsRequest {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: GrommunioAdmin => GroAdminPutCreateParamsRequest' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in GroAdminPutCreateParamsRequest
        $AllProperties = ("user", "domain")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "user"))) { #optional property not found
            $User = $null
        } else {
            $User = $JsonParameters.PSobject.Properties["user"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "domain"))) { #optional property not found
            $Domain = $null
        } else {
            $Domain = $JsonParameters.PSobject.Properties["domain"].value
        }

        $PSO = [PSCustomObject]@{
            "user" = ${User}
            "domain" = ${Domain}
        }

        return $PSO
    }

}

