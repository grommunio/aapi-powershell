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

.PARAMETER Json

JSON object

.OUTPUTS

ImportLdapUser200Response<PSCustomObject>
#>
function ConvertFrom-GroAdminJsonToImportLdapUser200Response {
    [CmdletBinding()]
    Param (
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        $match = 0
        $matchType = $null
        $matchInstance = $null

        if ($match -ne 0) { # no match yet
            # try to match DomainsLdapImportUserResponse defined in the anyOf schemas
            try {
                $matchInstance = ConvertFrom-GroAdminJsonToDomainsLdapImportUserResponse $Json

                foreach($property in $matchInstance.PsObject.Properties) {
                    if ($null -ne $property.Value) {
                        $matchType = "DomainsLdapImportUserResponse"
                        $match++
                        break
                    }
                }
            } catch {
                # fail to match the schema defined in anyOf, proceed to the next one
                Write-Debug "Failed to match 'DomainsLdapImportUserResponse' defined in anyOf (GroAdminImportLdapUser200Response). Proceeding to the next one if any."
            }
        }

        if ($match -ne 0) { # no match yet
            # try to match User defined in the anyOf schemas
            try {
                $matchInstance = ConvertFrom-GroAdminJsonToUser $Json

                foreach($property in $matchInstance.PsObject.Properties) {
                    if ($null -ne $property.Value) {
                        $matchType = "User"
                        $match++
                        break
                    }
                }
            } catch {
                # fail to match the schema defined in anyOf, proceed to the next one
                Write-Debug "Failed to match 'User' defined in anyOf (GroAdminImportLdapUser200Response). Proceeding to the next one if any."
            }
        }

        if ($match -eq 1) {
            return [PSCustomObject]@{
                "ActualType" = ${matchType}
                "ActualInstance" = ${matchInstance}
                "anyOfSchemas" = @("DomainsLdapImportUserResponse", "User")
            }
        } else {
            throw "Error! The JSON payload doesn't matches any type defined in anyOf schemas ([DomainsLdapImportUserResponse, User]). JSON Payload: $($Json)"
        }
    }
}

