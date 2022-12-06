#
# grommunio Admin API
# grommunio administration REST API
# Version: 1.9.2
#

<#
.SYNOPSIS

deleteDomain

.DESCRIPTION

No description available.

.PARAMETER DomainID
ID of the domain

.PARAMETER XCsrfToken
CSRF Token

.PARAMETER Purge
Permanently delete the domain

.PARAMETER DeleteFiles
Delete files from disk when purging

.PARAMETER WithHttpInfo

A switch when turned on will return a hash table of Response, StatusCode and Headers instead of just the Response

.OUTPUTS

None
#>
function Invoke-GroAdminDeleteDomain {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [Int32]
        ${DomainID},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${XCsrfToken},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [System.Nullable[Boolean]]
        ${Purge},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [System.Nullable[Boolean]]
        ${DeleteFiles},
        [Switch]
        $WithHttpInfo
    )

    Process {
        'Calling method: Invoke-GroAdminDeleteDomain' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $LocalVarAccepts = @()
        $LocalVarContentTypes = @()
        $LocalVarQueryParameters = @{}
        $LocalVarHeaderParameters = @{}
        $LocalVarFormParameters = @{}
        $LocalVarPathParameters = @{}
        $LocalVarCookieParameters = @{}
        $LocalVarBodyParameter = $null

        $Configuration = Get-GroAdminConfiguration
        # HTTP header 'Accept' (if needed)
        $LocalVarAccepts = @('application/json')

        $LocalVarUri = '/system/domains/{domainID}'
        if (!$DomainID) {
            throw "Error! The required parameter `DomainID` missing when calling deleteDomain."
        }
        $LocalVarUri = $LocalVarUri.replace('{domainID}', [System.Web.HTTPUtility]::UrlEncode($DomainID))

        if ($XCsrfToken) {
            $LocalVarHeaderParameters['X-Csrf-Token'] = $XCsrfToken
        }

        if ($Purge) {
            $LocalVarQueryParameters['purge'] = $Purge
        }

        if ($DeleteFiles) {
            $LocalVarQueryParameters['deleteFiles'] = $DeleteFiles
        }

        $LocalVarResult = Invoke-GroAdminApiClient -Method 'DELETE' `
                                -Uri $LocalVarUri `
                                -Accepts $LocalVarAccepts `
                                -ContentTypes $LocalVarContentTypes `
                                -Body $LocalVarBodyParameter `
                                -HeaderParameters $LocalVarHeaderParameters `
                                -QueryParameters $LocalVarQueryParameters `
                                -FormParameters $LocalVarFormParameters `
                                -CookieParameters $LocalVarCookieParameters `
                                -ReturnType "" `
                                -IsBodyNullable $false

        if ($WithHttpInfo.IsPresent) {
            return $LocalVarResult
        } else {
            return $LocalVarResult["Response"]
        }
    }
}

<#
.SYNOPSIS

getAllUsers

.DESCRIPTION

No description available.

.PARAMETER Level
Set detail level of return value. Usually ranges from 0 to 2.

.PARAMETER Limit
Maximum number of results to return

.PARAMETER Offset
Index of the first element to return

.PARAMETER Match
Match by substring

.PARAMETER MatchFields
Comma separated list of attributes to restrict matching to.

.PARAMETER Properties
Comma separated list of properties to return

.PARAMETER WithHttpInfo

A switch when turned on will return a hash table of Response, StatusCode and Headers instead of just the Response

.OUTPUTS

