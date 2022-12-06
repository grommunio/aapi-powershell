#
# grommunio Admin API
# grommunio administration REST API
# Version: 1.9.2
#

<#
.SYNOPSIS

No summary available.

.DESCRIPTION

Filter specification. Exactly one of `c` and `p` must be specified

.PARAMETER Prop
Column name or property to test
.PARAMETER Op
No description available.
.PARAMETER Val
Value used for comparison (binary operators)
.OUTPUTS

ClassFilter<PSCustomObject>
#>

function Initialize-GroAdminClassFilter {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Prop},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Op},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Val}
    )

    Process {
        'Creating PSCustomObject: GrommunioAdmin => GroAdminClassFilter' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if ($null -eq $Prop) {
            throw "invalid value for 'Prop', 'Prop' cannot be null."
        }

        if ($null -eq $Op) {
            throw "invalid value for 'Op', 'Op' cannot be null."
        }


        $PSO = [PSCustomObject]@{
            "prop" = ${Prop}
            "op" = ${Op}
            "val" = ${Val}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to ClassFilter<PSCustomObject>

.DESCRIPTION

Convert from JSON to ClassFilter<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

ClassFilter<PSCustomObject>
#>
function ConvertFrom-GroAdminJsonToClassFilter {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: GrommunioAdmin => GroAdminClassFilter' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in GroAdminClassFilter
        $AllProperties = ("prop", "op", "val")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        If ([string]::IsNullOrEmpty($Json) -or $Json -eq "{}") { # empty json
            throw "Error! Empty JSON cannot be serialized due to the required property 'prop' missing."
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "prop"))) {
            throw "Error! JSON cannot be serialized due to the required property 'prop' missing."
        } else {
            $Prop = $JsonParameters.PSobject.Properties["prop"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "op"))) {
            throw "Error! JSON cannot be serialized due to the required property 'op' missing."
        } else {
            $Op = $JsonParameters.PSobject.Properties["op"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "val"))) { #optional property not found
            $Val = $null
        } else {
            $Val = $JsonParameters.PSobject.Properties["val"].value
        }

        $PSO = [PSCustomObject]@{
            "prop" = ${Prop}
            "op" = ${Op}
            "val" = ${Val}
        }

        return $PSO
    }

}

