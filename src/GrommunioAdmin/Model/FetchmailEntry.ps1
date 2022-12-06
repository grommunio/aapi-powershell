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
No description available.
.PARAMETER Mailbox
Username of the local user
.PARAMETER Active
Whether fetchmail is currently activated
.PARAMETER SrcServer
Source server address
.PARAMETER SrcUser
Source user
.PARAMETER SrcPassword
Password of the source user
.PARAMETER Date
Last modification time
.PARAMETER SrcAuth
No description available.
.PARAMETER SrcFolder
Folder to sync from
.PARAMETER Fetchall
Whether to fetch seen mails
.PARAMETER Keep
Keep original e-mails
.PARAMETER Protocol
No description available.
.PARAMETER UseSSL
Whether to use SSL
.PARAMETER SslCertCheck
Check ssl certificate
.PARAMETER SslCertPath
Path to local certificate directory or null to use local default
.PARAMETER SslFingerprint
Fingerprint of the server certificate
.PARAMETER ExtraOptions
Additional fetchmail options
.OUTPUTS

FetchmailEntry<PSCustomObject>
#>

function Initialize-GroAdminFetchmailEntry {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${ID},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Mailbox},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${Active},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${SrcServer},
        [Parameter(Position = 4, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${SrcUser},
        [Parameter(Position = 5, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${SrcPassword},
        [Parameter(Position = 6, ValueFromPipelineByPropertyName = $true)]
        [ValidatePattern("^\d{4}-\d{2}-\d{2} \d{2}:\d{2}:\d{2}$")]
        [String]
        ${Date},
        [Parameter(Position = 7, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${SrcAuth},
        [Parameter(Position = 8, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${SrcFolder},
        [Parameter(Position = 9, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${Fetchall},
        [Parameter(Position = 10, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${Keep},
        [Parameter(Position = 11, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Protocol},
        [Parameter(Position = 12, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${UseSSL},
        [Parameter(Position = 13, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${SslCertCheck} = $false,
        [Parameter(Position = 14, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${SslCertPath},
        [Parameter(Position = 15, ValueFromPipelineByPropertyName = $true)]
        [ValidatePattern("^([0-9A-F]{2}(:[0-9A-F]{2})*)?$")]
        [String]
        ${SslFingerprint},
        [Parameter(Position = 16, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${ExtraOptions}
    )

    Process {
        'Creating PSCustomObject: GrommunioAdmin => GroAdminFetchmailEntry' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "ID" = ${ID}
            "mailbox" = ${Mailbox}
            "active" = ${Active}
            "srcServer" = ${SrcServer}
            "srcUser" = ${SrcUser}
            "srcPassword" = ${SrcPassword}
            "date" = ${Date}
            "srcAuth" = ${SrcAuth}
            "srcFolder" = ${SrcFolder}
            "fetchall" = ${Fetchall}
            "keep" = ${Keep}
            "protocol" = ${Protocol}
            "useSSL" = ${UseSSL}
            "sslCertCheck" = ${SslCertCheck}
            "sslCertPath" = ${SslCertPath}
            "sslFingerprint" = ${SslFingerprint}
            "extraOptions" = ${ExtraOptions}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to FetchmailEntry<PSCustomObject>

.DESCRIPTION

Convert from JSON to FetchmailEntry<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

FetchmailEntry<PSCustomObject>
#>
function ConvertFrom-GroAdminJsonToFetchmailEntry {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: GrommunioAdmin => GroAdminFetchmailEntry' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in GroAdminFetchmailEntry
        $AllProperties = ("ID", "mailbox", "active", "srcServer", "srcUser", "srcPassword", "date", "srcAuth", "srcFolder", "fetchall", "keep", "protocol", "useSSL", "sslCertCheck", "sslCertPath", "sslFingerprint", "extraOptions")
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

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "mailbox"))) { #optional property not found
            $Mailbox = $null
        } else {
            $Mailbox = $JsonParameters.PSobject.Properties["mailbox"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "active"))) { #optional property not found
            $Active = $null
        } else {
            $Active = $JsonParameters.PSobject.Properties["active"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "srcServer"))) { #optional property not found
            $SrcServer = $null
        } else {
            $SrcServer = $JsonParameters.PSobject.Properties["srcServer"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "srcUser"))) { #optional property not found
            $SrcUser = $null
        } else {
            $SrcUser = $JsonParameters.PSobject.Properties["srcUser"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "srcPassword"))) { #optional property not found
            $SrcPassword = $null
        } else {
            $SrcPassword = $JsonParameters.PSobject.Properties["srcPassword"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "date"))) { #optional property not found
            $Date = $null
        } else {
            $Date = $JsonParameters.PSobject.Properties["date"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "srcAuth"))) { #optional property not found
            $SrcAuth = $null
        } else {
            $SrcAuth = $JsonParameters.PSobject.Properties["srcAuth"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "srcFolder"))) { #optional property not found
            $SrcFolder = $null
        } else {
            $SrcFolder = $JsonParameters.PSobject.Properties["srcFolder"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "fetchall"))) { #optional property not found
            $Fetchall = $null
        } else {
            $Fetchall = $JsonParameters.PSobject.Properties["fetchall"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "keep"))) { #optional property not found
            $Keep = $null
        } else {
            $Keep = $JsonParameters.PSobject.Properties["keep"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "protocol"))) { #optional property not found
            $Protocol = $null
        } else {
            $Protocol = $JsonParameters.PSobject.Properties["protocol"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "useSSL"))) { #optional property not found
            $UseSSL = $null
        } else {
            $UseSSL = $JsonParameters.PSobject.Properties["useSSL"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "sslCertCheck"))) { #optional property not found
            $SslCertCheck = $null
        } else {
            $SslCertCheck = $JsonParameters.PSobject.Properties["sslCertCheck"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "sslCertPath"))) { #optional property not found
            $SslCertPath = $null
        } else {
            $SslCertPath = $JsonParameters.PSobject.Properties["sslCertPath"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "sslFingerprint"))) { #optional property not found
            $SslFingerprint = $null
        } else {
            $SslFingerprint = $JsonParameters.PSobject.Properties["sslFingerprint"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "extraOptions"))) { #optional property not found
            $ExtraOptions = $null
        } else {
            $ExtraOptions = $JsonParameters.PSobject.Properties["extraOptions"].value
        }

        $PSO = [PSCustomObject]@{
            "ID" = ${ID}
            "mailbox" = ${Mailbox}
            "active" = ${Active}
            "srcServer" = ${SrcServer}
            "srcUser" = ${SrcUser}
            "srcPassword" = ${SrcPassword}
            "date" = ${Date}
            "srcAuth" = ${SrcAuth}
            "srcFolder" = ${SrcFolder}
            "fetchall" = ${Fetchall}
            "keep" = ${Keep}
            "protocol" = ${Protocol}
            "useSSL" = ${UseSSL}
            "sslCertCheck" = ${SslCertCheck}
            "sslCertPath" = ${SslCertPath}
            "sslFingerprint" = ${SslFingerprint}
            "extraOptions" = ${ExtraOptions}
        }

        return $PSO
    }

}

