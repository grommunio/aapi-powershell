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
.PARAMETER ParentID
ID of the parent folder
.OUTPUTS

PostFoldersRequest<PSCustomObject>
#>

function Initialize-GroAdminPostFoldersRequest {
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
        ${Comment},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${ParentID} = "0"
    )

    Process {
        'Creating PSCustomObject: GrommunioAdmin => GroAdminPostFoldersRequest' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if ($null -eq $Displayname) {
            throw "invalid value for 'Displayname', 'Displayname' cannot be null."
        }

        if ($null -eq $Container) {
            throw "invalid value for 'Container', 'Container' cannot be null."
        }

        if ($null -eq $Comment) {
            throw "invalid value for 'Comment', 'Comment' cannot be null."
        }


        $PSO = [PSCustomObject]@{
            "displayname" = ${Displayname}
            "container" = ${Container}
            "comment" = ${Comment}
            "parentID" = ${ParentID}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to PostFoldersRequest<PSCustomObject>

.DESCRIPTION

Convert from JSON to PostFoldersRequest<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

PostFoldersRequest<PSCustomObject>
#>
function ConvertFrom-GroAdminJsonToPostFoldersRequest {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: GrommunioAdmin => GroAdminPostFoldersRequest' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in GroAdminPostFoldersRequest
        $AllProperties = ("displayname", "container", "comment", "parentID")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        If ([string]::IsNullOrEmpty($Json) -or $Json -eq "{}") { # empty json
            throw "Error! Empty JSON cannot be serialized due to the required property 'displayname' missing."
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "displayname"))) {
            throw "Error! JSON cannot be serialized due to the required property 'displayname' missing."
        } else {
            $Displayname = $JsonParameters.PSobject.Properties["displayname"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "container"))) {
            throw "Error! JSON cannot be serialized due to the required property 'container' missing."
        } else {
            $Container = $JsonParameters.PSobject.Properties["container"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "comment"))) {
            throw "Error! JSON cannot be serialized due to the required property 'comment' missing."
        } else {
            $Comment = $JsonParameters.PSobject.Properties["comment"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "parentID"))) { #optional property not found
            $ParentID = $null
        } else {
            $ParentID = $JsonParameters.PSobject.Properties["parentID"].value
        }

        $PSO = [PSCustomObject]@{
            "displayname" = ${Displayname}
            "container" = ${Container}
            "comment" = ${Comment}
            "parentID" = ${ParentID}
        }

        return $PSO
    }

}

