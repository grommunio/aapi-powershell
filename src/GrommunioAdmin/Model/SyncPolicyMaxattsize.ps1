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

SyncPolicyMaxattsize<PSCustomObject>
#>
function ConvertFrom-GroAdminJsonToSyncPolicyMaxattsize {
    [CmdletBinding()]
    Param (
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        $match = 0
        $matchType = $null
        $matchInstance = $null

        # try to match Int32 defined in the oneOf schemas
        try {
            $matchInstance = ConvertFrom-GroAdminJsonToInt32 $Json

            foreach($property in $matchInstance.PsObject.Properties) {
                if ($null -ne $property.Value) {
                    $matchType = "Int32"
                    $match++
                    break
                }
            }
        } catch {
            # fail to match the schema defined in oneOf, proceed to the next one
            Write-Debug "Failed to match 'Int32' defined in oneOf (GroAdminSyncPolicyMaxattsize). Proceeding to the next one if any."
        }

        # try to match Maxattsize defined in the oneOf schemas
        try {
            $matchInstance = ConvertFrom-GroAdminJsonToMaxattsize $Json

            foreach($property in $matchInstance.PsObject.Properties) {
                if ($null -ne $property.Value) {
                    $matchType = "Maxattsize"
                    $match++
                    break
                }
            }
        } catch {
            # fail to match the schema defined in oneOf, proceed to the next one
            Write-Debug "Failed to match 'Maxattsize' defined in oneOf (GroAdminSyncPolicyMaxattsize). Proceeding to the next one if any."
        }

        if ($match -gt 1) {
            throw "Error! The JSON payload matches more than one type defined in oneOf schemas ([Int32, Maxattsize]). JSON Payload: $($Json)"
        } elseif ($match -eq 1) {
            return [PSCustomObject]@{
                "ActualType" = ${matchType}
                "ActualInstance" = ${matchInstance}
                "OneOfSchemas" = @("Int32", "Maxattsize")
            }
        } else {
            throw "Error! The JSON payload doesn't matches any type defined in oneOf schemas ([Int32, Maxattsize]). JSON Payload: $($Json)"
        }
    }
}