SystemUsersResponse
#>
function Get-GroAdminAllUsers {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [System.Nullable[Int32]]
        ${Level},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [System.Nullable[Int32]]
        ${Limit},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [System.Nullable[Int32]]
        ${Offset},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${Match},
        [Parameter(Position = 4, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${MatchFields},
        [Parameter(Position = 5, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${Properties},
        [Switch]
        $WithHttpInfo
    )

    Process {
        'Calling method: Get-GroAdminAllUsers' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $LocalVarAccepts = @()
        $LocalVarContentTypes = @()
        $LocalVarQueryParameters = @{}
        $LocalVarHeaderParameters = @{}
        $LocalVarFormParameters = @{}
        $LocalVarPathParameters = @{}
        $LocalVarCookieParameters = @{}
        $LocalVarBodyParameter = $null

        $Configuration = Get-GroAdminConfiguration
        # HTTP header 'Accept' (if needed)
        $LocalVarAccepts = @('application/json')

        $LocalVarUri = '/system/users'

        if ($Level) {
            $LocalVarQueryParameters['level'] = $Level
        }

        if ($Limit) {
            $LocalVarQueryParameters['limit'] = $Limit
        }

        if ($Offset) {
            $LocalVarQueryParameters['offset'] = $Offset
        }

        if ($Match) {
            $LocalVarQueryParameters['match'] = $Match
        }

        if ($MatchFields) {
            $LocalVarQueryParameters['matchFields'] = $MatchFields
        }

        if ($Properties) {
            $LocalVarQueryParameters['properties'] = $Properties
        }

        $LocalVarResult = Invoke-GroAdminApiClient -Method 'GET' `
                                -Uri $LocalVarUri `
                                -Accepts $LocalVarAccepts `
                                -ContentTypes $LocalVarContentTypes `
                                -Body $LocalVarBodyParameter `
                                -HeaderParameters $LocalVarHeaderParameters `
                                -QueryParameters $LocalVarQueryParameters `
                                -FormParameters $LocalVarFormParameters `
                                -CookieParameters $LocalVarCookieParameters `
                                -ReturnType "SystemUsersResponse" `
                                -IsBodyNullable $false

        if ($WithHttpInfo.IsPresent) {
            return $LocalVarResult
        } else {
            return $LocalVarResult["Response"]
        }
    }
}

<#
.SYNOPSIS

getDomainInfo

.DESCRIPTION

No description available.

.PARAMETER DomainID
ID of the domain

.PARAMETER Level
Set detail level of return value. Usually ranges from 0 to 2.

.PARAMETER WithHttpInfo

A switch when turned on will return a hash table of Response, StatusCode and Headers instead of just the Response

.OUTPUTS

Domain
#>
function Get-GroAdminDomainInfo {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [Int32]
        ${DomainID},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [System.Nullable[Int32]]
        ${Level},
        [Switch]
        $WithHttpInfo
    )

    Process {
        'Calling method: Get-GroAdminDomainInfo' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $LocalVarAccepts = @()
        $LocalVarContentTypes = @()
        $LocalVarQueryParameters = @{}
        $LocalVarHeaderParameters = @{}
        $LocalVarFormParameters = @{}
        $LocalVarPathParameters = @{}
        $LocalVarCookieParameters = @{}
        $LocalVarBodyParameter = $null

        $Configuration = Get-GroAdminConfiguration
        # HTTP header 'Accept' (if needed)
        $LocalVarAccepts = @('application/json')

        $LocalVarUri = '/system/domains/{domainID}'
        if (!$DomainID) {
            throw "Error! The required parameter `DomainID` missing when calling getDomainInfo."
        }
        $LocalVarUri = $LocalVarUri.replace('{domainID}', [System.Web.HTTPUtility]::UrlEncode($DomainID))

        if ($Level) {
            $LocalVarQueryParameters['level'] = $Level
        }

        $LocalVarResult = Invoke-GroAdminApiClient -Method 'GET' `
                                -Uri $LocalVarUri `
                                -Accepts $LocalVarAccepts `
                                -ContentTypes $LocalVarContentTypes `
                                -Body $LocalVarBodyParameter `
                                -HeaderParameters $LocalVarHeaderParameters `
                                -QueryParameters $LocalVarQueryParameters `
                                -FormParameters $LocalVarFormParameters `
                                -CookieParameters $LocalVarCookieParameters `
                                -ReturnType "Domain" `
                                -IsBodyNullable $false

        if ($WithHttpInfo.IsPresent) {
            return $LocalVarResult
        } else {
            return $LocalVarResult["Response"]
        }
    }
}

<#
.SYNOPSIS

getDomains

.DESCRIPTION

No description available.

.PARAMETER Level
Set detail level of return value. Usually ranges from 0 to 2.

.PARAMETER Limit
Maximum number of results to return

.PARAMETER Offset
Index of the first element to return

.PARAMETER Match
Match by substring

.PARAMETER MatchFields
Comma separated list of attributes to restrict matching to.

.PARAMETER Sort
Sort by attribute. Can be given multiple times.

.PARAMETER ID
Filter one or more IDs

.PARAMETER OrgID
Filter by one or more organization IDs

.PARAMETER Domainname
Filter by domainname

.PARAMETER MaxUser
Filter by number of maximum users

.PARAMETER Title
Filter by domain title

.PARAMETER Address
Filter by domain address property

.PARAMETER AdminName
Filter by admin name

.PARAMETER Tel
Filter by telephone number

.PARAMETER DomainStatus
Filter by one or more domain status values

.PARAMETER WithHttpInfo

A switch when turned on will return a hash table of Response, StatusCode and Headers instead of just the Response

.OUTPUTS

SystemDomainsResponse
#>
function Get-GroAdminDomains {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [System.Nullable[Int32]]
        ${Level},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [System.Nullable[Int32]]
        ${Limit},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [System.Nullable[Int32]]
        ${Offset},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${Match},
        [Parameter(Position = 4, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${MatchFields},
        [Parameter(Position = 5, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${Sort},
        [Parameter(Position = 6, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [System.Nullable[Int32][]]
        ${ID},
        [Parameter(Position = 7, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [System.Nullable[Int32][]]
        ${OrgID},
        [Parameter(Position = 8, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${Domainname},
        [Parameter(Position = 9, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [System.Nullable[Int32][]]
        ${MaxUser},
        [Parameter(Position = 10, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${Title},
        [Parameter(Position = 11, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${Address},
        [Parameter(Position = 12, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${AdminName},
        [Parameter(Position = 13, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${Tel},
        [Parameter(Position = 14, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [System.Nullable[Int32][]]
        ${DomainStatus},
        [Switch]
        $WithHttpInfo
    )

    Process {
        'Calling method: Get-GroAdminDomains' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $LocalVarAccepts = @()
        $LocalVarContentTypes = @()
        $LocalVarQueryParameters = @{}
        $LocalVarHeaderParameters = @{}
        $LocalVarFormParameters = @{}
        $LocalVarPathParameters = @{}
        $LocalVarCookieParameters = @{}
        $LocalVarBodyParameter = $null

        $Configuration = Get-GroAdminConfiguration
        # HTTP header 'Accept' (if needed)
        $LocalVarAccepts = @('application/json')

        $LocalVarUri = '/system/domains'

        if ($Level) {
            $LocalVarQueryParameters['level'] = $Level
        }

        if ($Limit) {
            $LocalVarQueryParameters['limit'] = $Limit
        }

        if ($Offset) {
            $LocalVarQueryParameters['offset'] = $Offset
        }

        if ($Match) {
            $LocalVarQueryParameters['match'] = $Match
        }

        if ($MatchFields) {
            $LocalVarQueryParameters['matchFields'] = $MatchFields
        }

        if ($Sort) {
            $LocalVarQueryParameters['sort'] = $Sort
        }

        if ($ID) {
            $LocalVarQueryParameters['ID'] = $ID
        }

        if ($OrgID) {
            $LocalVarQueryParameters['orgID'] = $OrgID
        }

        if ($Domainname) {
            $LocalVarQueryParameters['domainname'] = $Domainname
        }

        if ($MaxUser) {
            $LocalVarQueryParameters['maxUser'] = $MaxUser
        }

        if ($Title) {
            $LocalVarQueryParameters['title'] = $Title
        }

        if ($Address) {
            $LocalVarQueryParameters['address'] = $Address
        }

        if ($AdminName) {
            $LocalVarQueryParameters['adminName'] = $AdminName
        }

        if ($Tel) {
            $LocalVarQueryParameters['tel'] = $Tel
        }

        if ($DomainStatus) {
            $LocalVarQueryParameters['domainStatus'] = $DomainStatus
        }

        $LocalVarResult = Invoke-GroAdminApiClient -Method 'GET' `
                                -Uri $LocalVarUri `
                                -Accepts $LocalVarAccepts `
                                -ContentTypes $LocalVarContentTypes `
                                -Body $LocalVarBodyParameter `
                                -HeaderParameters $LocalVarHeaderParameters `
                                -QueryParameters $LocalVarQueryParameters `
                                -FormParameters $LocalVarFormParameters `
                                -CookieParameters $LocalVarCookieParameters `
                                -ReturnType "SystemDomainsResponse" `
                                -IsBodyNullable $false

        if ($WithHttpInfo.IsPresent) {
            return $LocalVarResult
        } else {
            return $LocalVarResult["Response"]
        }
    }
}

<#
.SYNOPSIS

patchDomain

.DESCRIPTION

No description available.

.PARAMETER DomainID
ID of the domain

.PARAMETER XCsrfToken
CSRF Token

.PARAMETER PostDomainRequest


.PARAMETER WithHttpInfo

A switch when turned on will return a hash table of Response, StatusCode and Headers instead of just the Response

.OUTPUTS

Domain
#>
function Invoke-GroAdminPatchDomain {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [Int32]
        ${DomainID},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${XCsrfToken},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [PSCustomObject]
        ${PostDomainRequest},
        [Switch]
        $WithHttpInfo
    )

    Process {
        'Calling method: Invoke-GroAdminPatchDomain' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $LocalVarAccepts = @()
        $LocalVarContentTypes = @()
        $LocalVarQueryParameters = @{}
        $LocalVarHeaderParameters = @{}
        $LocalVarFormParameters = @{}
        $LocalVarPathParameters = @{}
        $LocalVarCookieParameters = @{}
        $LocalVarBodyParameter = $null

        $Configuration = Get-GroAdminConfiguration
        # HTTP header 'Accept' (if needed)
        $LocalVarAccepts = @('application/json')

        # HTTP header 'Content-Type'
        $LocalVarContentTypes = @('application/json')

        $LocalVarUri = '/system/domains/{domainID}'
        if (!$DomainID) {
            throw "Error! The required parameter `DomainID` missing when calling patchDomain."
        }
        $LocalVarUri = $LocalVarUri.replace('{domainID}', [System.Web.HTTPUtility]::UrlEncode($DomainID))

        if ($XCsrfToken) {
            $LocalVarHeaderParameters['X-Csrf-Token'] = $XCsrfToken
        }

        $LocalVarBodyParameter = $PostDomainRequest | ConvertTo-Json -Depth 100

        $LocalVarResult = Invoke-GroAdminApiClient -Method 'PATCH' `
                                -Uri $LocalVarUri `
                                -Accepts $LocalVarAccepts `
                                -ContentTypes $LocalVarContentTypes `
                                -Body $LocalVarBodyParameter `
                                -HeaderParameters $LocalVarHeaderParameters `
                                -QueryParameters $LocalVarQueryParameters `
                                -FormParameters $LocalVarFormParameters `
                                -CookieParameters $LocalVarCookieParameters `
                                -ReturnType "Domain" `
                                -IsBodyNullable $false

        if ($WithHttpInfo.IsPresent) {
            return $LocalVarResult
        } else {
            return $LocalVarResult["Response"]
        }
    }
}

<#
.SYNOPSIS

postDomain

.DESCRIPTION

No description available.

.PARAMETER XCsrfToken
CSRF Token

.PARAMETER CreateRole
Whether to automatically create a domain admin role for the new domain

.PARAMETER PostDomainRequest


.PARAMETER WithHttpInfo

A switch when turned on will return a hash table of Response, StatusCode and Headers instead of just the Response

.OUTPUTS

Domain
#>
function Submit-GroAdminDomain {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${XCsrfToken},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [System.Nullable[Boolean]]
        ${CreateRole},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [PSCustomObject]
        ${PostDomainRequest},
        [Switch]
        $WithHttpInfo
    )

    Process {
        'Calling method: Submit-GroAdminDomain' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $LocalVarAccepts = @()
        $LocalVarContentTypes = @()
        $LocalVarQueryParameters = @{}
        $LocalVarHeaderParameters = @{}
        $LocalVarFormParameters = @{}
        $LocalVarPathParameters = @{}
        $LocalVarCookieParameters = @{}
        $LocalVarBodyParameter = $null

        $Configuration = Get-GroAdminConfiguration
        # HTTP header 'Accept' (if needed)
        $LocalVarAccepts = @('application/json')

        # HTTP header 'Content-Type'
        $LocalVarContentTypes = @('application/json')

        $LocalVarUri = '/system/domains'

        if ($XCsrfToken) {
            $LocalVarHeaderParameters['X-Csrf-Token'] = $XCsrfToken
        }

        if ($CreateRole) {
            $LocalVarQueryParameters['createRole'] = $CreateRole
        }

        $LocalVarBodyParameter = $PostDomainRequest | ConvertTo-Json -Depth 100

        $LocalVarResult = Invoke-GroAdminApiClient -Method 'POST' `
                                -Uri $LocalVarUri `
                                -Accepts $LocalVarAccepts `
                                -ContentTypes $LocalVarContentTypes `
                                -Body $LocalVarBodyParameter `
                                -HeaderParameters $LocalVarHeaderParameters `
                                -QueryParameters $LocalVarQueryParameters `
                                -FormParameters $LocalVarFormParameters `
                                -CookieParameters $LocalVarCookieParameters `
                                -ReturnType "Domain" `
                                -IsBodyNullable $false

        if ($WithHttpInfo.IsPresent) {
            return $LocalVarResult
        } else {
            return $LocalVarResult["Response"]
        }
    }
}

