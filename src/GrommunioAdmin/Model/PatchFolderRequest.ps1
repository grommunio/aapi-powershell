#
# grommunio Admin API
# grommunio administration REST API
# Version: 1.19.0
#

<#
.SYNOPSIS

No summary available.

.DESCRIPTION

No description available.

.PARAMETER Displayname
Name of the folder
.PARAMETER Container
Container class
.PARAMETER Comment
No description available.
.PARAMETER SyncToMobile
No description available.
.OUTPUTS

PatchFolderRequest<PSCustomObject>
#>

function Initialize-GroAdminPatchFolderRequest {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Displayname},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("IPF.Note", "IPF.Contact", "IPF.Appointment", "IPF.Stickynote", "IPF.Task")]
        [String]
        ${Container},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Comment},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${SyncToMobile}
    )

    Process {
        'Creating PSCustomObject: GrommunioAdmin => GroAdminPatchFolderRequest' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            'displayname' = ${Displayname}
            'container' = ${Container}
            'comment' = ${Comment}
            'syncToMobile' = ${SyncToMobile}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to PatchFolderRequest<PSCustomObject>

.DESCRIPTION

Convert from JSON to PatchFolderRequest<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

PatchFolderRequest<PSCustomObject>
#>
function ConvertFrom-GroAdminJsonToPatchFolderRequest {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: GrommunioAdmin => GroAdminPatchFolderRequest' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in GroAdminPatchFolderRequest
        $AllProperties = ('displayname', 'container', 'comment', 'syncToMobile')
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match 'displayname'))) { #optional property not found
            $Displayname = $null
        } else {
            $Displayname = $JsonParameters.PSobject.Properties['displayname'].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match 'container'))) { #optional property not found
            $Container = $null
        } else {
            $Container = $JsonParameters.PSobject.Properties['container'].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match 'comment'))) { #optional property not found
            $Comment = $null
        } else {
            $Comment = $JsonParameters.PSobject.Properties['comment'].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match 'syncToMobile'))) { #optional property not found
            $SyncToMobile = $null
        } else {
            $SyncToMobile = $JsonParameters.PSobject.Properties['syncToMobile'].value
        }

        $PSO = [PSCustomObject]@{
            'displayname' = ${Displayname}
            'container' = ${Container}
            'comment' = ${Comment}
            'syncToMobile' = ${SyncToMobile}
        }

        return $PSO
    }

}

