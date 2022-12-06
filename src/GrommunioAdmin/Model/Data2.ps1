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

.PARAMETER VarPid
Process ID
.PARAMETER Ip
IP address of the device
.PARAMETER User
No description available.
.PARAMETER Start
UNIX timestamp of process start
.PARAMETER Devtype
No description available.
.PARAMETER Devid
No description available.
.PARAMETER Devagent
No description available.
.PARAMETER Command
No description available.
.PARAMETER Ended
UNIX timestamp of process end or 0 if still running
.PARAMETER Push
No description available.
.PARAMETER Addinfo
Additional information about the process
.PARAMETER Update
UNIX timestamp of last update
.OUTPUTS

Data2<PSCustomObject>
#>

function Initialize-GroAdminData2 {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${VarPid},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Ip},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${User},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${Start},
        [Parameter(Position = 4, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Devtype},
        [Parameter(Position = 5, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Devid},
        [Parameter(Position = 6, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Devagent},
        [Parameter(Position = 7, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${Command},
        [Parameter(Position = 8, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${Ended},
        [Parameter(Position = 9, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${Push},
        [Parameter(Position = 10, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Addinfo},
        [Parameter(Position = 11, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${Update}
    )

    Process {
        'Creating PSCustomObject: GrommunioAdmin => GroAdminData2' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "pid" = ${VarPid}
            "ip" = ${Ip}
            "user" = ${User}
            "start" = ${Start}
            "devtype" = ${Devtype}
            "devid" = ${Devid}
            "devagent" = ${Devagent}
            "command" = ${Command}
            "ended" = ${Ended}
            "push" = ${Push}
            "addinfo" = ${Addinfo}
            "update" = ${Update}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to Data2<PSCustomObject>

.DESCRIPTION

Convert from JSON to Data2<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

Data2<PSCustomObject>
#>
function ConvertFrom-GroAdminJsonToData2 {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: GrommunioAdmin => GroAdminData2' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in GroAdminData2
        $AllProperties = ("pid", "ip", "user", "start", "devtype", "devid", "devagent", "command", "ended", "push", "addinfo", "update")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "pid"))) { #optional property not found
            $VarPid = $null
        } else {
            $VarPid = $JsonParameters.PSobject.Properties["pid"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "ip"))) { #optional property not found
            $Ip = $null
        } else {
            $Ip = $JsonParameters.PSobject.Properties["ip"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "user"))) { #optional property not found
            $User = $null
        } else {
            $User = $JsonParameters.PSobject.Properties["user"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "start"))) { #optional property not found
            $Start = $null
        } else {
            $Start = $JsonParameters.PSobject.Properties["start"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "devtype"))) { #optional property not found
            $Devtype = $null
        } else {
            $Devtype = $JsonParameters.PSobject.Properties["devtype"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "devid"))) { #optional property not found
            $Devid = $null
        } else {
            $Devid = $JsonParameters.PSobject.Properties["devid"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "devagent"))) { #optional property not found
            $Devagent = $null
        } else {
            $Devagent = $JsonParameters.PSobject.Properties["devagent"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "command"))) { #optional property not found
            $Command = $null
        } else {
            $Command = $JsonParameters.PSobject.Properties["command"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "ended"))) { #optional property not found
            $Ended = $null
        } else {
            $Ended = $JsonParameters.PSobject.Properties["ended"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "push"))) { #optional property not found
            $Push = $null
        } else {
            $Push = $JsonParameters.PSobject.Properties["push"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "addinfo"))) { #optional property not found
            $Addinfo = $null
        } else {
            $Addinfo = $JsonParameters.PSobject.Properties["addinfo"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "update"))) { #optional property not found
            $Update = $null
        } else {
            $Update = $JsonParameters.PSobject.Properties["update"].value
        }

        $PSO = [PSCustomObject]@{
            "pid" = ${VarPid}
            "ip" = ${Ip}
            "user" = ${User}
            "start" = ${Start}
            "devtype" = ${Devtype}
            "devid" = ${Devid}
            "devagent" = ${Devagent}
            "command" = ${Command}
            "ended" = ${Ended}
            "push" = ${Push}
            "addinfo" = ${Addinfo}
            "update" = ${Update}
        }

        return $PSO
    }

}

