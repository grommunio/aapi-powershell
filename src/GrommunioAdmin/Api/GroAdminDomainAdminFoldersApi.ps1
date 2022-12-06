#
# grommunio Admin API
# grommunio administration REST API
# Version: 1.9.2
#

<#
.SYNOPSIS

deleteFolder

.DESCRIPTION

No description available.

.PARAMETER DomainID
ID of the domain

.PARAMETER FolderID
ID of the folder

.PARAMETER XCsrfToken
CSRF Token

.PARAMETER Clear
Clear folder before deleting it

.PARAMETER Timeout
Time in seconds to wait for completion

.PARAMETER WithHttpInfo

A switch when turned on will return a hash table of Response, StatusCode and Headers instead of just the Response

.OUTPUTS

DomainsFoldersResponse1
#>
function Invoke-GroAdminDeleteFolder {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [Int32]
        ${DomainID},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [Int32]
        ${FolderID},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${XCsrfToken},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [System.Nullable[Boolean]]
        ${Clear},
        [Parameter(Position = 4, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [System.Nullable[Double]]
        ${Timeout},
        [Switch]
        $WithHttpInfo
    )

    Process {
        'Calling method: Invoke-GroAdminDeleteFolder' | Write-Debug
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

        $LocalVarUri = '/domains/{domainID}/folders/{folderID}'
        if (!$DomainID) {
            throw "Error! The required parameter `DomainID` missing when calling deleteFolder."
        }
        $LocalVarUri = $LocalVarUri.replace('{domainID}', [System.Web.HTTPUtility]::UrlEncode($DomainID))
        if (!$FolderID) {
            throw "Error! The required parameter `FolderID` missing when calling deleteFolder."
        }
        $LocalVarUri = $LocalVarUri.replace('{folderID}', [System.Web.HTTPUtility]::UrlEncode($FolderID))

        if ($XCsrfToken) {
            $LocalVarHeaderParameters['X-Csrf-Token'] = $XCsrfToken
        }

        if ($Clear) {
            $LocalVarQueryParameters['clear'] = $Clear
        }

        if ($Timeout) {
            $LocalVarQueryParameters['timeout'] = $Timeout
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
                                -ReturnType "DomainsFoldersResponse1" `
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

deleteMember

.DESCRIPTION

No description available.

.PARAMETER DomainID
ID of the domain

.PARAMETER FolderID
ID of the folder

.PARAMETER MemberID
Member ID of the owner list

.PARAMETER XCsrfToken
CSRF Token

.PARAMETER WithHttpInfo

A switch when turned on will return a hash table of Response, StatusCode and Headers instead of just the Response

.OUTPUTS

None
#>
function Invoke-GroAdminDeleteMember {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [Int32]
        ${DomainID},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [Int32]
        ${FolderID},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [Int32]
        ${MemberID},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${XCsrfToken},
        [Switch]
        $WithHttpInfo
    )

    Process {
        'Calling method: Invoke-GroAdminDeleteMember' | Write-Debug
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

        $LocalVarUri = '/domains/{domainID}/folders/{folderID}/owners/{memberID}'
        if (!$DomainID) {
            throw "Error! The required parameter `DomainID` missing when calling deleteMember."
        }
        $LocalVarUri = $LocalVarUri.replace('{domainID}', [System.Web.HTTPUtility]::UrlEncode($DomainID))
        if (!$FolderID) {
            throw "Error! The required parameter `FolderID` missing when calling deleteMember."
        }
        $LocalVarUri = $LocalVarUri.replace('{folderID}', [System.Web.HTTPUtility]::UrlEncode($FolderID))
        if (!$MemberID) {
            throw "Error! The required parameter `MemberID` missing when calling deleteMember."
        }
        $LocalVarUri = $LocalVarUri.replace('{memberID}', [System.Web.HTTPUtility]::UrlEncode($MemberID))

        if ($XCsrfToken) {
            $LocalVarHeaderParameters['X-Csrf-Token'] = $XCsrfToken
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

getFolder

.DESCRIPTION

No description available.

.PARAMETER DomainID
ID of the domain

.PARAMETER FolderID
ID of the folder

.PARAMETER WithHttpInfo

A switch when turned on will return a hash table of Response, StatusCode and Headers instead of just the Response

.OUTPUTS

PublicFolder
#>
function Get-GroAdminFolder {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [Int32]
        ${DomainID},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [Int32]
        ${FolderID},
        [Switch]
        $WithHttpInfo
    )

    Process {
        'Calling method: Get-GroAdminFolder' | Write-Debug
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

        $LocalVarUri = '/domains/{domainID}/folders/{folderID}'
        if (!$DomainID) {
            throw "Error! The required parameter `DomainID` missing when calling getFolder."
        }
        $LocalVarUri = $LocalVarUri.replace('{domainID}', [System.Web.HTTPUtility]::UrlEncode($DomainID))
        if (!$FolderID) {
            throw "Error! The required parameter `FolderID` missing when calling getFolder."
        }
        $LocalVarUri = $LocalVarUri.replace('{folderID}', [System.Web.HTTPUtility]::UrlEncode($FolderID))

        $LocalVarResult = Invoke-GroAdminApiClient -Method 'GET' `
                                -Uri $LocalVarUri `
                                -Accepts $LocalVarAccepts `
                                -ContentTypes $LocalVarContentTypes `
                                -Body $LocalVarBodyParameter `
                                -HeaderParameters $LocalVarHeaderParameters `
                                -QueryParameters $LocalVarQueryParameters `
                                -FormParameters $LocalVarFormParameters `
                                -CookieParameters $LocalVarCookieParameters `
                                -ReturnType "PublicFolder" `
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

getFolderTree

.DESCRIPTION

No description available.

.PARAMETER DomainID
ID of the domain

.PARAMETER FolderID
ID of the root folder

.PARAMETER WithHttpInfo

A switch when turned on will return a hash table of Response, StatusCode and Headers instead of just the Response

.OUTPUTS

PublicFolderRef
#>
function Get-GroAdminFolderTree {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [Int32]
        ${DomainID},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [System.Nullable[Int32]]
        ${FolderID},
        [Switch]
        $WithHttpInfo
    )

    Process {
        'Calling method: Get-GroAdminFolderTree' | Write-Debug
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

        $LocalVarUri = '/domains/{domainID}/folders/tree'
        if (!$DomainID) {
            throw "Error! The required parameter `DomainID` missing when calling getFolderTree."
        }
        $LocalVarUri = $LocalVarUri.replace('{domainID}', [System.Web.HTTPUtility]::UrlEncode($DomainID))

        if ($FolderID) {
            $LocalVarQueryParameters['folderID'] = $FolderID
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
                                -ReturnType "PublicFolderRef" `
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

getFolders

.DESCRIPTION

No description available.

.PARAMETER DomainID
ID of the domain

.PARAMETER Offset
Index of the first element to return

.PARAMETER Limit
Maximum number of results to return

.PARAMETER Match
Match by substring

.PARAMETER ParentID
ID of the parent folder

.PARAMETER WithHttpInfo

A switch when turned on will return a hash table of Response, StatusCode and Headers instead of just the Response

.OUTPUTS

DomainsFoldersResponse
#>
function Get-GroAdminFolders {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [Int32]
        ${DomainID},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [System.Nullable[Int32]]
        ${Offset},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [System.Nullable[Int32]]
        ${Limit},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${Match},
        [Parameter(Position = 4, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [System.Nullable[Int32]]
        ${ParentID},
        [Switch]
        $WithHttpInfo
    )

    Process {
        'Calling method: Get-GroAdminFolders' | Write-Debug
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

        $LocalVarUri = '/domains/{domainID}/folders'
        if (!$DomainID) {
            throw "Error! The required parameter `DomainID` missing when calling getFolders."
        }
        $LocalVarUri = $LocalVarUri.replace('{domainID}', [System.Web.HTTPUtility]::UrlEncode($DomainID))

        if ($Offset) {
            $LocalVarQueryParameters['offset'] = $Offset
        }

        if ($Limit) {
            $LocalVarQueryParameters['limit'] = $Limit
        }

        if ($Match) {
            $LocalVarQueryParameters['match'] = $Match
        }

        if ($ParentID) {
            $LocalVarQueryParameters['parentID'] = $ParentID
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
                                -ReturnType "DomainsFoldersResponse" `
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

getOwners

.DESCRIPTION

No description available.

.PARAMETER DomainID
ID of the domain

.PARAMETER FolderID
ID of the folder

.PARAMETER WithHttpInfo

A switch when turned on will return a hash table of Response, StatusCode and Headers instead of just the Response

.OUTPUTS

DomainsFoldersOwnersResponse
#>
function Get-GroAdminOwners {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [Int32]
        ${DomainID},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [Int32]
        ${FolderID},
        [Switch]
        $WithHttpInfo
    )

    Process {
        'Calling method: Get-GroAdminOwners' | Write-Debug
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

        $LocalVarUri = '/domains/{domainID}/folders/{folderID}/owners'
        if (!$DomainID) {
            throw "Error! The required parameter `DomainID` missing when calling getOwners."
        }
        $LocalVarUri = $LocalVarUri.replace('{domainID}', [System.Web.HTTPUtility]::UrlEncode($DomainID))
        if (!$FolderID) {
            throw "Error! The required parameter `FolderID` missing when calling getOwners."
        }
        $LocalVarUri = $LocalVarUri.replace('{folderID}', [System.Web.HTTPUtility]::UrlEncode($FolderID))

        $LocalVarResult = Invoke-GroAdminApiClient -Method 'GET' `
                                -Uri $LocalVarUri `
                                -Accepts $LocalVarAccepts `
                                -ContentTypes $LocalVarContentTypes `
                                -Body $LocalVarBodyParameter `
                                -HeaderParameters $LocalVarHeaderParameters `
                                -QueryParameters $LocalVarQueryParameters `
                                -FormParameters $LocalVarFormParameters `
                                -CookieParameters $LocalVarCookieParameters `
                                -ReturnType "DomainsFoldersOwnersResponse" `
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

patchFolder

.DESCRIPTION

No description available.

.PARAMETER DomainID
ID of the domain

.PARAMETER FolderID
ID of the folder

.PARAMETER XCsrfToken
CSRF Token

.PARAMETER PatchFolderRequest


.PARAMETER WithHttpInfo

A switch when turned on will return a hash table of Response, StatusCode and Headers instead of just the Response

.OUTPUTS

None
#>
function Invoke-GroAdminPatchFolder {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [Int32]
        ${DomainID},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [Int32]
        ${FolderID},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${XCsrfToken},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [PSCustomObject]
        ${PatchFolderRequest},
        [Switch]
        $WithHttpInfo
    )

    Process {
        'Calling method: Invoke-GroAdminPatchFolder' | Write-Debug
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

        $LocalVarUri = '/domains/{domainID}/folders/{folderID}'
        if (!$DomainID) {
            throw "Error! The required parameter `DomainID` missing when calling patchFolder."
        }
        $LocalVarUri = $LocalVarUri.replace('{domainID}', [System.Web.HTTPUtility]::UrlEncode($DomainID))
        if (!$FolderID) {
            throw "Error! The required parameter `FolderID` missing when calling patchFolder."
        }
        $LocalVarUri = $LocalVarUri.replace('{folderID}', [System.Web.HTTPUtility]::UrlEncode($FolderID))

        if ($XCsrfToken) {
            $LocalVarHeaderParameters['X-Csrf-Token'] = $XCsrfToken
        }

        $LocalVarBodyParameter = $PatchFolderRequest | ConvertTo-Json -Depth 100

        $LocalVarResult = Invoke-GroAdminApiClient -Method 'PATCH' `
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

postFolders

.DESCRIPTION

No description available.

.PARAMETER DomainID
ID of the domain

.PARAMETER XCsrfToken
CSRF Token

.PARAMETER PostFoldersRequest


.PARAMETER WithHttpInfo

A switch when turned on will return a hash table of Response, StatusCode and Headers instead of just the Response

.OUTPUTS

PublicFolder
#>
function Submit-GroAdminFolders {
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
        ${PostFoldersRequest},
        [Switch]
        $WithHttpInfo
    )

    Process {
        'Calling method: Submit-GroAdminFolders' | Write-Debug
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

        $LocalVarUri = '/domains/{domainID}/folders'
        if (!$DomainID) {
            throw "Error! The required parameter `DomainID` missing when calling postFolders."
        }
        $LocalVarUri = $LocalVarUri.replace('{domainID}', [System.Web.HTTPUtility]::UrlEncode($DomainID))

        if ($XCsrfToken) {
            $LocalVarHeaderParameters['X-Csrf-Token'] = $XCsrfToken
        }

        $LocalVarBodyParameter = $PostFoldersRequest | ConvertTo-Json -Depth 100

        $LocalVarResult = Invoke-GroAdminApiClient -Method 'POST' `
                                -Uri $LocalVarUri `
                                -Accepts $LocalVarAccepts `
                                -ContentTypes $LocalVarContentTypes `
                                -Body $LocalVarBodyParameter `
                                -HeaderParameters $LocalVarHeaderParameters `
                                -QueryParameters $LocalVarQueryParameters `
                                -FormParameters $LocalVarFormParameters `
                                -CookieParameters $LocalVarCookieParameters `
                                -ReturnType "PublicFolder" `
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

postOwner

.DESCRIPTION

No description available.

.PARAMETER DomainID
ID of the domain

.PARAMETER FolderID
ID of the folder

.PARAMETER PostOwnerRequest


.PARAMETER XCsrfToken
CSRF Token

.PARAMETER WithHttpInfo

A switch when turned on will return a hash table of Response, StatusCode and Headers instead of just the Response

.OUTPUTS

None
#>
function Submit-GroAdminOwner {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [Int32]
        ${DomainID},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [Int32]
        ${FolderID},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [PSCustomObject]
        ${PostOwnerRequest},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${XCsrfToken},
        [Switch]
        $WithHttpInfo
    )

    Process {
        'Calling method: Submit-GroAdminOwner' | Write-Debug
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

        $LocalVarUri = '/domains/{domainID}/folders/{folderID}/owners'
        if (!$DomainID) {
            throw "Error! The required parameter `DomainID` missing when calling postOwner."
        }
        $LocalVarUri = $LocalVarUri.replace('{domainID}', [System.Web.HTTPUtility]::UrlEncode($DomainID))
        if (!$FolderID) {
            throw "Error! The required parameter `FolderID` missing when calling postOwner."
        }
        $LocalVarUri = $LocalVarUri.replace('{folderID}', [System.Web.HTTPUtility]::UrlEncode($FolderID))

        if ($XCsrfToken) {
            $LocalVarHeaderParameters['X-Csrf-Token'] = $XCsrfToken
        }

        if (!$PostOwnerRequest) {
            throw "Error! The required parameter `PostOwnerRequest` missing when calling postOwner."
        }

        $LocalVarBodyParameter = $PostOwnerRequest | ConvertTo-Json -Depth 100

        $LocalVarResult = Invoke-GroAdminApiClient -Method 'POST' `
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

setMember

.DESCRIPTION

No description available.

.PARAMETER DomainID
ID of the domain

.PARAMETER FolderID
ID of the folder

.PARAMETER MemberID
Member ID of the owner list

.PARAMETER SetMemberRequest


.PARAMETER XCsrfToken
CSRF Token

.PARAMETER WithHttpInfo

A switch when turned on will return a hash table of Response, StatusCode and Headers instead of just the Response

.OUTPUTS

None
#>
function Set-GroAdminMember {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [Int32]
        ${DomainID},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [Int32]
        ${FolderID},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [Int32]
        ${MemberID},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [PSCustomObject]
        ${SetMemberRequest},
        [Parameter(Position = 4, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${XCsrfToken},
        [Switch]
        $WithHttpInfo
    )

    Process {
        'Calling method: Set-GroAdminMember' | Write-Debug
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

        $LocalVarUri = '/domains/{domainID}/folders/{folderID}/owners/{memberID}'
        if (!$DomainID) {
            throw "Error! The required parameter `DomainID` missing when calling setMember."
        }
        $LocalVarUri = $LocalVarUri.replace('{domainID}', [System.Web.HTTPUtility]::UrlEncode($DomainID))
        if (!$FolderID) {
            throw "Error! The required parameter `FolderID` missing when calling setMember."
        }
        $LocalVarUri = $LocalVarUri.replace('{folderID}', [System.Web.HTTPUtility]::UrlEncode($FolderID))
        if (!$MemberID) {
            throw "Error! The required parameter `MemberID` missing when calling setMember."
        }
        $LocalVarUri = $LocalVarUri.replace('{memberID}', [System.Web.HTTPUtility]::UrlEncode($MemberID))

        if ($XCsrfToken) {
            $LocalVarHeaderParameters['X-Csrf-Token'] = $XCsrfToken
        }

        if (!$SetMemberRequest) {
            throw "Error! The required parameter `SetMemberRequest` missing when calling setMember."
        }

        $LocalVarBodyParameter = $SetMemberRequest | ConvertTo-Json -Depth 100

        $LocalVarResult = Invoke-GroAdminApiClient -Method 'PUT' `
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

