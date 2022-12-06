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

.PARAMETER Devicetype
No description available.
.PARAMETER Useragent
No description available.
.PARAMETER Firstsynctime
UNIX timestamp of first sync
.PARAMETER Lastupdatetime
UNIX timestamp of last update
.PARAMETER Asversion
No description available.
.PARAMETER FoldersSyncable
Number of folders that can be synced
.PARAMETER FoldersSynced
Number of folders that were actually synced
.OUTPUTS

Data3<PSCustomObject>
#>

function Initialize-GroAdminData3 {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Devicetype},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Useragent},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${Firstsynctime},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${Lastupdatetime},
        [Parameter(Position = 4, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Asversion},
        [Parameter(Position = 5, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${FoldersSyncable},
        [Parameter(Position = 6, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${FoldersSynced}
    )

    Process {
        'Creating PSCustomObject: GrommunioAdmin => GroAdminData3' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "devicetype" = ${Devicetype}
            "useragent" = ${Useragent}
            "firstsynctime" = ${Firstsynctime}
            "lastupdatetime" = ${Lastupdatetime}
            "asversion" = ${Asversion}
            "foldersSyncable" = ${FoldersSyncable}
            "foldersSynced" = ${FoldersSynced}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to Data3<PSCustomObject>

.DESCRIPTION

Convert from JSON to Data3<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

Data3<PSCustomObject>
#>
function ConvertFrom-GroAdminJsonToData3 {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: GrommunioAdmin => GroAdminData3' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in GroAdminData3
        $AllProperties = ("devicetype", "useragent", "firstsynctime", "lastupdatetime", "asversion", "foldersSyncable", "foldersSynced")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "devicetype"))) { #optional property not found
            $Devicetype = $null
        } else {
            $Devicetype = $JsonParameters.PSobject.Properties["devicetype"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "useragent"))) { #optional property not found
            $Useragent = $null
        } else {
            $Useragent = $JsonParameters.PSobject.Properties["useragent"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "firstsynctime"))) { #optional property not found
            $Firstsynctime = $null
        } else {
            $Firstsynctime = $JsonParameters.PSobject.Properties["firstsynctime"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "lastupdatetime"))) { #optional property not found
            $Lastupdatetime = $null
        } else {
            $Lastupdatetime = $JsonParameters.PSobject.Properties["lastupdatetime"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "asversion"))) { #optional property not found
            $Asversion = $null
        } else {
            $Asversion = $JsonParameters.PSobject.Properties["asversion"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "foldersSyncable"))) { #optional property not found
            $FoldersSyncable = $null
        } else {
            $FoldersSyncable = $JsonParameters.PSobject.Properties["foldersSyncable"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "foldersSynced"))) { #optional property not found
            $FoldersSynced = $null
        } else {
            $FoldersSynced = $JsonParameters.PSobject.Properties["foldersSynced"].value
        }

        $PSO = [PSCustomObject]@{
            "devicetype" = ${Devicetype}
            "useragent" = ${Useragent}
            "firstsynctime" = ${Firstsynctime}
            "lastupdatetime" = ${Lastupdatetime}
            "asversion" = ${Asversion}
            "foldersSyncable" = ${FoldersSyncable}
            "foldersSynced" = ${FoldersSynced}
        }

        return $PSO
    }

}

