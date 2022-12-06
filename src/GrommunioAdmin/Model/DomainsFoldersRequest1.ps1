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

.PARAMETER Displayname
Name of the folder
.PARAMETER Container
No description available.
.PARAMETER Comment
No description available.
.OUTPUTS

DomainsFoldersRequest1<PSCustomObject>
#>

function Initialize-GroAdminDomainsFoldersRequest1 {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Displayname},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Container},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Comment}
    )

    Process {
        'Creating PSCustomObject: GrommunioAdmin => GroAdminDomainsFoldersRequest1' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "displayname" = ${Displayname}
            "container" = ${Container}
            "comment" = ${Comment}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to DomainsFoldersRequest1<PSCustomObject>

.DESCRIPTION

Convert from JSON to DomainsFoldersRequest1<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

DomainsFoldersRequest1<PSCustomObject>
#>
function ConvertFrom-GroAdminJsonToDomainsFoldersRequest1 {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: GrommunioAdmin => GroAdminDomainsFoldersRequest1' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in GroAdminDomainsFoldersRequest1
        $AllProperties = ("displayname", "container", "comment")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "displayname"))) { #optional property not found
            $Displayname = $null
        } else {
            $Displayname = $JsonParameters.PSobject.Properties["displayname"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "container"))) { #optional property not found
            $Container = $null
        } else {
            $Container = $JsonParameters.PSobject.Properties["container"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "comment"))) { #optional property not found
            $Comment = $null
        } else {
            $Comment = $JsonParameters.PSobject.Properties["comment"].value
        }

        $PSO = [PSCustomObject]@{
            "displayname" = ${Displayname}
            "container" = ${Container}
            "comment" = ${Comment}
        }

        return $PSO
    }

}

