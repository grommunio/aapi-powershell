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
Unique ID of the object
.PARAMETER OrgID
No description available.
.PARAMETER Domainname
Name of the domain, automatically converted to IDNA format
.PARAMETER Displayname
Decoded unicode domain name
.PARAMETER Homedir
No description available.
.PARAMETER MaxUser
No description available.
.PARAMETER Title
No description available.
.PARAMETER Address
No description available.
.PARAMETER AdminName
No description available.
.PARAMETER Tel
No description available.
.PARAMETER EndDay
Date string
.PARAMETER DomainStatus
Domain status (0=Normal, 1=Suspended, 2=Out Of Date, 3=Deleted)
.PARAMETER ActiveUsers
No description available.
.PARAMETER InactiveUsers
No description available.
.PARAMETER SyncPolicy
No description available.
.PARAMETER Chat
Whether chat is enabled for this domain
.PARAMETER Homeserver
ID of the homeserver
.OUTPUTS

PostDomainRequest<PSCustomObject>
#>

function Initialize-GroAdminPostDomainRequest {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${ID},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${OrgID} = 0,
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Domainname},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Displayname},
        [Parameter(Position = 4, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Homedir},
        [Parameter(Position = 5, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${MaxUser},
        [Parameter(Position = 6, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Title},
        [Parameter(Position = 7, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Address},
        [Parameter(Position = 8, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${AdminName},
        [Parameter(Position = 9, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Tel},
        [Parameter(Position = 10, ValueFromPipelineByPropertyName = $true)]
        [ValidatePattern("^\d{4}-\d{2}-\d{2}$")]
        [String]
        ${EndDay},
        [Parameter(Position = 11, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${DomainStatus} = 0,
        [Parameter(Position = 12, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${ActiveUsers},
        [Parameter(Position = 13, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${InactiveUsers},
        [Parameter(Position = 14, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${SyncPolicy},
        [Parameter(Position = 15, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${Chat},
        [Parameter(Position = 16, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${Homeserver}
    )

    Process {
        'Creating PSCustomObject: GrommunioAdmin => GroAdminPostDomainRequest' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if (!$Domainname -and $Domainname.length -gt 64) {
            throw "invalid value for 'Domainname', the character length must be smaller than or equal to 64."
        }

        if (!$Homedir -and $Homedir.length -gt 128) {
            throw "invalid value for 'Homedir', the character length must be smaller than or equal to 128."
        }

        if (!$Title -and $Title.length -gt 128) {
            throw "invalid value for 'Title', the character length must be smaller than or equal to 128."
        }

        if (!$Address -and $Address.length -gt 128) {
            throw "invalid value for 'Address', the character length must be smaller than or equal to 128."
        }

        if (!$AdminName -and $AdminName.length -gt 32) {
            throw "invalid value for 'AdminName', the character length must be smaller than or equal to 32."
        }

        if (!$Tel -and $Tel.length -gt 64) {
            throw "invalid value for 'Tel', the character length must be smaller than or equal to 64."
        }


        $PSO = [PSCustomObject]@{
            "ID" = ${ID}
            "orgID" = ${OrgID}
            "domainname" = ${Domainname}
            "displayname" = ${Displayname}
            "homedir" = ${Homedir}
            "maxUser" = ${MaxUser}
            "title" = ${Title}
            "address" = ${Address}
            "adminName" = ${AdminName}
            "tel" = ${Tel}
            "endDay" = ${EndDay}
            "domainStatus" = ${DomainStatus}
            "activeUsers" = ${ActiveUsers}
            "inactiveUsers" = ${InactiveUsers}
            "syncPolicy" = ${SyncPolicy}
            "chat" = ${Chat}
            "homeserver" = ${Homeserver}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to PostDomainRequest<PSCustomObject>

.DESCRIPTION

Convert from JSON to PostDomainRequest<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

PostDomainRequest<PSCustomObject>
#>
function ConvertFrom-GroAdminJsonToPostDomainRequest {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: GrommunioAdmin => GroAdminPostDomainRequest' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in GroAdminPostDomainRequest
        $AllProperties = ("ID", "orgID", "domainname", "displayname", "homedir", "maxUser", "title", "address", "adminName", "tel", "endDay", "domainStatus", "activeUsers", "inactiveUsers", "syncPolicy", "chat", "homeserver")
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

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "orgID"))) { #optional property not found
            $OrgID = $null
        } else {
            $OrgID = $JsonParameters.PSobject.Properties["orgID"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "domainname"))) { #optional property not found
            $Domainname = $null
        } else {
            $Domainname = $JsonParameters.PSobject.Properties["domainname"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "displayname"))) { #optional property not found
            $Displayname = $null
        } else {
            $Displayname = $JsonParameters.PSobject.Properties["displayname"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "homedir"))) { #optional property not found
            $Homedir = $null
        } else {
            $Homedir = $JsonParameters.PSobject.Properties["homedir"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "maxUser"))) { #optional property not found
            $MaxUser = $null
        } else {
            $MaxUser = $JsonParameters.PSobject.Properties["maxUser"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "title"))) { #optional property not found
            $Title = $null
        } else {
            $Title = $JsonParameters.PSobject.Properties["title"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "address"))) { #optional property not found
            $Address = $null
        } else {
            $Address = $JsonParameters.PSobject.Properties["address"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "adminName"))) { #optional property not found
            $AdminName = $null
        } else {
            $AdminName = $JsonParameters.PSobject.Properties["adminName"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "tel"))) { #optional property not found
            $Tel = $null
        } else {
            $Tel = $JsonParameters.PSobject.Properties["tel"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "endDay"))) { #optional property not found
            $EndDay = $null
        } else {
            $EndDay = $JsonParameters.PSobject.Properties["endDay"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "domainStatus"))) { #optional property not found
            $DomainStatus = $null
        } else {
            $DomainStatus = $JsonParameters.PSobject.Properties["domainStatus"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "activeUsers"))) { #optional property not found
            $ActiveUsers = $null
        } else {
            $ActiveUsers = $JsonParameters.PSobject.Properties["activeUsers"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "inactiveUsers"))) { #optional property not found
            $InactiveUsers = $null
        } else {
            $InactiveUsers = $JsonParameters.PSobject.Properties["inactiveUsers"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "syncPolicy"))) { #optional property not found
            $SyncPolicy = $null
        } else {
            $SyncPolicy = $JsonParameters.PSobject.Properties["syncPolicy"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "chat"))) { #optional property not found
            $Chat = $null
        } else {
            $Chat = $JsonParameters.PSobject.Properties["chat"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "homeserver"))) { #optional property not found
            $Homeserver = $null
        } else {
            $Homeserver = $JsonParameters.PSobject.Properties["homeserver"].value
        }

        $PSO = [PSCustomObject]@{
            "ID" = ${ID}
            "orgID" = ${OrgID}
            "domainname" = ${Domainname}
            "displayname" = ${Displayname}
            "homedir" = ${Homedir}
            "maxUser" = ${MaxUser}
            "title" = ${Title}
            "address" = ${Address}
            "adminName" = ${AdminName}
            "tel" = ${Tel}
            "endDay" = ${EndDay}
            "domainStatus" = ${DomainStatus}
            "activeUsers" = ${ActiveUsers}
            "inactiveUsers" = ${InactiveUsers}
            "syncPolicy" = ${SyncPolicy}
            "chat" = ${Chat}
            "homeserver" = ${Homeserver}
        }

        return $PSO
    }

}

