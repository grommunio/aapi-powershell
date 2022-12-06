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

MlistReadClassAllOf<PSCustomObject>
#>
function ConvertFrom-GroAdminJsonToMlistReadClassAllOf {
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
            Write-Debug "Failed to match 'AnyType' defined in oneOf (GroAdminMlistReadClassAllOf). Proceeding to the next one if any."
        }

        # try to match Class defined in the oneOf schemas
        try {
            $matchInstance = ConvertFrom-GroAdminJsonToClass $Json

            foreach($property in $matchInstance.PsObject.Properties) {
                if ($null -ne $property.Value) {
                    $matchType = "Class"
                    $match++
                    break
                }
            }
        } catch {
            # fail to match the schema defined in oneOf, proceed to the next one
            Write-Debug "Failed to match 'Class' defined in oneOf (GroAdminMlistReadClassAllOf). Proceeding to the next one if any."
        }

        if ($match -gt 1) {
            throw "Error! The JSON payload matches more than one type defined in oneOf schemas ([AnyType, Class]). JSON Payload: $($Json)"
        } elseif ($match -eq 1) {
            return [PSCustomObject]@{
                "ActualType" = ${matchType}
                "ActualInstance" = ${matchInstance}
                "OneOfSchemas" = @("AnyType", "Class")
            }
        } else {
            throw "Error! The JSON payload doesn't matches any type defined in oneOf schemas ([AnyType, Class]). JSON Payload: $($Json)"
        }
    }
}

