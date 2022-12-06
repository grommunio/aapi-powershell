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

.PARAMETER Product
Product name
.PARAMETER MaxUsers
License user limit
.PARAMETER NotBefore
Date string with time
.PARAMETER NotAfter
Date string with time
.PARAMETER CurrentUsers
Number of currently existing users
.PARAMETER Certificate
Download link for the certificate
.OUTPUTS

License<PSCustomObject>
#>

function Initialize-GroAdminLicense {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Product},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${MaxUsers},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [ValidatePattern("^\d{4}-\d{2}-\d{2} \d{2}:\d{2}:\d{2}$")]
        [String]
        ${NotBefore},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true)]
        [ValidatePattern("^\d{4}-\d{2}-\d{2} \d{2}:\d{2}:\d{2}$")]
        [String]
        ${NotAfter},
        [Parameter(Position = 4, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${CurrentUsers},
        [Parameter(Position = 5, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Certificate}
    )

    Process {
        'Creating PSCustomObject: GrommunioAdmin => GroAdminLicense' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "product" = ${Product}
            "maxUsers" = ${MaxUsers}
            "notBefore" = ${NotBefore}
            "notAfter" = ${NotAfter}
            "currentUsers" = ${CurrentUsers}
            "certificate" = ${Certificate}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to License<PSCustomObject>

.DESCRIPTION

Convert from JSON to License<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

License<PSCustomObject>
#>
function ConvertFrom-GroAdminJsonToLicense {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: GrommunioAdmin => GroAdminLicense' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in GroAdminLicense
        $AllProperties = ("product", "maxUsers", "notBefore", "notAfter", "currentUsers", "certificate")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "product"))) { #optional property not found
            $Product = $null
        } else {
            $Product = $JsonParameters.PSobject.Properties["product"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "maxUsers"))) { #optional property not found
            $MaxUsers = $null
        } else {
            $MaxUsers = $JsonParameters.PSobject.Properties["maxUsers"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "notBefore"))) { #optional property not found
            $NotBefore = $null
        } else {
            $NotBefore = $JsonParameters.PSobject.Properties["notBefore"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "notAfter"))) { #optional property not found
            $NotAfter = $null
        } else {
            $NotAfter = $JsonParameters.PSobject.Properties["notAfter"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "currentUsers"))) { #optional property not found
            $CurrentUsers = $null
        } else {
            $CurrentUsers = $JsonParameters.PSobject.Properties["currentUsers"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "certificate"))) { #optional property not found
            $Certificate = $null
        } else {
            $Certificate = $JsonParameters.PSobject.Properties["certificate"].value
        }

        $PSO = [PSCustomObject]@{
            "product" = ${Product}
            "maxUsers" = ${MaxUsers}
            "notBefore" = ${NotBefore}
            "notAfter" = ${NotAfter}
            "currentUsers" = ${CurrentUsers}
            "certificate" = ${Certificate}
        }

        return $PSO
    }

}

