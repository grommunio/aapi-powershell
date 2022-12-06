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
.PARAMETER ExternalAudience
No description available.
.PARAMETER StartTime
Date string with time
.PARAMETER EndTime
Date string with time
.PARAMETER InternalSubject
Subject for internal out-of-office reply
.PARAMETER InternalReply
Internal out-of-office reply body
.PARAMETER ExternalSubject
Subject for external out-of-office reply
.PARAMETER ExternalReply
External out-of-office reply body
.OUTPUTS

SetOofSizeRequest<PSCustomObject>
#>

function Initialize-GroAdminSetOofSizeRequest {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${State},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${ExternalAudience},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [ValidatePattern("^\d{4}-\d{2}-\d{2} \d{2}:\d{2}:\d{2}$")]
        [String]
        ${StartTime},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true)]
        [ValidatePattern("^\d{4}-\d{2}-\d{2} \d{2}:\d{2}:\d{2}$")]
        [String]
        ${EndTime},
        [Parameter(Position = 4, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${InternalSubject} = "Out of Office",
        [Parameter(Position = 5, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${InternalReply},
        [Parameter(Position = 6, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${ExternalSubject} = "Out of Office",
        [Parameter(Position = 7, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${ExternalReply}
    )

    Process {
        'Creating PSCustomObject: GrommunioAdmin => GroAdminSetOofSizeRequest' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "state" = ${State}
            "externalAudience" = ${ExternalAudience}
            "startTime" = ${StartTime}
            "endTime" = ${EndTime}
            "internalSubject" = ${InternalSubject}
            "internalReply" = ${InternalReply}
            "externalSubject" = ${ExternalSubject}
            "externalReply" = ${ExternalReply}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to SetOofSizeRequest<PSCustomObject>

.DESCRIPTION

Convert from JSON to SetOofSizeRequest<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

SetOofSizeRequest<PSCustomObject>
#>
function ConvertFrom-GroAdminJsonToSetOofSizeRequest {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: GrommunioAdmin => GroAdminSetOofSizeRequest' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in GroAdminSetOofSizeRequest
        $AllProperties = ("state", "externalAudience", "startTime", "endTime", "internalSubject", "internalReply", "externalSubject", "externalReply")
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

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "externalAudience"))) { #optional property not found
            $ExternalAudience = $null
        } else {
            $ExternalAudience = $JsonParameters.PSobject.Properties["externalAudience"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "startTime"))) { #optional property not found
            $StartTime = $null
        } else {
            $StartTime = $JsonParameters.PSobject.Properties["startTime"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "endTime"))) { #optional property not found
            $EndTime = $null
        } else {
            $EndTime = $JsonParameters.PSobject.Properties["endTime"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "internalSubject"))) { #optional property not found
            $InternalSubject = $null
        } else {
            $InternalSubject = $JsonParameters.PSobject.Properties["internalSubject"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "internalReply"))) { #optional property not found
            $InternalReply = $null
        } else {
            $InternalReply = $JsonParameters.PSobject.Properties["internalReply"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "externalSubject"))) { #optional property not found
            $ExternalSubject = $null
        } else {
            $ExternalSubject = $JsonParameters.PSobject.Properties["externalSubject"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "externalReply"))) { #optional property not found
            $ExternalReply = $null
        } else {
            $ExternalReply = $JsonParameters.PSobject.Properties["externalReply"].value
        }

        $PSO = [PSCustomObject]@{
            "state" = ${State}
            "externalAudience" = ${ExternalAudience}
            "startTime" = ${StartTime}
            "endTime" = ${EndTime}
            "internalSubject" = ${InternalSubject}
            "internalReply" = ${InternalReply}
            "externalSubject" = ${ExternalSubject}
            "externalReply" = ${ExternalReply}
        }

        return $PSO
    }

}

