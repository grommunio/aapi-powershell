#
# grommunio Admin API
# grommunio administration REST API
# Version: 1.19.0
#

<#
.SYNOPSIS

No summary available.

.DESCRIPTION

No description available.

.PARAMETER Username
No description available.
.PARAMETER Properties
User properties as name/value pairs
.PARAMETER Altnames
List of alternative login names
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
.PARAMETER PrivWeb
Web privilege
.PARAMETER PrivEas
EAS privilege
.PARAMETER PrivDav
DAV privilege
.PARAMETER LdapID
Detach imported user from LDAP object
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

UserUpdate<PSCustomObject>
#>

function Initialize-GroAdminUserUpdate {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Username},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [System.Collections.Hashtable]
        ${Properties},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${Altnames},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true)]
        [String[]]
        ${Aliases},
        [Parameter(Position = 4, ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("0", "1", "2", "3", "4", "5")]
        [PSCustomObject]
        ${Status},
        [Parameter(Position = 5, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${Pop3Imap},
        [Parameter(Position = 6, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${Smtp},
        [Parameter(Position = 7, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${ChangePassword},
        [Parameter(Position = 8, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${PublicAddress},
        [Parameter(Position = 9, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${PrivChat},
        [Parameter(Position = 10, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${PrivVideo},
        [Parameter(Position = 11, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${PrivFiles},
        [Parameter(Position = 12, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${PrivArchive},
        [Parameter(Position = 13, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${PrivWeb},
        [Parameter(Position = 14, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${PrivEas},
        [Parameter(Position = 15, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${PrivDav},
        [Parameter(Position = 16, ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("")]
        [String]
        ${LdapID},
        [Parameter(Position = 17, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${Fetchmail},
        [Parameter(Position = 18, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${SyncPolicy},
        [Parameter(Position = 19, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${Chat},
        [Parameter(Position = 20, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${ChatAdmin},
        [Parameter(Position = 21, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Lang},
        [Parameter(Position = 22, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Forward},
        [Parameter(Position = 23, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${Homeserver}
    )

    Process {
        'Creating PSCustomObject: GrommunioAdmin => GroAdminUserUpdate' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if (!$Username -and $Username.length -gt 320) {
            throw "invalid value for 'Username', the character length must be smaller than or equal to 320."
        }


        $PSO = [PSCustomObject]@{
            'username' = ${Username}
            'properties' = ${Properties}
            'altnames' = ${Altnames}
            'aliases' = ${Aliases}
            'status' = ${Status}
            'pop3_imap' = ${Pop3Imap}
            'smtp' = ${Smtp}
            'changePassword' = ${ChangePassword}
            'publicAddress' = ${PublicAddress}
            'privChat' = ${PrivChat}
            'privVideo' = ${PrivVideo}
            'privFiles' = ${PrivFiles}
            'privArchive' = ${PrivArchive}
            'privWeb' = ${PrivWeb}
            'privEas' = ${PrivEas}
            'privDav' = ${PrivDav}
            'ldapID' = ${LdapID}
            'fetchmail' = ${Fetchmail}
            'syncPolicy' = ${SyncPolicy}
            'chat' = ${Chat}
            'chatAdmin' = ${ChatAdmin}
            'lang' = ${Lang}
            'forward' = ${Forward}
            'homeserver' = ${Homeserver}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to UserUpdate<PSCustomObject>

.DESCRIPTION

Convert from JSON to UserUpdate<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

UserUpdate<PSCustomObject>
#>
function ConvertFrom-GroAdminJsonToUserUpdate {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: GrommunioAdmin => GroAdminUserUpdate' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in GroAdminUserUpdate
        $AllProperties = ('username', 'properties', 'altnames', 'aliases', 'status', 'pop3_imap', 'smtp', 'changePassword', 'publicAddress', 'privChat', 'privVideo', 'privFiles', 'privArchive', 'privWeb', 'privEas', 'privDav', 'ldapID', 'fetchmail', 'syncPolicy', 'chat', 'chatAdmin', 'lang', 'forward', 'homeserver')
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match 'username'))) { #optional property not found
            $Username = $null
        } else {
            $Username = $JsonParameters.PSobject.Properties['username'].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match 'properties'))) { #optional property not found
            $Properties = $null
        } else {
            $Properties = $JsonParameters.PSobject.Properties['properties'].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match 'altnames'))) { #optional property not found
            $Altnames = $null
        } else {
            $Altnames = $JsonParameters.PSobject.Properties['altnames'].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match 'aliases'))) { #optional property not found
            $Aliases = $null
        } else {
            $Aliases = $JsonParameters.PSobject.Properties['aliases'].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match 'status'))) { #optional property not found
            $Status = $null
        } else {
            $Status = $JsonParameters.PSobject.Properties['status'].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match 'pop3_imap'))) { #optional property not found
            $Pop3Imap = $null
        } else {
            $Pop3Imap = $JsonParameters.PSobject.Properties['pop3_imap'].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match 'smtp'))) { #optional property not found
            $Smtp = $null
        } else {
            $Smtp = $JsonParameters.PSobject.Properties['smtp'].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match 'changePassword'))) { #optional property not found
            $ChangePassword = $null
        } else {
            $ChangePassword = $JsonParameters.PSobject.Properties['changePassword'].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match 'publicAddress'))) { #optional property not found
            $PublicAddress = $null
        } else {
            $PublicAddress = $JsonParameters.PSobject.Properties['publicAddress'].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match 'privChat'))) { #optional property not found
            $PrivChat = $null
        } else {
            $PrivChat = $JsonParameters.PSobject.Properties['privChat'].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match 'privVideo'))) { #optional property not found
            $PrivVideo = $null
        } else {
            $PrivVideo = $JsonParameters.PSobject.Properties['privVideo'].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match 'privFiles'))) { #optional property not found
            $PrivFiles = $null
        } else {
            $PrivFiles = $JsonParameters.PSobject.Properties['privFiles'].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match 'privArchive'))) { #optional property not found
            $PrivArchive = $null
        } else {
            $PrivArchive = $JsonParameters.PSobject.Properties['privArchive'].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match 'privWeb'))) { #optional property not found
            $PrivWeb = $null
        } else {
            $PrivWeb = $JsonParameters.PSobject.Properties['privWeb'].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match 'privEas'))) { #optional property not found
            $PrivEas = $null
        } else {
            $PrivEas = $JsonParameters.PSobject.Properties['privEas'].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match 'privDav'))) { #optional property not found
            $PrivDav = $null
        } else {
            $PrivDav = $JsonParameters.PSobject.Properties['privDav'].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match 'ldapID'))) { #optional property not found
            $LdapID = $null
        } else {
            $LdapID = $JsonParameters.PSobject.Properties['ldapID'].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match 'fetchmail'))) { #optional property not found
            $Fetchmail = $null
        } else {
            $Fetchmail = $JsonParameters.PSobject.Properties['fetchmail'].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match 'syncPolicy'))) { #optional property not found
            $SyncPolicy = $null
        } else {
            $SyncPolicy = $JsonParameters.PSobject.Properties['syncPolicy'].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match 'chat'))) { #optional property not found
            $Chat = $null
        } else {
            $Chat = $JsonParameters.PSobject.Properties['chat'].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match 'chatAdmin'))) { #optional property not found
            $ChatAdmin = $null
        } else {
            $ChatAdmin = $JsonParameters.PSobject.Properties['chatAdmin'].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match 'lang'))) { #optional property not found
            $Lang = $null
        } else {
            $Lang = $JsonParameters.PSobject.Properties['lang'].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match 'forward'))) { #optional property not found
            $Forward = $null
        } else {
            $Forward = $JsonParameters.PSobject.Properties['forward'].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match 'homeserver'))) { #optional property not found
            $Homeserver = $null
        } else {
            $Homeserver = $JsonParameters.PSobject.Properties['homeserver'].value
        }

        $PSO = [PSCustomObject]@{
            'username' = ${Username}
            'properties' = ${Properties}
            'altnames' = ${Altnames}
            'aliases' = ${Aliases}
            'status' = ${Status}
            'pop3_imap' = ${Pop3Imap}
            'smtp' = ${Smtp}
            'changePassword' = ${ChangePassword}
            'publicAddress' = ${PublicAddress}
            'privChat' = ${PrivChat}
            'privVideo' = ${PrivVideo}
            'privFiles' = ${PrivFiles}
            'privArchive' = ${PrivArchive}
            'privWeb' = ${PrivWeb}
            'privEas' = ${PrivEas}
            'privDav' = ${PrivDav}
            'ldapID' = ${LdapID}
            'fetchmail' = ${Fetchmail}
            'syncPolicy' = ${SyncPolicy}
            'chat' = ${Chat}
            'chatAdmin' = ${ChatAdmin}
            'lang' = ${Lang}
            'forward' = ${Forward}
            'homeserver' = ${Homeserver}
        }

        return $PSO
    }

}

