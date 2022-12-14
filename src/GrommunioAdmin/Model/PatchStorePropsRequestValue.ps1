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

PatchStorePropsRequestValue<PSCustomObject>
#>
function ConvertFrom-GroAdminJsonToPatchStorePropsRequestValue {
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
            Write-Debug "Failed to match 'Int32' defined in oneOf (GroAdminPatchStorePropsRequestValue). Proceeding to the next one if any."
        }

        # try to match String defined in the oneOf schemas
        try {
            $matchInstance = ConvertFrom-GroAdminJsonToString $Json

            foreach($property in $matchInstance.PsObject.Properties) {
                if ($null -ne $property.Value) {
                    $matchType = "String"
                    $match++
                    break
                }
            }
        } catch {
            # fail to match the schema defined in oneOf, proceed to the next one
            Write-Debug "Failed to match 'String' defined in oneOf (GroAdminPatchStorePropsRequestValue). Proceeding to the next one if any."
        }

        if ($match -gt 1) {
            throw "Error! The JSON payload matches more than one type defined in oneOf schemas ([Int32, String]). JSON Payload: $($Json)"
        } elseif ($match -eq 1) {
            return [PSCustomObject]@{
                "ActualType" = ${matchType}
                "ActualInstance" = ${matchInstance}
                "OneOfSchemas" = @("Int32", "String")
            }
        } else {
            throw "Error! The JSON payload doesn't matches any type defined in oneOf schemas ([Int32, String]). JSON Payload: $($Json)"
        }
    }
}

