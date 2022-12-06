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
LDAP object ID of the person
.PARAMETER Name
Display name of the person
.PARAMETER Email
E-mail address of the person
.PARAMETER Type
Type of the entry (either 'user' or 'contact')
.PARAMETER VarError
Why the entry cannot be imported (showAll=true only)
.OUTPUTS

Data6<PSCustomObject>
#>

function Initialize-GroAdminData6 {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${ID},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Name},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Email},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Type},
        [Parameter(Position = 4, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${VarError}
    )

    Process {
        'Creating PSCustomObject: GrommunioAdmin => GroAdminData6' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "ID" = ${ID}
            "name" = ${Name}
            "email" = ${Email}
            "type" = ${Type}
            "error" = ${VarError}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to Data6<PSCustomObject>

.DESCRIPTION

Convert from JSON to Data6<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

Data6<PSCustomObject>
#>
function ConvertFrom-GroAdminJsonToData6 {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: GrommunioAdmin => GroAdminData6' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in GroAdminData6
        $AllProperties = ("ID", "name", "email", "type", "error")
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

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "name"))) { #optional property not found
            $Name = $null
        } else {
            $Name = $JsonParameters.PSobject.Properties["name"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "email"))) { #optional property not found
            $Email = $null
        } else {
            $Email = $JsonParameters.PSobject.Properties["email"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "type"))) { #optional property not found
            $Type = $null
        } else {
            $Type = $JsonParameters.PSobject.Properties["type"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "error"))) { #optional property not found
            $VarError = $null
        } else {
            $VarError = $JsonParameters.PSobject.Properties["error"].value
        }

        $PSO = [PSCustomObject]@{
            "ID" = ${ID}
            "name" = ${Name}
            "email" = ${Email}
            "type" = ${Type}
            "error" = ${VarError}
        }

        return $PSO
    }

}

