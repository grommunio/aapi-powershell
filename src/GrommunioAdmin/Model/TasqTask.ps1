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
.PARAMETER Command
Task command
.PARAMETER State
No description available.
.PARAMETER Created
Date string with time
.PARAMETER Updated
Date string with time
.PARAMETER Message
Status message
.PARAMETER Params
Task specific parameters
.OUTPUTS

TasqTask<PSCustomObject>
#>

function Initialize-GroAdminTasqTask {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${ID},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Command},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${State},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true)]
        [ValidatePattern("^\d{4}-\d{2}-\d{2} \d{2}:\d{2}:\d{2}$")]
        [String]
        ${Created},
        [Parameter(Position = 4, ValueFromPipelineByPropertyName = $true)]
        [ValidatePattern("^\d{4}-\d{2}-\d{2} \d{2}:\d{2}:\d{2}$")]
        [String]
        ${Updated},
        [Parameter(Position = 5, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Message},
        [Parameter(Position = 6, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Params}
    )

    Process {
        'Creating PSCustomObject: GrommunioAdmin => GroAdminTasqTask' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "ID" = ${ID}
            "command" = ${Command}
            "state" = ${State}
            "created" = ${Created}
            "updated" = ${Updated}
            "message" = ${Message}
            "params" = ${Params}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to TasqTask<PSCustomObject>

.DESCRIPTION

Convert from JSON to TasqTask<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

TasqTask<PSCustomObject>
#>
function ConvertFrom-GroAdminJsonToTasqTask {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: GrommunioAdmin => GroAdminTasqTask' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in GroAdminTasqTask
        $AllProperties = ("ID", "command", "state", "created", "updated", "message", "params")
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

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "command"))) { #optional property not found
            $Command = $null
        } else {
            $Command = $JsonParameters.PSobject.Properties["command"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "state"))) { #optional property not found
            $State = $null
        } else {
            $State = $JsonParameters.PSobject.Properties["state"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "created"))) { #optional property not found
            $Created = $null
        } else {
            $Created = $JsonParameters.PSobject.Properties["created"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "updated"))) { #optional property not found
            $Updated = $null
        } else {
            $Updated = $JsonParameters.PSobject.Properties["updated"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "message"))) { #optional property not found
            $Message = $null
        } else {
            $Message = $JsonParameters.PSobject.Properties["message"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "params"))) { #optional property not found
            $Params = $null
        } else {
            $Params = $JsonParameters.PSobject.Properties["params"].value
        }

        $PSO = [PSCustomObject]@{
            "ID" = ${ID}
            "command" = ${Command}
            "state" = ${State}
            "created" = ${Created}
            "updated" = ${Updated}
            "message" = ${Message}
            "params" = ${Params}
        }

        return $PSO
    }

}

