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

.PARAMETER Message
No description available.
.OUTPUTS

DomainsFoldersResponse1<PSCustomObject>
#>

function Initialize-GroAdminDomainsFoldersResponse1 {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Message}
    )

    Process {
        'Creating PSCustomObject: GrommunioAdmin => GroAdminDomainsFoldersResponse1' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "message" = ${Message}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to DomainsFoldersResponse1<PSCustomObject>

.DESCRIPTION

Convert from JSON to DomainsFoldersResponse1<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

DomainsFoldersResponse1<PSCustomObject>
#>
function ConvertFrom-GroAdminJsonToDomainsFoldersResponse1 {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: GrommunioAdmin => GroAdminDomainsFoldersResponse1' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in GroAdminDomainsFoldersResponse1
        $AllProperties = ("message")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "message"))) { #optional property not found
            $Message = $null
        } else {
            $Message = $JsonParameters.PSobject.Properties["message"].value
        }

        $PSO = [PSCustomObject]@{
            "message" = ${Message}
        }

        return $PSO
    }

}

