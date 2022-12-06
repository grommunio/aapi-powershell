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

.PARAMETER New
The new password
.PARAMETER Old
The old password
.PARAMETER User
Set password for a specific user (use inline authentication)
.OUTPUTS

PutPasswdRequest<PSCustomObject>
#>

function Initialize-GroAdminPutPasswdRequest {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${New},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Old},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${User}
    )

    Process {
        'Creating PSCustomObject: GrommunioAdmin => GroAdminPutPasswdRequest' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if ($null -eq $New) {
            throw "invalid value for 'New', 'New' cannot be null."
        }

        if ($null -eq $Old) {
            throw "invalid value for 'Old', 'Old' cannot be null."
        }


        $PSO = [PSCustomObject]@{
            "new" = ${New}
            "old" = ${Old}
            "user" = ${User}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to PutPasswdRequest<PSCustomObject>

.DESCRIPTION

Convert from JSON to PutPasswdRequest<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

PutPasswdRequest<PSCustomObject>
#>
function ConvertFrom-GroAdminJsonToPutPasswdRequest {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: GrommunioAdmin => GroAdminPutPasswdRequest' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in GroAdminPutPasswdRequest
        $AllProperties = ("new", "old", "user")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        If ([string]::IsNullOrEmpty($Json) -or $Json -eq "{}") { # empty json
            throw "Error! Empty JSON cannot be serialized due to the required property 'new' missing."
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "new"))) {
            throw "Error! JSON cannot be serialized due to the required property 'new' missing."
        } else {
            $New = $JsonParameters.PSobject.Properties["new"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "old"))) {
            throw "Error! JSON cannot be serialized due to the required property 'old' missing."
        } else {
            $Old = $JsonParameters.PSobject.Properties["old"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "user"))) { #optional property not found
            $User = $null
        } else {
            $User = $JsonParameters.PSobject.Properties["user"].value
        }

        $PSO = [PSCustomObject]@{
            "new" = ${New}
            "old" = ${Old}
            "user" = ${User}
        }

        return $PSO
    }

}

