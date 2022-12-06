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

DomainCommonSyncPolicyAllOf<PSCustomObject>
#>
function ConvertFrom-GroAdminJsonToDomainCommonSyncPolicyAllOf {
    [CmdletBinding()]
    Param (
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        $match = 0
        $matchType = $null
        $matchInstance = $null

        # try to match AnyType defined in the oneOf schemas
        try {
            $matchInstance = ConvertFrom-GroAdminJsonToAnyType $Json

            foreach($property in $matchInstance.PsObject.Properties) {
                if ($null -ne $property.Value) {
                    $matchType = "AnyType"
                    $match++
                    break
                }
            }
        } catch {
            # fail to match the schema defined in oneOf, proceed to the next one
            Write-Debug "Failed to match 'AnyType' defined in oneOf (GroAdminDomainCommonSyncPolicyAllOf). Proceeding to the next one if any."
        }

        # try to match SyncPolicy defined in the oneOf schemas
        try {
            $matchInstance = ConvertFrom-GroAdminJsonToSyncPolicy $Json

            foreach($property in $matchInstance.PsObject.Properties) {
                if ($null -ne $property.Value) {
                    $matchType = "SyncPolicy"
                    $match++
                    break
                }
            }
        } catch {
            # fail to match the schema defined in oneOf, proceed to the next one
            Write-Debug "Failed to match 'SyncPolicy' defined in oneOf (GroAdminDomainCommonSyncPolicyAllOf). Proceeding to the next one if any."
        }

        if ($match -gt 1) {
            throw "Error! The JSON payload matches more than one type defined in oneOf schemas ([AnyType, SyncPolicy]). JSON Payload: $($Json)"
        } elseif ($match -eq 1) {
            return [PSCustomObject]@{
                "ActualType" = ${matchType}
                "ActualInstance" = ${matchInstance}
                "OneOfSchemas" = @("AnyType", "SyncPolicy")
            }
        } else {
            throw "Error! The JSON payload doesn't matches any type defined in oneOf schemas ([AnyType, SyncPolicy]). JSON Payload: $($Json)"
        }
    }
}

