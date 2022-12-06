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

.PARAMETER Name
New service name. If a service with this name exists, configurations are merged
.OUTPUTS

PatchServiceFilesRequest<PSCustomObject>
#>

function Initialize-GroAdminPatchServiceFilesRequest {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Name}
    )

    Process {
        'Creating PSCustomObject: GrommunioAdmin => GroAdminPatchServiceFilesRequest' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "name" = ${Name}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to PatchServiceFilesRequest<PSCustomObject>

.DESCRIPTION

Convert from JSON to PatchServiceFilesRequest<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

PatchServiceFilesRequest<PSCustomObject>
#>
function ConvertFrom-GroAdminJsonToPatchServiceFilesRequest {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: GrommunioAdmin => GroAdminPatchServiceFilesRequest' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in GroAdminPatchServiceFilesRequest
        $AllProperties = ("name")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "name"))) { #optional property not found
            $Name = $null
        } else {
            $Name = $JsonParameters.PSobject.Properties["name"].value
        }

        $PSO = [PSCustomObject]@{
            "name" = ${Name}
        }

        return $PSO
    }

}

