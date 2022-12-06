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
.PARAMETER Extname
External address of the server
.PARAMETER Users
Number of users on the server
.PARAMETER Domains
Number of domains on the server
.OUTPUTS

Homeserver<PSCustomObject>
#>

function Initialize-GroAdminHomeserver {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${ID},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Hostname},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Extname},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${Users},
        [Parameter(Position = 4, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${Domains}
    )

    Process {
        'Creating PSCustomObject: GrommunioAdmin => GroAdminHomeserver' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "ID" = ${ID}
            "hostname" = ${Hostname}
            "extname" = ${Extname}
            "users" = ${Users}
            "domains" = ${Domains}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to Homeserver<PSCustomObject>

.DESCRIPTION

Convert from JSON to Homeserver<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

Homeserver<PSCustomObject>
#>
function ConvertFrom-GroAdminJsonToHomeserver {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: GrommunioAdmin => GroAdminHomeserver' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in GroAdminHomeserver
        $AllProperties = ("ID", "hostname", "extname", "users", "domains")
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

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "extname"))) { #optional property not found
            $Extname = $null
        } else {
            $Extname = $JsonParameters.PSobject.Properties["extname"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "users"))) { #optional property not found
            $Users = $null
        } else {
            $Users = $JsonParameters.PSobject.Properties["users"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "domains"))) { #optional property not found
            $Domains = $null
        } else {
            $Domains = $JsonParameters.PSobject.Properties["domains"].value
        }

        $PSO = [PSCustomObject]@{
            "ID" = ${ID}
            "hostname" = ${Hostname}
            "extname" = ${Extname}
            "users" = ${Users}
            "domains" = ${Domains}
        }

        return $PSO
    }

}

