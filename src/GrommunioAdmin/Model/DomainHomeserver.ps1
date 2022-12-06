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

.PARAMETER ID
Unique ID of the object
.PARAMETER Hostname
Internal hostname of the server
.OUTPUTS

DomainHomeserver<PSCustomObject>
#>

function Initialize-GroAdminDomainHomeserver {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${ID},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Hostname}
    )

    Process {
        'Creating PSCustomObject: GrommunioAdmin => GroAdminDomainHomeserver' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "ID" = ${ID}
            "hostname" = ${Hostname}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to DomainHomeserver<PSCustomObject>

.DESCRIPTION

Convert from JSON to DomainHomeserver<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

DomainHomeserver<PSCustomObject>
#>
function ConvertFrom-GroAdminJsonToDomainHomeserver {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: GrommunioAdmin => GroAdminDomainHomeserver' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in GroAdminDomainHomeserver
        $AllProperties = ("ID", "hostname")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "ID"))) { #optional property not found
            $ID = $null
        } else {
            $ID = $JsonParameters.PSobject.Properties["ID"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "hostname"))) { #optional property not found
            $Hostname = $null
        } else {
            $Hostname = $JsonParameters.PSobject.Properties["hostname"].value
        }

        $PSO = [PSCustomObject]@{
            "ID" = ${ID}
            "hostname" = ${Hostname}
        }

        return $PSO
    }

}

