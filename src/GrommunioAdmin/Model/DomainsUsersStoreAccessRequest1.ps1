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

.PARAMETER Usernames

.OUTPUTS

DomainsUsersStoreAccessRequest1<PSCustomObject>
#>

function Initialize-GroAdminDomainsUsersStoreAccessRequest1 {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String[]]
        ${Usernames}
    )

    Process {
        'Creating PSCustomObject: GrommunioAdmin => GroAdminDomainsUsersStoreAccessRequest1' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "usernames" = ${Usernames}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to DomainsUsersStoreAccessRequest1<PSCustomObject>

.DESCRIPTION

Convert from JSON to DomainsUsersStoreAccessRequest1<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

DomainsUsersStoreAccessRequest1<PSCustomObject>
#>
function ConvertFrom-GroAdminJsonToDomainsUsersStoreAccessRequest1 {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: GrommunioAdmin => GroAdminDomainsUsersStoreAccessRequest1' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in GroAdminDomainsUsersStoreAccessRequest1
        $AllProperties = ("usernames")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "usernames"))) { #optional property not found
            $Usernames = $null
        } else {
            $Usernames = $JsonParameters.PSobject.Properties["usernames"].value
        }

        $PSO = [PSCustomObject]@{
            "usernames" = ${Usernames}
        }

        return $PSO
    }

}

