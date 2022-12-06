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

.PARAMETER Username
No description available.
.PARAMETER Password
Initial password
.PARAMETER DomainID
No description available.
.PARAMETER Properties
User properties as name/value pairs
.PARAMETER Aliases
List of aliases for this user
.PARAMETER Status
No description available.
.PARAMETER Pop3Imap
POP3/IMAP privilege
.PARAMETER Smtp
SMTP privilege
.PARAMETER ChangePassword
Password changing privilege
.PARAMETER PublicAddress
Public address privilege
.PARAMETER PrivChat
Chat privilege
.PARAMETER PrivVideo
Meet privilege
.PARAMETER PrivFiles
Files privilege
.PARAMETER PrivArchive
Archive privilege
.PARAMETER Fetchmail
List of fetchmail entries for this user
.PARAMETER SyncPolicy
No description available.
.PARAMETER Chat
Whether chat is enabled for this user
.PARAMETER ChatAdmin
Whether this user has grommunio-chat admin permissions
.PARAMETER Lang
User language
.PARAMETER Forward
No description available.
.PARAMETER Homeserver
ID of the homeserver
.OUTPUTS

PostUserRequest<PSCustomObject>
#>

function Initialize-GroAdminPostUserRequest {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Username},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Password},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${DomainID},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Properties},
        [Parameter(Position = 4, ValueFromPipelineByPropertyName = $true)]
        [String[]]
        ${Aliases},
        [Parameter(Position = 5, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Status},
        [Parameter(Position = 6, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${Pop3Imap},
        [Parameter(Position = 7, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${Smtp},
        [Parameter(Position = 8, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${ChangePassword},
        [Parameter(Position = 9, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${PublicAddress},
        [Parameter(Position = 10, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${PrivChat},
        [Parameter(Position = 11, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${PrivVideo},
        [Parameter(Position = 12, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${PrivFiles},
        [Parameter(Position = 13, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${PrivArchive},
        [Parameter(Position = 14, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${Fetchmail},
        [Parameter(Position = 15, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${SyncPolicy},
        [Parameter(Position = 16, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${Chat},
        [Parameter(Position = 17, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${ChatAdmin},
        [Parameter(Position = 18, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Lang},
        [Parameter(Position = 19, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Forward},
        [Parameter(Position = 20, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${Homeserver}
    )

    Process {
        'Creating PSCustomObject: GrommunioAdmin => GroAdminPostUserRequest' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if (!$Username -and $Username.length -gt 320) {
            throw "invalid value for 'Username', the character length must be smaller than or equal to 320."
        }


        $PSO = [PSCustomObject]@{
            "username" = ${Username}
            "password" = ${Password}
            "domainID" = ${DomainID}
            "properties" = ${Properties}
            "aliases" = ${Aliases}
            "status" = ${Status}
            "pop3_imap" = ${Pop3Imap}
            "smtp" = ${Smtp}
            "changePassword" = ${ChangePassword}
            "publicAddress" = ${PublicAddress}
            "privChat" = ${PrivChat}
            "privVideo" = ${PrivVideo}
            "privFiles" = ${PrivFiles}
            "privArchive" = ${PrivArchive}
            "fetchmail" = ${Fetchmail}
            "syncPolicy" = ${SyncPolicy}
            "chat" = ${Chat}
            "chatAdmin" = ${ChatAdmin}
            "lang" = ${Lang}
            "forward" = ${Forward}
            "homeserver" = ${Homeserver}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to PostUserRequest<PSCustomObject>

.DESCRIPTION

Convert from JSON to PostUserRequest<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

PostUserRequest<PSCustomObject>
#>
function ConvertFrom-GroAdminJsonToPostUserRequest {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: GrommunioAdmin => GroAdminPostUserRequest' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in GroAdminPostUserRequest
        $AllProperties = ("username", "password", "domainID", "properties", "aliases", "status", "pop3_imap", "smtp", "changePassword", "publicAddress", "privChat", "privVideo", "privFiles", "privArchive", "fetchmail", "syncPolicy", "chat", "chatAdmin", "lang", "forward", "homeserver")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "username"))) { #optional property not found
            $Username = $null
        } else {
            $Username = $JsonParameters.PSobject.Properties["username"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "password"))) { #optional property not found
            $Password = $null
        } else {
            $Password = $JsonParameters.PSobject.Properties["password"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "domainID"))) { #optional property not found
            $DomainID = $null
        } else {
            $DomainID = $JsonParameters.PSobject.Properties["domainID"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "properties"))) { #optional property not found
            $Properties = $null
        } else {
            $Properties = $JsonParameters.PSobject.Properties["properties"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "aliases"))) { #optional property not found
            $Aliases = $null
        } else {
            $Aliases = $JsonParameters.PSobject.Properties["aliases"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "status"))) { #optional property not found
            $Status = $null
        } else {
            $Status = $JsonParameters.PSobject.Properties["status"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "pop3_imap"))) { #optional property not found
            $Pop3Imap = $null
        } else {
            $Pop3Imap = $JsonParameters.PSobject.Properties["pop3_imap"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "smtp"))) { #optional property not found
            $Smtp = $null
        } else {
            $Smtp = $JsonParameters.PSobject.Properties["smtp"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "changePassword"))) { #optional property not found
            $ChangePassword = $null
        } else {
            $ChangePassword = $JsonParameters.PSobject.Properties["changePassword"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "publicAddress"))) { #optional property not found
            $PublicAddress = $null
        } else {
            $PublicAddress = $JsonParameters.PSobject.Properties["publicAddress"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "privChat"))) { #optional property not found
            $PrivChat = $null
        } else {
            $PrivChat = $JsonParameters.PSobject.Properties["privChat"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "privVideo"))) { #optional property not found
            $PrivVideo = $null
        } else {
            $PrivVideo = $JsonParameters.PSobject.Properties["privVideo"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "privFiles"))) { #optional property not found
            $PrivFiles = $null
        } else {
            $PrivFiles = $JsonParameters.PSobject.Properties["privFiles"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "privArchive"))) { #optional property not found
            $PrivArchive = $null
        } else {
            $PrivArchive = $JsonParameters.PSobject.Properties["privArchive"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "fetchmail"))) { #optional property not found
            $Fetchmail = $null
        } else {
            $Fetchmail = $JsonParameters.PSobject.Properties["fetchmail"].value
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

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "chatAdmin"))) { #optional property not found
            $ChatAdmin = $null
        } else {
            $ChatAdmin = $JsonParameters.PSobject.Properties["chatAdmin"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "lang"))) { #optional property not found
            $Lang = $null
        } else {
            $Lang = $JsonParameters.PSobject.Properties["lang"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "forward"))) { #optional property not found
            $Forward = $null
        } else {
            $Forward = $JsonParameters.PSobject.Properties["forward"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "homeserver"))) { #optional property not found
            $Homeserver = $null
        } else {
            $Homeserver = $JsonParameters.PSobject.Properties["homeserver"].value
        }

        $PSO = [PSCustomObject]@{
            "username" = ${Username}
            "password" = ${Password}
            "domainID" = ${DomainID}
            "properties" = ${Properties}
            "aliases" = ${Aliases}
            "status" = ${Status}
            "pop3_imap" = ${Pop3Imap}
            "smtp" = ${Smtp}
            "changePassword" = ${ChangePassword}
            "publicAddress" = ${PublicAddress}
            "privChat" = ${PrivChat}
            "privVideo" = ${PrivVideo}
            "privFiles" = ${PrivFiles}
            "privArchive" = ${PrivArchive}
            "fetchmail" = ${Fetchmail}
            "syncPolicy" = ${SyncPolicy}
            "chat" = ${Chat}
            "chatAdmin" = ${ChatAdmin}
            "lang" = ${Lang}
            "forward" = ${Forward}
            "homeserver" = ${Homeserver}
        }

        return $PSO
    }

}

