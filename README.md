# grommunio Admin API Powershell (AAPIPS)

![project license](https://img.shields.io/badge/license-AGPL--3.0-orange)
[![latest version](https://shields.io/github/v/tag/grommunio/aapi-powershell)](https://github.com/grommunio/aapi-powershell/tags)
[![code size](https://img.shields.io/github/languages/code-size/grommunio/aapi-powershell)](https://github.com/grommunio/aapi-powershell)
[![pull requests welcome](https://img.shields.io/badge/PRs-welcome-ff69b4.svg)](https://github.com/grommunio/aapi-powershell/issues?q=is%3Aissue+is%3Aopen+label%3A%22help+wanted%22)
[![code with love by grommunio](https://img.shields.io/badge/%3C%2F%3E%20with%20%E2%99%A5%20by-grommunio-ff1414.svg)](https://grommunio.com)
[![twitter](https://img.shields.io/twitter/follow/grommunio?style=social)](https://twitter.com/grommunio)

grommunio AAPIPS (Admin API Powershell) is the Powershell interface to the REST-based [grommunio Admin API](https://github.com/grommunio/admin-api) to manage entire grommunio installations from Powershell

<details open="open">
<summary>Overview</summary>

- [About](#about)
- [Getting Started](#getting-started)
  - [Prerequisites](#prerequisites)
  - [Installation](#installation)
  - [Example](#example)
  - [Removal](#removal)
  - [Tests](#tests)
- [API Documentation](#api-documentation)
  - [Documentation for API Endpoints](#documentation-for-api-endpoints)
  - [Documentation for Models](#documentation-for-models)
- [Status](#status)
- [Support](#support)
- [Project assistance](#project-assistance)
- [Contributing](#contributing)
  - [Additional notes](#additional-notes)
- [Security](#security)
- [License](#license)

</details>

---

## About grommunio AAPIPS

- Simple management of grommunio for Microsoft Administrators
- Well-documented interface descriptions
- Powerful Powershell interface allows simple and complex management tasks with grommunio
- Standardized calls enable full compliance with grommunio Admin API
- Standalone, requiring no dependencies to run

## Getting Started

### Prerequisites

grommunio AAPIPS requires Powershell 6.2 or later to run.

### Installation

grommunio AAPIPS is soon available as install-ready module from the [Powershell Gallery](https://www.powershellgallery.com/), until then please refer to the manual installation.

For manual installation, use [Build.ps1](Build.ps1) and import the resulting Module:

```powershell
Build.ps1
Import-Module -Name '.\src\GrommunioAdmin' -Verbose
```

### Example

```powershell
# Import grommunioAdmin Powershell module
Import-Module -Name '.\src\GrommunioAdmin' -Verbose

# Define grommunio Admin API credentials
$grommunioHost="https://mail.example.com:8443"
$grommunioUsername="admin"
$grommunioPassword="VerySecureAP1-Passw0rd"

# Set grommunio Admin API endpoint
$APIEndpoint = -join($grommunioHost,"/api/v1")
Set-GroAdminConfiguration -BaseUrl $APIEndpoint

# Login to grommunio Admin API
$LoginResult = (Submit-GroAdminLogin -User $grommunioUsername -Pass $grommunioPassword)
$LoginCookie = -join("grommunioAuthJwt=",$LoginResult.grommunioAuthJwt)
$LoginCSRF = $LoginResult.csrf

# Set authentication headers for any request
Set-GroAdminConfiguration -DefaultHeaders @{"Cookie"="$LoginCookie";"X-CSRF-TOKEN"="$LoginCSRF"}

PS> Get-GroAdminAbout

API    backend schema
---    ------- ------
1.19.0 2.4         149

PS> $domains = $(Get-GroAdminDomains).data
PS> echo $domains

ID            : 1
domainname    : grommunio.com
displayname   : grommunio.com
orgID         : 1
maxUser       : 100
activeUsers   : 43
inactiveUsers : 1
title         : grommunio
address       : DC Tower, Donau-City-Str. 7 / door 2 / 30th floor, 1220 Vienna, Austria
adminName     : 
tel           :
endDay        : 2050-09-30
domainStatus  : 0
```

### Removal

To uninstall the module, simply run:
```powershell
Remove-Module -FullyQualifiedName @{ModuleName = "GrommunioAdmin"; ModuleVersion = "1.19.0"}
```

### Tests

To install and run `Pester`, please execute the following commands in the terminal:

```powershell
Install-module -name Pester -force
Invoke-Pester
```

For troubleshooting, please run `$DebugPreference = 'Continue'` to turn on debugging and disable it with `$DebugPreference = 'SilentlyContinue'` when done with the troubleshooting.

## API Documentation

### Documentation for API Endpoints

All URIs are relative to */api/v1*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
GroAdminDefaultApi | [Invoke-GroAdminCheckForUpdates](docs/GroAdminDefaultApi.md#Invoke-GroAdminCheckForUpdates) | POST /system/updates/{command} | checkForUpdates
GroAdminDefaultsApi | [Get-GroAdminCreateParams](docs/GroAdminDefaultsApi.md#Get-GroAdminCreateParams) | GET /defaults/createParams | getCreateParams
GroAdminDefaultsApi | [Get-GroAdminDomainDefaultParams](docs/GroAdminDefaultsApi.md#Get-GroAdminDomainDefaultParams) | GET /defaults/createParams/{domainID} | getDomainDefaultParams
GroAdminDefaultsApi | [Get-GroAdminStoreLangs](docs/GroAdminDefaultsApi.md#Get-GroAdminStoreLangs) | GET /defaults/storeLangs | getStoreLangs
GroAdminDefaultsApi | [Invoke-GroAdminPatchCreateParams](docs/GroAdminDefaultsApi.md#Invoke-GroAdminPatchCreateParams) | PATCH /defaults/createParams | patchCreateParams
GroAdminDefaultsApi | [Invoke-GroAdminPatchDomainDefaultParams](docs/GroAdminDefaultsApi.md#Invoke-GroAdminPatchDomainDefaultParams) | PATCH /defaults/createParams/{domainID} | patchDomainDefaultParams
GroAdminDefaultsApi | [Send-GroAdminCreateParams](docs/GroAdminDefaultsApi.md#Send-GroAdminCreateParams) | PUT /defaults/createParams | putCreateParams
GroAdminDefaultsApi | [Send-GroAdminDomainDefaultParams](docs/GroAdminDefaultsApi.md#Send-GroAdminDomainDefaultParams) | PUT /defaults/createParams/{domainID} | putDomainDefaultParams
GroAdminDomainAdminFoldersApi | [Invoke-GroAdminDeleteFolder](docs/GroAdminDomainAdminFoldersApi.md#Invoke-GroAdminDeleteFolder) | DELETE /domains/{domainID}/folders/{folderID} | deleteFolder
GroAdminDomainAdminFoldersApi | [Invoke-GroAdminDeleteMember](docs/GroAdminDomainAdminFoldersApi.md#Invoke-GroAdminDeleteMember) | DELETE /domains/{domainID}/folders/{folderID}/owners/{memberID} | deleteMember
GroAdminDomainAdminFoldersApi | [Get-GroAdminFolder](docs/GroAdminDomainAdminFoldersApi.md#Get-GroAdminFolder) | GET /domains/{domainID}/folders/{folderID} | getFolder
GroAdminDomainAdminFoldersApi | [Get-GroAdminFolderTree](docs/GroAdminDomainAdminFoldersApi.md#Get-GroAdminFolderTree) | GET /domains/{domainID}/folders/tree | getFolderTree
GroAdminDomainAdminFoldersApi | [Get-GroAdminFolders](docs/GroAdminDomainAdminFoldersApi.md#Get-GroAdminFolders) | GET /domains/{domainID}/folders | getFolders
GroAdminDomainAdminFoldersApi | [Get-GroAdminOwners](docs/GroAdminDomainAdminFoldersApi.md#Get-GroAdminOwners) | GET /domains/{domainID}/folders/{folderID}/owners | getOwners
GroAdminDomainAdminFoldersApi | [Invoke-GroAdminPatchFolder](docs/GroAdminDomainAdminFoldersApi.md#Invoke-GroAdminPatchFolder) | PATCH /domains/{domainID}/folders/{folderID} | patchFolder
GroAdminDomainAdminFoldersApi | [Submit-GroAdminFolders](docs/GroAdminDomainAdminFoldersApi.md#Submit-GroAdminFolders) | POST /domains/{domainID}/folders | postFolders
GroAdminDomainAdminFoldersApi | [Submit-GroAdminOwner](docs/GroAdminDomainAdminFoldersApi.md#Submit-GroAdminOwner) | POST /domains/{domainID}/folders/{folderID}/owners | postOwner
GroAdminDomainAdminFoldersApi | [Set-GroAdminMember](docs/GroAdminDomainAdminFoldersApi.md#Set-GroAdminMember) | PUT /domains/{domainID}/folders/{folderID}/owners/{memberID} | setMember
GroAdminDomainAdminMListsApi | [Invoke-GroAdminDeleteMlist](docs/GroAdminDomainAdminMListsApi.md#Invoke-GroAdminDeleteMlist) | DELETE /domains/{domainID}/mlists/{ID} | deleteMlist
GroAdminDomainAdminMListsApi | [Get-GroAdminMlist](docs/GroAdminDomainAdminMListsApi.md#Get-GroAdminMlist) | GET /domains/{domainID}/mlists/{ID} | getMlist
GroAdminDomainAdminMListsApi | [Get-GroAdminMlists](docs/GroAdminDomainAdminMListsApi.md#Get-GroAdminMlists) | GET /domains/{domainID}/mlists | getMlists
GroAdminDomainAdminMListsApi | [Invoke-GroAdminPatchMlist](docs/GroAdminDomainAdminMListsApi.md#Invoke-GroAdminPatchMlist) | PATCH /domains/{domainID}/mlists/{ID} | patchMlist
GroAdminDomainAdminMListsApi | [Submit-GroAdminMlists](docs/GroAdminDomainAdminMListsApi.md#Submit-GroAdminMlists) | POST /domains/{domainID}/mlists | postMlists
GroAdminDomainAdminUsersApi | [Stop-GroAdminWipe](docs/GroAdminDomainAdminUsersApi.md#Stop-GroAdminWipe) | DELETE /domains/{domainID}/users/{userID}/sync/{deviceID}/wipe | cancelWipe
GroAdminDomainAdminUsersApi | [Invoke-GroAdminDeleteStoreAccessUser](docs/GroAdminDomainAdminUsersApi.md#Invoke-GroAdminDeleteStoreAccessUser) | DELETE /domains/{domainID}/users/{userID}/storeAccess/{username} | deleteStoreAccessUser
GroAdminDomainAdminUsersApi | [Invoke-GroAdminDeleteStoreProps](docs/GroAdminDomainAdminUsersApi.md#Invoke-GroAdminDeleteStoreProps) | DELETE /domains/{domainID}/users/{userID}/storeProps | deleteStoreProps
GroAdminDomainAdminUsersApi | [Invoke-GroAdminDeleteUser](docs/GroAdminDomainAdminUsersApi.md#Invoke-GroAdminDeleteUser) | DELETE /domains/{domainID}/users/{userID} | deleteUser
GroAdminDomainAdminUsersApi | [Get-GroAdminDelegates](docs/GroAdminDomainAdminUsersApi.md#Get-GroAdminDelegates) | GET /domains/{domainID}/users/{userID}/delegates | getDelegates
GroAdminDomainAdminUsersApi | [Get-GroAdminDomainSyncPolicy](docs/GroAdminDomainAdminUsersApi.md#Get-GroAdminDomainSyncPolicy) | GET /domains/{domainID}/syncPolicy | getDomainSyncPolicy
GroAdminDomainAdminUsersApi | [Get-GroAdminSendas](docs/GroAdminDomainAdminUsersApi.md#Get-GroAdminSendas) | GET /domains/{domainID}/users/{userID}/sendas | getSendas
GroAdminDomainAdminUsersApi | [Get-GroAdminStoreAccessUsers](docs/GroAdminDomainAdminUsersApi.md#Get-GroAdminStoreAccessUsers) | GET /domains/{domainID}/users/{userID}/storeAccess | getStoreAccessUsers
GroAdminDomainAdminUsersApi | [Get-GroAdminStoreProps](docs/GroAdminDomainAdminUsersApi.md#Get-GroAdminStoreProps) | GET /domains/{domainID}/users/{userID}/storeProps | getStoreProps
GroAdminDomainAdminUsersApi | [Get-GroAdminSyncedDevices](docs/GroAdminDomainAdminUsersApi.md#Get-GroAdminSyncedDevices) | GET /domains/{domainID}/users/{userID}/sync | getSyncedDevices
GroAdminDomainAdminUsersApi | [Get-GroAdminUser](docs/GroAdminDomainAdminUsersApi.md#Get-GroAdminUser) | GET /domains/{domainID}/users/{userID} | getUser
GroAdminDomainAdminUsersApi | [Get-GroAdminUsers](docs/GroAdminDomainAdminUsersApi.md#Get-GroAdminUsers) | GET /domains/{domainID}/users | getUsers
GroAdminDomainAdminUsersApi | [Invoke-GroAdminOofSizeLarge](docs/GroAdminDomainAdminUsersApi.md#Invoke-GroAdminOofSizeLarge) | GET /domains/{domainID}/users/{userID}/oof | oofSizeLarge
GroAdminDomainAdminUsersApi | [Invoke-GroAdminPatchStoreProps](docs/GroAdminDomainAdminUsersApi.md#Invoke-GroAdminPatchStoreProps) | PATCH /domains/{domainID}/users/{userID}/storeProps | patchStoreProps
GroAdminDomainAdminUsersApi | [Invoke-GroAdminPatchUser](docs/GroAdminDomainAdminUsersApi.md#Invoke-GroAdminPatchUser) | PATCH /domains/{domainID}/users/{userID} | patchUser
GroAdminDomainAdminUsersApi | [Submit-GroAdminDeviceWipe](docs/GroAdminDomainAdminUsersApi.md#Submit-GroAdminDeviceWipe) | POST /domains/{domainID}/users/{userID}/sync/{deviceID}/wipe | postDeviceWipe
GroAdminDomainAdminUsersApi | [Submit-GroAdminStoreAccessUser](docs/GroAdminDomainAdminUsersApi.md#Submit-GroAdminStoreAccessUser) | POST /domains/{domainID}/users/{userID}/storeAccess | postStoreAccessUser
GroAdminDomainAdminUsersApi | [Submit-GroAdminUser](docs/GroAdminDomainAdminUsersApi.md#Submit-GroAdminUser) | POST /domains/{domainID}/users | postUser
GroAdminDomainAdminUsersApi | [Send-GroAdminDelegates](docs/GroAdminDomainAdminUsersApi.md#Send-GroAdminDelegates) | PUT /domains/{domainID}/users/{userID}/delegates | putDelegates
GroAdminDomainAdminUsersApi | [Send-GroAdminDeviceResync](docs/GroAdminDomainAdminUsersApi.md#Send-GroAdminDeviceResync) | PUT /domains/{domainID}/users/{userID}/sync/{deviceID}/resync | putDeviceResync
GroAdminDomainAdminUsersApi | [Send-GroAdminDownsync](docs/GroAdminDomainAdminUsersApi.md#Send-GroAdminDownsync) | PUT /domains/{domainID}/users/{userID}/downsync | putDownsync
GroAdminDomainAdminUsersApi | [Send-GroAdminSendas](docs/GroAdminDomainAdminUsersApi.md#Send-GroAdminSendas) | PUT /domains/{domainID}/users/{userID}/sendas | putSendas
GroAdminDomainAdminUsersApi | [Send-GroAdminStoreAccessUser](docs/GroAdminDomainAdminUsersApi.md#Send-GroAdminStoreAccessUser) | PUT /domains/{domainID}/users/{userID}/storeAccess | putStoreAccessUser
GroAdminDomainAdminUsersApi | [Remove-GroAdminDeviceResync](docs/GroAdminDomainAdminUsersApi.md#Remove-GroAdminDeviceResync) | DELETE /domains/{domainID}/users/{userID}/sync/{deviceID} | removeDeviceResync
GroAdminDomainAdminUsersApi | [Remove-GroAdminDeviceStates](docs/GroAdminDomainAdminUsersApi.md#Remove-GroAdminDeviceStates) | DELETE /domains/{domainID}/users/{userID}/sync | removeDeviceStates
GroAdminDomainAdminUsersApi | [Set-GroAdminOofSize](docs/GroAdminDomainAdminUsersApi.md#Set-GroAdminOofSize) | PUT /domains/{domainID}/users/{userID}/oof | setOofSize
GroAdminDomainAdminUsersApi | [Set-GroAdminPassword](docs/GroAdminDomainAdminUsersApi.md#Set-GroAdminPassword) | PUT /domains/{domainID}/users/{userID}/password | setPassword
GroAdminExmdbApi | [Submit-GroAdminUserFolderPermissionsGrant](docs/GroAdminExmdbApi.md#Submit-GroAdminUserFolderPermissionsGrant) | POST /system/exmdb/{username}/folders/{fid}/permissions | postUserFolderPermissionsGrant
GroAdminExmdbApi | [Submit-GroAdminUserFolderPermissionsGrant0](docs/GroAdminExmdbApi.md#Submit-GroAdminUserFolderPermissionsGrant0) | DELETE /system/exmdb/{username}/folders/{fid}/permissions | postUserFolderPermissionsGrant
GroAdminExmdbApi | [Use-GroAdminrFolder](docs/GroAdminExmdbApi.md#Use-GroAdminrFolder) | GET /system/exmdb/{username}/folders/{fid} | userFolder
GroAdminExmdbApi | [Use-GroAdminrFolders](docs/GroAdminExmdbApi.md#Use-GroAdminrFolders) | GET /system/exmdb/{username}/folders | userFolders
GroAdminLDAPApi | [Invoke-GroAdminCheckUsers](docs/GroAdminLDAPApi.md#Invoke-GroAdminCheckUsers) | GET /domains/ldap/check | checkUsers
GroAdminLDAPApi | [Invoke-GroAdminDeleteLDAPConf](docs/GroAdminLDAPApi.md#Invoke-GroAdminDeleteLDAPConf) | DELETE /system/mconf/ldap | deleteLDAPConf
GroAdminLDAPApi | [Invoke-GroAdminDeleteOrgLDAPConf](docs/GroAdminLDAPApi.md#Invoke-GroAdminDeleteOrgLDAPConf) | DELETE /system/orgs/{ID}/ldap | deleteOrgLDAPConf
GroAdminLDAPApi | [Invoke-GroAdminDeleteOrphaned](docs/GroAdminLDAPApi.md#Invoke-GroAdminDeleteOrphaned) | DELETE /domains/ldap/check | deleteOrphaned
GroAdminLDAPApi | [Get-GroAdminLDAP](docs/GroAdminLDAPApi.md#Get-GroAdminLDAP) | GET /domains/ldap/dump | dumpLDAP
GroAdminLDAPApi | [Get-GroAdminLDAPConf](docs/GroAdminLDAPApi.md#Get-GroAdminLDAPConf) | GET /system/mconf/ldap | getLDAPConf
GroAdminLDAPApi | [Get-GroAdminOrgLDAPConf](docs/GroAdminLDAPApi.md#Get-GroAdminOrgLDAPConf) | GET /system/orgs/{ID}/ldap | getOrgLDAPConf
GroAdminLDAPApi | [Import-GroAdminLdapUser](docs/GroAdminLDAPApi.md#Import-GroAdminLdapUser) | POST /domains/ldap/importUser | importLdapUser
GroAdminLDAPApi | [Send-GroAdminDownsync](docs/GroAdminLDAPApi.md#Send-GroAdminDownsync) | PUT /domains/{domainID}/users/{userID}/downsync | putDownsync
GroAdminLDAPApi | [Search-GroAdminLDAP](docs/GroAdminLDAPApi.md#Search-GroAdminLDAP) | GET /domains/ldap/search | searchLDAP
GroAdminLDAPApi | [Set-GroAdminLDAPConf](docs/GroAdminLDAPApi.md#Set-GroAdminLDAPConf) | PUT /system/mconf/ldap | setLDAPConf
GroAdminLDAPApi | [Set-GroAdminOrgLDAPConf](docs/GroAdminLDAPApi.md#Set-GroAdminOrgLDAPConf) | PUT /system/orgs/{ID}/ldap | setOrgLDAPConf
GroAdminLDAPApi | [Update-GroAdminAllDomainUsers](docs/GroAdminLDAPApi.md#Update-GroAdminAllDomainUsers) | POST /domains/{domainID}/ldap/downsync | updateAllDomainUsers
GroAdminLDAPApi | [Update-GroAdminAllUsers](docs/GroAdminLDAPApi.md#Update-GroAdminAllUsers) | POST /domains/ldap/downsync | updateAllUsers
GroAdminLDAPApi | [Update-GroAdminOrgLDAPUsers](docs/GroAdminLDAPApi.md#Update-GroAdminOrgLDAPUsers) | POST /system/orgs/{ID}/ldap/downsync | updateOrgLDAPUsers
GroAdminMiscApi | [Invoke-GroAdminCheckFormat](docs/GroAdminMiscApi.md#Invoke-GroAdminCheckFormat) | GET /chkFormat | checkFormat
GroAdminMiscApi | [Invoke-GroAdminDeleteMailq](docs/GroAdminMiscApi.md#Invoke-GroAdminDeleteMailq) | POST /system/mailq/delete | deleteMailq
GroAdminMiscApi | [Clear-GroAdminMailq](docs/GroAdminMiscApi.md#Clear-GroAdminMailq) | POST /system/mailq/flush | flushMailq
GroAdminMiscApi | [Get-GroAdminAbout](docs/GroAdminMiscApi.md#Get-GroAdminAbout) | GET /about | getAbout
GroAdminMiscApi | [Get-GroAdminDomainDnsCheck](docs/GroAdminMiscApi.md#Get-GroAdminDomainDnsCheck) | GET /domains/{domainID}/dnsCheck | getDomainDnsCheck
GroAdminMiscApi | [Get-GroAdminMailq](docs/GroAdminMiscApi.md#Get-GroAdminMailq) | GET /system/mailq | getMailq
GroAdminMiscApi | [Get-GroAdminProfile](docs/GroAdminMiscApi.md#Get-GroAdminProfile) | GET /profile | getProfile
GroAdminMiscApi | [Get-GroAdminStatus](docs/GroAdminMiscApi.md#Get-GroAdminStatus) | GET /status | getStatus
GroAdminMiscApi | [Get-GroAdminUserDomains](docs/GroAdminMiscApi.md#Get-GroAdminUserDomains) | GET /domains | getUserDomains
GroAdminMiscApi | [Get-GroAdminUsernames](docs/GroAdminMiscApi.md#Get-GroAdminUsernames) | GET /users | getUsernames
GroAdminMiscApi | [Submit-GroAdminLogin](docs/GroAdminMiscApi.md#Submit-GroAdminLogin) | POST /login | postLogin
GroAdminMiscApi | [Submit-GroAdminRequeue](docs/GroAdminMiscApi.md#Submit-GroAdminRequeue) | POST /system/mailq/requeue | postRequeue
GroAdminMiscApi | [Send-GroAdminPasswd](docs/GroAdminMiscApi.md#Send-GroAdminPasswd) | PUT /passwd | putPasswd
GroAdminMiscApi | [Invoke-GroAdminRemoteCLI](docs/GroAdminMiscApi.md#Invoke-GroAdminRemoteCLI) | POST /system/cli | remoteCLI
GroAdminMiscApi | [Reset-GroAdminPasswd](docs/GroAdminMiscApi.md#Reset-GroAdminPasswd) | PUT /passwd/{username} | resetPasswd
GroAdminMiscApi | [Sync-GroAdminTop](docs/GroAdminMiscApi.md#Sync-GroAdminTop) | GET /system/sync/top | syncTop
GroAdminServiceApi | [Get-GroAdminUserDeviceLastConnect](docs/GroAdminServiceApi.md#Get-GroAdminUserDeviceLastConnect) | GET /service/lastconnect/{username} | getUserDeviceLastConnect
GroAdminServiceApi | [Get-GroAdminUserDeviceWipeStatus](docs/GroAdminServiceApi.md#Get-GroAdminUserDeviceWipeStatus) | GET /service/wipe/{username} | getUserDeviceWipeStatus
GroAdminServiceApi | [Get-GroAdminUserInformation](docs/GroAdminServiceApi.md#Get-GroAdminUserInformation) | GET /service/userinfo/{username} | getUserInformation
GroAdminServiceApi | [Get-GroAdminUserSyncPolicy](docs/GroAdminServiceApi.md#Get-GroAdminUserSyncPolicy) | GET /service/syncPolicy/{username} | getUserSyncPolicy
GroAdminServiceApi | [Send-GroAdminPasswd](docs/GroAdminServiceApi.md#Send-GroAdminPasswd) | PUT /passwd | putPasswd
GroAdminServiceApi | [Set-GroAdminUserDeviceWipeStatus](docs/GroAdminServiceApi.md#Set-GroAdminUserDeviceWipeStatus) | POST /service/wipe/{username} | setUserDeviceWipeStatus
GroAdminSystemAdminDBConfApi | [Invoke-GroAdminDeleteConfigFile](docs/GroAdminSystemAdminDBConfApi.md#Invoke-GroAdminDeleteConfigFile) | DELETE /system/dbconf/{service}/{file}/ | deleteConfigFile
GroAdminSystemAdminDBConfApi | [Invoke-GroAdminDeleteServiceConfig](docs/GroAdminSystemAdminDBConfApi.md#Invoke-GroAdminDeleteServiceConfig) | DELETE /system/dbconf/{service}/ | deleteServiceConfig
GroAdminSystemAdminDBConfApi | [Get-GroAdminCommandList](docs/GroAdminSystemAdminDBConfApi.md#Get-GroAdminCommandList) | GET /system/dbconf/commands | getCommandList
GroAdminSystemAdminDBConfApi | [Get-GroAdminConfigFile](docs/GroAdminSystemAdminDBConfApi.md#Get-GroAdminConfigFile) | GET /system/dbconf/{service}/{file}/ | getConfigFile
GroAdminSystemAdminDBConfApi | [Get-GroAdminServiceFiles](docs/GroAdminSystemAdminDBConfApi.md#Get-GroAdminServiceFiles) | GET /system/dbconf/{service}/ | getServiceFiles
GroAdminSystemAdminDBConfApi | [Get-GroAdminServicesListDBConf](docs/GroAdminSystemAdminDBConfApi.md#Get-GroAdminServicesListDBConf) | GET /system/dbconf/ | getServicesListDBConf
GroAdminSystemAdminDBConfApi | [Invoke-GroAdminPatchConfigFile](docs/GroAdminSystemAdminDBConfApi.md#Invoke-GroAdminPatchConfigFile) | PATCH /system/dbconf/{service}/{file}/ | patchConfigFile
GroAdminSystemAdminDBConfApi | [Invoke-GroAdminPatchServiceFiles](docs/GroAdminSystemAdminDBConfApi.md#Invoke-GroAdminPatchServiceFiles) | PATCH /system/dbconf/{service}/ | patchServiceFiles
GroAdminSystemAdminDBConfApi | [Send-GroAdminConfigFile](docs/GroAdminSystemAdminDBConfApi.md#Send-GroAdminConfigFile) | PUT /system/dbconf/{service}/{file}/ | putConfigFile
GroAdminSystemAdminDashboardApi | [Get-GroAdminDashboard](docs/GroAdminSystemAdminDashboardApi.md#Get-GroAdminDashboard) | GET /system/dashboard | getDashboard
GroAdminSystemAdminDashboardApi | [Get-GroAdminServiceInfo](docs/GroAdminSystemAdminDashboardApi.md#Get-GroAdminServiceInfo) | GET /system/dashboard/services/{unit} | getServiceInfo
GroAdminSystemAdminDashboardApi | [Get-GroAdminServicesList](docs/GroAdminSystemAdminDashboardApi.md#Get-GroAdminServicesList) | GET /system/dashboard/services | getServicesList
GroAdminSystemAdminDashboardApi | [Send-GroAdminServiceSignal](docs/GroAdminSystemAdminDashboardApi.md#Send-GroAdminServiceSignal) | POST /system/dashboard/services/{unit}/{action} | sendServiceSignal
GroAdminSystemAdminDomainsApi | [Invoke-GroAdminDeleteDomain](docs/GroAdminSystemAdminDomainsApi.md#Invoke-GroAdminDeleteDomain) | DELETE /system/domains/{domainID} | deleteDomain
GroAdminSystemAdminDomainsApi | [Get-GroAdminAllUsers](docs/GroAdminSystemAdminDomainsApi.md#Get-GroAdminAllUsers) | GET /system/users | getAllUsers
GroAdminSystemAdminDomainsApi | [Get-GroAdminDomainInfo](docs/GroAdminSystemAdminDomainsApi.md#Get-GroAdminDomainInfo) | GET /system/domains/{domainID} | getDomainInfo
GroAdminSystemAdminDomainsApi | [Get-GroAdminDomains](docs/GroAdminSystemAdminDomainsApi.md#Get-GroAdminDomains) | GET /system/domains | getDomains
GroAdminSystemAdminDomainsApi | [Invoke-GroAdminPatchDomain](docs/GroAdminSystemAdminDomainsApi.md#Invoke-GroAdminPatchDomain) | PATCH /system/domains/{domainID} | patchDomain
GroAdminSystemAdminDomainsApi | [Submit-GroAdminDomain](docs/GroAdminSystemAdminDomainsApi.md#Submit-GroAdminDomain) | POST /system/domains | postDomain
GroAdminSystemAdminLicenseApi | [Invoke-GroAdminDownloadCert](docs/GroAdminSystemAdminLicenseApi.md#Invoke-GroAdminDownloadCert) | GET /system/license/certificate.pem | downloadCert
GroAdminSystemAdminLicenseApi | [Get-GroAdminLicense](docs/GroAdminSystemAdminLicenseApi.md#Get-GroAdminLicense) | GET /system/license | getLicense
GroAdminSystemAdminLicenseApi | [Get-GroAdminLicenseCredentials](docs/GroAdminSystemAdminLicenseApi.md#Get-GroAdminLicenseCredentials) | GET /system/license/creds | getLicenseCredentials
GroAdminSystemAdminLicenseApi | [Send-GroAdminLicense](docs/GroAdminSystemAdminLicenseApi.md#Send-GroAdminLicense) | PUT /system/license | putLicense
GroAdminSystemAdminLicenseApi | [Set-GroAdminLicenseCredentials](docs/GroAdminSystemAdminLicenseApi.md#Set-GroAdminLicenseCredentials) | PUT /system/license/creds | setLicenseCredentials
GroAdminSystemAdminLogsApi | [Get-GroAdminLog](docs/GroAdminSystemAdminLogsApi.md#Get-GroAdminLog) | GET /system/logs/{file} | getLog
GroAdminSystemAdminLogsApi | [Get-GroAdminLogs](docs/GroAdminSystemAdminLogsApi.md#Get-GroAdminLogs) | GET /system/logs | getLogs
GroAdminSystemAdminLogsApi | [Get-GroAdminUpdateLog](docs/GroAdminSystemAdminLogsApi.md#Get-GroAdminUpdateLog) | GET /system/updateLog/{pid} | getUpdateLog
GroAdminSystemAdminMConfApi | [Invoke-GroAdminDeleteAuthmgr](docs/GroAdminSystemAdminMConfApi.md#Invoke-GroAdminDeleteAuthmgr) | DELETE /system/mconf/authmgr | deleteAuthmgr
GroAdminSystemAdminMConfApi | [Invoke-GroAdminDeleteLDAPConf](docs/GroAdminSystemAdminMConfApi.md#Invoke-GroAdminDeleteLDAPConf) | DELETE /system/mconf/ldap | deleteLDAPConf
GroAdminSystemAdminMConfApi | [Get-GroAdminAuthmgr](docs/GroAdminSystemAdminMConfApi.md#Get-GroAdminAuthmgr) | GET /system/mconf/authmgr | getAuthmgr
GroAdminSystemAdminMConfApi | [Get-GroAdminLDAPConf](docs/GroAdminSystemAdminMConfApi.md#Get-GroAdminLDAPConf) | GET /system/mconf/ldap | getLDAPConf
GroAdminSystemAdminMConfApi | [Set-GroAdminAuthmgr](docs/GroAdminSystemAdminMConfApi.md#Set-GroAdminAuthmgr) | PUT /system/mconf/authmgr | setAuthmgr
GroAdminSystemAdminMConfApi | [Set-GroAdminLDAPConf](docs/GroAdminSystemAdminMConfApi.md#Set-GroAdminLDAPConf) | PUT /system/mconf/ldap | setLDAPConf
GroAdminSystemAdminOrganizationsApi | [Invoke-GroAdminDeleteOrg](docs/GroAdminSystemAdminOrganizationsApi.md#Invoke-GroAdminDeleteOrg) | DELETE /system/orgs/{ID} | deleteOrg
GroAdminSystemAdminOrganizationsApi | [Invoke-GroAdminDeleteOrgLDAPConf](docs/GroAdminSystemAdminOrganizationsApi.md#Invoke-GroAdminDeleteOrgLDAPConf) | DELETE /system/orgs/{ID}/ldap | deleteOrgLDAPConf
GroAdminSystemAdminOrganizationsApi | [Get-GroAdminOrg](docs/GroAdminSystemAdminOrganizationsApi.md#Get-GroAdminOrg) | GET /system/orgs/{ID} | getOrg
GroAdminSystemAdminOrganizationsApi | [Get-GroAdminOrgLDAPConf](docs/GroAdminSystemAdminOrganizationsApi.md#Get-GroAdminOrgLDAPConf) | GET /system/orgs/{ID}/ldap | getOrgLDAPConf
GroAdminSystemAdminOrganizationsApi | [Get-GroAdminOrgs](docs/GroAdminSystemAdminOrganizationsApi.md#Get-GroAdminOrgs) | GET /system/orgs | getOrgs
GroAdminSystemAdminOrganizationsApi | [Invoke-GroAdminPatchOrg](docs/GroAdminSystemAdminOrganizationsApi.md#Invoke-GroAdminPatchOrg) | PATCH /system/orgs/{ID} | patchOrg
GroAdminSystemAdminOrganizationsApi | [Submit-GroAdminOrgs](docs/GroAdminSystemAdminOrganizationsApi.md#Submit-GroAdminOrgs) | POST /system/orgs | postOrgs
GroAdminSystemAdminOrganizationsApi | [Set-GroAdminOrgLDAPConf](docs/GroAdminSystemAdminOrganizationsApi.md#Set-GroAdminOrgLDAPConf) | PUT /system/orgs/{ID}/ldap | setOrgLDAPConf
GroAdminSystemAdminProxiesApi | [Get-GroAdminAntispam](docs/GroAdminSystemAdminProxiesApi.md#Get-GroAdminAntispam) | GET /system/antispam/{path} | getAntispam
GroAdminSystemAdminProxiesApi | [Get-GroAdminVhostStatus](docs/GroAdminSystemAdminProxiesApi.md#Get-GroAdminVhostStatus) | GET /system/vhostStatus/{host} | getVhostStatus
GroAdminSystemAdminProxiesApi | [Get-GroAdminVhosts](docs/GroAdminSystemAdminProxiesApi.md#Get-GroAdminVhosts) | GET /system/vhostStatus | getVhosts
GroAdminSystemAdminRolesApi | [Invoke-GroAdminDeleteRole](docs/GroAdminSystemAdminRolesApi.md#Invoke-GroAdminDeleteRole) | DELETE /system/roles/{ID} | deleteRole
GroAdminSystemAdminRolesApi | [Get-GroAdminPermissions](docs/GroAdminSystemAdminRolesApi.md#Get-GroAdminPermissions) | GET /system/roles/permissions | getPermissions
GroAdminSystemAdminRolesApi | [Get-GroAdminRole](docs/GroAdminSystemAdminRolesApi.md#Get-GroAdminRole) | GET /system/roles/{ID} | getRole
GroAdminSystemAdminRolesApi | [Get-GroAdminRoles](docs/GroAdminSystemAdminRolesApi.md#Get-GroAdminRoles) | GET /system/roles | getRoles
GroAdminSystemAdminRolesApi | [Invoke-GroAdminPatchRole](docs/GroAdminSystemAdminRolesApi.md#Invoke-GroAdminPatchRole) | PATCH /system/roles/{ID} | patchRole
GroAdminSystemAdminRolesApi | [Invoke-GroAdminPatchUserRoles](docs/GroAdminSystemAdminRolesApi.md#Invoke-GroAdminPatchUserRoles) | PATCH /domains/{domainID}/users/{userID}/roles | patchUserRoles
GroAdminSystemAdminRolesApi | [Submit-GroAdminRole](docs/GroAdminSystemAdminRolesApi.md#Submit-GroAdminRole) | POST /system/roles | postRole
GroAdminSystemAdminServersApi | [Invoke-GroAdminDeleteServer](docs/GroAdminSystemAdminServersApi.md#Invoke-GroAdminDeleteServer) | DELETE /system/servers/{ID} | deleteServer
GroAdminSystemAdminServersApi | [Get-GroAdminServer](docs/GroAdminSystemAdminServersApi.md#Get-GroAdminServer) | GET /system/servers/{ID} | getServer
GroAdminSystemAdminServersApi | [Get-GroAdminServerDnsCheck](docs/GroAdminSystemAdminServersApi.md#Get-GroAdminServerDnsCheck) | GET /system/servers/dnsCheck | getServerDnsCheck
GroAdminSystemAdminServersApi | [Get-GroAdminServers](docs/GroAdminSystemAdminServersApi.md#Get-GroAdminServers) | GET /system/servers | getServers
GroAdminSystemAdminServersApi | [Invoke-GroAdminPatchServer](docs/GroAdminSystemAdminServersApi.md#Invoke-GroAdminPatchServer) | PATCH /system/servers/{ID} | patchServer
GroAdminSystemAdminServersApi | [Submit-GroAdminServers](docs/GroAdminSystemAdminServersApi.md#Submit-GroAdminServers) | POST /system/servers | postServers
GroAdminTasQApi | [Stop-GroAdminTask](docs/GroAdminTasQApi.md#Stop-GroAdminTask) | POST /tasq/tasks/{ID}/cancel | cancelTask
GroAdminTasQApi | [Invoke-GroAdminDeleteTask](docs/GroAdminTasQApi.md#Invoke-GroAdminDeleteTask) | DELETE /tasq/tasks/{ID} | deleteTask
GroAdminTasQApi | [Get-GroAdminTask](docs/GroAdminTasQApi.md#Get-GroAdminTask) | GET /tasq/tasks/{ID} | getTask
GroAdminTasQApi | [Get-GroAdminTasks](docs/GroAdminTasQApi.md#Get-GroAdminTasks) | GET /tasq/tasks | getTasks
GroAdminTasQApi | [Invoke-GroAdminNotify](docs/GroAdminTasQApi.md#Invoke-GroAdminNotify) | POST /tasq/notify | notify
GroAdminTasQApi | [Start-GroAdminTaskq](docs/GroAdminTasQApi.md#Start-GroAdminTaskq) | POST /tasq/start | startTaskq
GroAdminTasQApi | [Stop-GroAdminTaskq](docs/GroAdminTasQApi.md#Stop-GroAdminTaskq) | POST /tasq/stop | stopTaskq
GroAdminTasQApi | [Invoke-GroAdminTaskQStatus](docs/GroAdminTasQApi.md#Invoke-GroAdminTaskQStatus) | GET /tasq/status | taskQStatus
GroAdminUsersApi | [Get-GroAdminUsernames](docs/GroAdminUsersApi.md#Get-GroAdminUsernames) | GET /users | getUsernames
GroAdminUsersApi | [Reset-GroAdminPasswd](docs/GroAdminUsersApi.md#Reset-GroAdminPasswd) | PUT /passwd/{username} | resetPasswd


### Documentation for Models

 - [GrommunioAdmin/Model.AdminPermission](docs/AdminPermission.md)
 - [GrommunioAdmin/Model.AdminRole](docs/AdminRole.md)
 - [GrommunioAdmin/Model.AdminRoleWrite](docs/AdminRoleWrite.md)
 - [GrommunioAdmin/Model.AltnamesInner](docs/AltnamesInner.md)
 - [GrommunioAdmin/Model.CheckForUpdates200Response](docs/CheckForUpdates200Response.md)
 - [GrommunioAdmin/Model.CheckFormat200Response](docs/CheckFormat200Response.md)
 - [GrommunioAdmin/Model.CheckUsers200Response](docs/CheckUsers200Response.md)
 - [GrommunioAdmin/Model.CheckUsers200ResponseOrphanedInner](docs/CheckUsers200ResponseOrphanedInner.md)
 - [GrommunioAdmin/Model.ClassFiltersInnerInner](docs/ClassFiltersInnerInner.md)
 - [GrommunioAdmin/Model.CreateDefaults](docs/CreateDefaults.md)
 - [GrommunioAdmin/Model.DeleteFolder202Response](docs/DeleteFolder202Response.md)
 - [GrommunioAdmin/Model.DeleteOrphaned200Response](docs/DeleteOrphaned200Response.md)
 - [GrommunioAdmin/Model.Domain](docs/Domain.md)
 - [GrommunioAdmin/Model.DomainCommon](docs/DomainCommon.md)
 - [GrommunioAdmin/Model.DomainDnsCheck](docs/DomainDnsCheck.md)
 - [GrommunioAdmin/Model.DomainDnsCheckAutodiscoverSRV](docs/DomainDnsCheckAutodiscoverSRV.md)
 - [GrommunioAdmin/Model.DomainDnsCheckMxRecords](docs/DomainDnsCheckMxRecords.md)
 - [GrommunioAdmin/Model.DomainWrite](docs/DomainWrite.md)
 - [GrommunioAdmin/Model.DumpLDAP200Response](docs/DumpLDAP200Response.md)
 - [GrommunioAdmin/Model.FetchmailEntry](docs/FetchmailEntry.md)
 - [GrommunioAdmin/Model.FolderMemberListInner](docs/FolderMemberListInner.md)
 - [GrommunioAdmin/Model.Forward](docs/Forward.md)
 - [GrommunioAdmin/Model.GetAbout200Response](docs/GetAbout200Response.md)
 - [GrommunioAdmin/Model.GetAllUsers200Response](docs/GetAllUsers200Response.md)
 - [GrommunioAdmin/Model.GetAuthmgr200Response](docs/GetAuthmgr200Response.md)
 - [GrommunioAdmin/Model.GetCommandList200Response](docs/GetCommandList200Response.md)
 - [GrommunioAdmin/Model.GetConfigFile200Response](docs/GetConfigFile200Response.md)
 - [GrommunioAdmin/Model.GetCreateParams200Response](docs/GetCreateParams200Response.md)
 - [GrommunioAdmin/Model.GetDashboard200Response](docs/GetDashboard200Response.md)
 - [GrommunioAdmin/Model.GetDashboard200ResponseCpuPercent](docs/GetDashboard200ResponseCpuPercent.md)
 - [GrommunioAdmin/Model.GetDashboard200ResponseDisksInner](docs/GetDashboard200ResponseDisksInner.md)
 - [GrommunioAdmin/Model.GetDashboard200ResponseMemory](docs/GetDashboard200ResponseMemory.md)
 - [GrommunioAdmin/Model.GetDashboard200ResponseSwap](docs/GetDashboard200ResponseSwap.md)
 - [GrommunioAdmin/Model.GetDomains200Response](docs/GetDomains200Response.md)
 - [GrommunioAdmin/Model.GetFolders200Response](docs/GetFolders200Response.md)
 - [GrommunioAdmin/Model.GetLDAPConf200Response](docs/GetLDAPConf200Response.md)
 - [GrommunioAdmin/Model.GetLicenseCredentials200Response](docs/GetLicenseCredentials200Response.md)
 - [GrommunioAdmin/Model.GetLog200Response](docs/GetLog200Response.md)
 - [GrommunioAdmin/Model.GetLog200ResponseDataInner](docs/GetLog200ResponseDataInner.md)
 - [GrommunioAdmin/Model.GetMailq200Response](docs/GetMailq200Response.md)
 - [GrommunioAdmin/Model.GetMlists200Response](docs/GetMlists200Response.md)
 - [GrommunioAdmin/Model.GetOrgLDAPConf200Response](docs/GetOrgLDAPConf200Response.md)
 - [GrommunioAdmin/Model.GetOrgs200Response](docs/GetOrgs200Response.md)
 - [GrommunioAdmin/Model.GetPermissions200Response](docs/GetPermissions200Response.md)
 - [GrommunioAdmin/Model.GetProfile200Response](docs/GetProfile200Response.md)
 - [GrommunioAdmin/Model.GetProfile200ResponseUser](docs/GetProfile200ResponseUser.md)
 - [GrommunioAdmin/Model.GetRoles200Response](docs/GetRoles200Response.md)
 - [GrommunioAdmin/Model.GetServerDnsCheck200Response](docs/GetServerDnsCheck200Response.md)
 - [GrommunioAdmin/Model.GetServers200Response](docs/GetServers200Response.md)
 - [GrommunioAdmin/Model.GetServicesList200Response](docs/GetServicesList200Response.md)
 - [GrommunioAdmin/Model.GetServicesListDBConf200Response](docs/GetServicesListDBConf200Response.md)
 - [GrommunioAdmin/Model.GetStatus200Response](docs/GetStatus200Response.md)
 - [GrommunioAdmin/Model.GetStoreAccessUsers200Response](docs/GetStoreAccessUsers200Response.md)
 - [GrommunioAdmin/Model.GetStoreLangs200Response](docs/GetStoreLangs200Response.md)
 - [GrommunioAdmin/Model.GetStoreLangs200ResponseDataInner](docs/GetStoreLangs200ResponseDataInner.md)
 - [GrommunioAdmin/Model.GetStoreProps200Response](docs/GetStoreProps200Response.md)
 - [GrommunioAdmin/Model.GetSyncedDevices200Response](docs/GetSyncedDevices200Response.md)
 - [GrommunioAdmin/Model.GetSyncedDevices200ResponseDataInner](docs/GetSyncedDevices200ResponseDataInner.md)
 - [GrommunioAdmin/Model.GetSyncedDevices200ResponseDataInnerAsversion](docs/GetSyncedDevices200ResponseDataInnerAsversion.md)
 - [GrommunioAdmin/Model.GetTasks200Response](docs/GetTasks200Response.md)
 - [GrommunioAdmin/Model.GetUpdateLog200Response](docs/GetUpdateLog200Response.md)
 - [GrommunioAdmin/Model.GetUserDeviceWipeStatus200Response](docs/GetUserDeviceWipeStatus200Response.md)
 - [GrommunioAdmin/Model.GetUserDeviceWipeStatus200ResponseDataValue](docs/GetUserDeviceWipeStatus200ResponseDataValue.md)
 - [GrommunioAdmin/Model.GetUserInformation200Response](docs/GetUserInformation200Response.md)
 - [GrommunioAdmin/Model.GetUserSyncPolicy200Response](docs/GetUserSyncPolicy200Response.md)
 - [GrommunioAdmin/Model.GetUsernames200Response](docs/GetUsernames200Response.md)
 - [GrommunioAdmin/Model.GetUsernames200ResponseDataInner](docs/GetUsernames200ResponseDataInner.md)
 - [GrommunioAdmin/Model.Homeserver](docs/Homeserver.md)
 - [GrommunioAdmin/Model.HomeserverRef](docs/HomeserverRef.md)
 - [GrommunioAdmin/Model.ImportLdapUser200Response](docs/ImportLdapUser200Response.md)
 - [GrommunioAdmin/Model.ImportLdapUser200ResponseAnyOf](docs/ImportLdapUser200ResponseAnyOf.md)
 - [GrommunioAdmin/Model.IntExtDns](docs/IntExtDns.md)
 - [GrommunioAdmin/Model.LdapConfig](docs/LdapConfig.md)
 - [GrommunioAdmin/Model.LdapConfigConnection](docs/LdapConfigConnection.md)
 - [GrommunioAdmin/Model.LdapConfigGroups](docs/LdapConfigGroups.md)
 - [GrommunioAdmin/Model.LdapConfigUsers](docs/LdapConfigUsers.md)
 - [GrommunioAdmin/Model.License](docs/License.md)
 - [GrommunioAdmin/Model.MlistRead](docs/MlistRead.md)
 - [GrommunioAdmin/Model.MlistWrite](docs/MlistWrite.md)
 - [GrommunioAdmin/Model.Org](docs/Org.md)
 - [GrommunioAdmin/Model.OrgDomainsInner](docs/OrgDomainsInner.md)
 - [GrommunioAdmin/Model.OrgWrite](docs/OrgWrite.md)
 - [GrommunioAdmin/Model.PatchConfigFileRequest](docs/PatchConfigFileRequest.md)
 - [GrommunioAdmin/Model.PatchFolderRequest](docs/PatchFolderRequest.md)
 - [GrommunioAdmin/Model.PatchServiceFilesRequest](docs/PatchServiceFilesRequest.md)
 - [GrommunioAdmin/Model.PatchStoreProps200Response](docs/PatchStoreProps200Response.md)
 - [GrommunioAdmin/Model.PatchStorePropsRequestValue](docs/PatchStorePropsRequestValue.md)
 - [GrommunioAdmin/Model.PatchUserRoles200Response](docs/PatchUserRoles200Response.md)
 - [GrommunioAdmin/Model.PatchUserRoles200ResponseDataInner](docs/PatchUserRoles200ResponseDataInner.md)
 - [GrommunioAdmin/Model.PatchUserRolesRequest](docs/PatchUserRolesRequest.md)
 - [GrommunioAdmin/Model.PostDeviceWipeRequest](docs/PostDeviceWipeRequest.md)
 - [GrommunioAdmin/Model.PostFoldersRequest](docs/PostFoldersRequest.md)
 - [GrommunioAdmin/Model.PostLogin200Response](docs/PostLogin200Response.md)
 - [GrommunioAdmin/Model.PostLogin400Response](docs/PostLogin400Response.md)
 - [GrommunioAdmin/Model.PostLogin500Response](docs/PostLogin500Response.md)
 - [GrommunioAdmin/Model.PostLogin503Response](docs/PostLogin503Response.md)
 - [GrommunioAdmin/Model.PostOwnerRequest](docs/PostOwnerRequest.md)
 - [GrommunioAdmin/Model.PostStoreAccessUserRequest](docs/PostStoreAccessUserRequest.md)
 - [GrommunioAdmin/Model.PostUserFolderPermissionsGrantRequest](docs/PostUserFolderPermissionsGrantRequest.md)
 - [GrommunioAdmin/Model.PublicFolder](docs/PublicFolder.md)
 - [GrommunioAdmin/Model.PublicFolderRef](docs/PublicFolderRef.md)
 - [GrommunioAdmin/Model.PutPasswdRequest](docs/PutPasswdRequest.md)
 - [GrommunioAdmin/Model.PutStoreAccessUserRequest](docs/PutStoreAccessUserRequest.md)
 - [GrommunioAdmin/Model.RemoteCLI200Response](docs/RemoteCLI200Response.md)
 - [GrommunioAdmin/Model.RemoteCLI200ResponseFsValue](docs/RemoteCLI200ResponseFsValue.md)
 - [GrommunioAdmin/Model.RemoteCLIRequest](docs/RemoteCLIRequest.md)
 - [GrommunioAdmin/Model.ResetPasswd404Response](docs/ResetPasswd404Response.md)
 - [GrommunioAdmin/Model.ResetPasswdRequest](docs/ResetPasswdRequest.md)
 - [GrommunioAdmin/Model.SearchLDAP200Response](docs/SearchLDAP200Response.md)
 - [GrommunioAdmin/Model.SearchLDAP200ResponseDataInner](docs/SearchLDAP200ResponseDataInner.md)
 - [GrommunioAdmin/Model.Service](docs/Service.md)
 - [GrommunioAdmin/Model.SetAuthmgrRequest](docs/SetAuthmgrRequest.md)
 - [GrommunioAdmin/Model.SetLicenseCredentialsRequest](docs/SetLicenseCredentialsRequest.md)
 - [GrommunioAdmin/Model.SetMemberRequest](docs/SetMemberRequest.md)
 - [GrommunioAdmin/Model.SetPasswordRequest](docs/SetPasswordRequest.md)
 - [GrommunioAdmin/Model.SetUserDeviceWipeStatusRequest](docs/SetUserDeviceWipeStatusRequest.md)
 - [GrommunioAdmin/Model.SyncPolicy](docs/SyncPolicy.md)
 - [GrommunioAdmin/Model.SyncPolicyMaxattsize](docs/SyncPolicyMaxattsize.md)
 - [GrommunioAdmin/Model.SyncStatusInner](docs/SyncStatusInner.md)
 - [GrommunioAdmin/Model.SyncTop200Response](docs/SyncTop200Response.md)
 - [GrommunioAdmin/Model.SyncTop200ResponseDataInner](docs/SyncTop200ResponseDataInner.md)
 - [GrommunioAdmin/Model.SyncTop200ResponseDataInnerAsversion](docs/SyncTop200ResponseDataInnerAsversion.md)
 - [GrommunioAdmin/Model.TaskQStatus200Response](docs/TaskQStatus200Response.md)
 - [GrommunioAdmin/Model.TasqTask](docs/TasqTask.md)
 - [GrommunioAdmin/Model.UpdateAllUsers200Response](docs/UpdateAllUsers200Response.md)
 - [GrommunioAdmin/Model.User](docs/User.md)
 - [GrommunioAdmin/Model.UserFolder200Response](docs/UserFolder200Response.md)
 - [GrommunioAdmin/Model.UserFolder200ResponseMembersInner](docs/UserFolder200ResponseMembersInner.md)
 - [GrommunioAdmin/Model.UserFolderRef](docs/UserFolderRef.md)
 - [GrommunioAdmin/Model.UserInit](docs/UserInit.md)
 - [GrommunioAdmin/Model.UserOofState](docs/UserOofState.md)
 - [GrommunioAdmin/Model.UserRolesInner](docs/UserRolesInner.md)
 - [GrommunioAdmin/Model.UserStatus](docs/UserStatus.md)
 - [GrommunioAdmin/Model.UserUpdate](docs/UserUpdate.md)


## Status

- [Top Feature Requests](https://github.com/grommunio/aapi-powershell/issues?q=label%3Aenhancement+is%3Aopen+sort%3Areactions-%2B1-desc) (Add your votes using the 👍 reaction)
- [Top Bugs](https://github.com/grommunio/aapi-powershell/issues?q=is%3Aissue+is%3Aopen+label%3Abug+sort%3Areactions-%2B1-desc) (Add your votes using the 👍 reaction)
- [Newest Bugs](https://github.com/grommunio/aapi-powershell/issues?q=is%3Aopen+is%3Aissue+label%3Abug)

## Support

- Support is available through [grommunio GmbH](https://grommunio.com) and its partners.
- grommunio community is available here: [grommunio Community](https://community.grommunio.com)

For direct contact to the maintainers (for example to supply information about a security-related responsible disclosure), you can contact grommunio directly at [dev@grommunio.com](mailto:dev@grommunio.com)

## Project assistance

If you want to say thank you or/and support active development of grommunio AAPIPS:

- Add a [GitHub Star](https://github.com/grommunio/aapi-powershell) to the project.
- Tweet about grommunio AAPIPS.
- Write interesting articles about the project on [Dev.to](https://dev.to/), [Medium](https://medium.com/), your personal blog or any medium you feel comfortable with.

Together, we can make grommunio AAPIPS better!

## Contributing

First off, thanks for taking the time to contribute! Contributions are what make the open-source community such an amazing place to learn, inspire, and create. Any contributions you make will benefit everybody else and are greatly appreciated.

If you have found an issue and want to report an issue, either reach out to us in our [community](https://community.grommunio.com), or, if you have a subscription, open up a [support case](https://grommunio.com/).

To provide changesets,

- Clone the repository from https://github.com/grommunio/aapi-powershell.git
- Commit and sign your work (```git commit -s```).

Then, either

- create a pull request towards the master branch.

or

- upload commits to a git store of your choosing, or export the series as a patchset using [git format-patch](https://git-scm.com/docs/git-format-patch).
- send the patch(es) or git link to [dev@grommunio.com](mailto:dev@grommunio.com) and we will consider the submission.

### Additional notes

- If possible, please only work on one issue per commit.

## Security

grommunio AAPIPS follows good practices of security. grommunio constantly monitors security-related issues.
grommunio AAPIPS is provided "as is" without any warranty. For professional support options through subscriptions, head over to [grommunio](https://grommunio.com).

## License

This project is licensed under the GNU Affero General Public License v3.

See [LICENSE.txt](LICENSE.txt) for more information.
