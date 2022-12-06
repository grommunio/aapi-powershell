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

.PARAMETER Folderid
No description available.
.PARAMETER Displayname
No description available.
.PARAMETER Comment
No description available.
.PARAMETER Creationtime
Date string with time
.PARAMETER Container
No description available.
.OUTPUTS

PublicFolder<PSCustomObject>
#>

function Initialize-GroAdminPublicFolder {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Folderid},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Displayname},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Comment},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true)]
        [ValidatePattern("^\d{4}-\d{2}-\d{2} \d{2}:\d{2}:\d{2}$")]
        [String]
        ${Creationtime},
        [Parameter(Position = 4, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Container}
    )

    Process {
        'Creating PSCustomObject: GrommunioAdmin => GroAdminPublicFolder' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "folderid" = ${Folderid}
            "displayname" = ${Displayname}
            "comment" = ${Comment}
            "creationtime" = ${Creationtime}
            "container" = ${Container}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to PublicFolder<PSCustomObject>

.DESCRIPTION

Convert from JSON to PublicFolder<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

PublicFolder<PSCustomObject>
#>
function ConvertFrom-GroAdminJsonToPublicFolder {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: GrommunioAdmin => GroAdminPublicFolder' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in GroAdminPublicFolder
        $AllProperties = ("folderid", "displayname", "comment", "creationtime", "container")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "folderid"))) { #optional property not found
            $Folderid = $null
        } else {
            $Folderid = $JsonParameters.PSobject.Properties["folderid"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "displayname"))) { #optional property not found
            $Displayname = $null
        } else {
            $Displayname = $JsonParameters.PSobject.Properties["displayname"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "comment"))) { #optional property not found
            $Comment = $null
        } else {
            $Comment = $JsonParameters.PSobject.Properties["comment"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "creationtime"))) { #optional property not found
            $Creationtime = $null
        } else {
            $Creationtime = $JsonParameters.PSobject.Properties["creationtime"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "container"))) { #optional property not found
            $Container = $null
        } else {
            $Container = $JsonParameters.PSobject.Properties["container"].value
        }

        $PSO = [PSCustomObject]@{
            "folderid" = ${Folderid}
            "displayname" = ${Displayname}
            "comment" = ${Comment}
            "creationtime" = ${Creationtime}
            "container" = ${Container}
        }

        return $PSO
    }

}

