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

.PARAMETER State
No description available.
.PARAMETER Substate
No description available.
.PARAMETER Description
No description available.
.PARAMETER Autostart
State of the unit file
.PARAMETER Since
Date string with time
.PARAMETER Name
Name of the service
.PARAMETER Unit
Name of the systemd unit. Required for action endpoints.
.OUTPUTS

Service<PSCustomObject>
#>

function Initialize-GroAdminService {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${State},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Substate},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Description},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Autostart},
        [Parameter(Position = 4, ValueFromPipelineByPropertyName = $true)]
        [ValidatePattern("^\d{4}-\d{2}-\d{2} \d{2}:\d{2}:\d{2}$")]
        [String]
        ${Since},
        [Parameter(Position = 5, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Name},
        [Parameter(Position = 6, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Unit}
    )

    Process {
        'Creating PSCustomObject: GrommunioAdmin => GroAdminService' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "state" = ${State}
            "substate" = ${Substate}
            "description" = ${Description}
            "autostart" = ${Autostart}
            "since" = ${Since}
            "name" = ${Name}
            "unit" = ${Unit}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to Service<PSCustomObject>

.DESCRIPTION

Convert from JSON to Service<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

Service<PSCustomObject>
#>
function ConvertFrom-GroAdminJsonToService {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: GrommunioAdmin => GroAdminService' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in GroAdminService
        $AllProperties = ("state", "substate", "description", "autostart", "since", "name", "unit")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "state"))) { #optional property not found
            $State = $null
        } else {
            $State = $JsonParameters.PSobject.Properties["state"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "substate"))) { #optional property not found
            $Substate = $null
        } else {
            $Substate = $JsonParameters.PSobject.Properties["substate"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "description"))) { #optional property not found
            $Description = $null
        } else {
            $Description = $JsonParameters.PSobject.Properties["description"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "autostart"))) { #optional property not found
            $Autostart = $null
        } else {
            $Autostart = $JsonParameters.PSobject.Properties["autostart"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "since"))) { #optional property not found
            $Since = $null
        } else {
            $Since = $JsonParameters.PSobject.Properties["since"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "name"))) { #optional property not found
            $Name = $null
        } else {
            $Name = $JsonParameters.PSobject.Properties["name"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "unit"))) { #optional property not found
            $Unit = $null
        } else {
            $Unit = $JsonParameters.PSobject.Properties["unit"].value
        }

        $PSO = [PSCustomObject]@{
            "state" = ${State}
            "substate" = ${Substate}
            "description" = ${Description}
            "autostart" = ${Autostart}
            "since" = ${Since}
            "name" = ${Name}
            "unit" = ${Unit}
        }

        return $PSO
    }

}

