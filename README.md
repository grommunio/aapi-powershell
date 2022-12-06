# grommunio Admin API Powershell (AAPIPS)

![project license](https://img.shields.io/badge/license-AGPL--3.0-orange)
[![latest version](https://shields.io/github/v/tag/grommunio/aapi-powershell)](https://github.com/grommunio/aapi-powershell/tags)
[![code size](https://img.shields.io/github/languages/code-size/grommunio/aapi-powershell)](https://github.com/grommunio/aapi-powershell)
[![pull requests welcome](https://img.shields.io/badge/PRs-welcome-ff69b4.svg)](https://github.com/grommunio/aapi-powershell/issues?q=is%3Aissue+is%3Aopen+label%3A%22help+wanted%22)
[![code with love by grommunio](https://img.shields.io/badge/%3C%2F%3E%20with%20%E2%99%A5%20by-grommunio-ff1414.svg)](https://grommunio.com)
[![twitter](https://img.shields.io/twitter/follow/grommunio?style=social)](https://twitter.com/grommunio)

**grommunio AAPIPS (Admin API Powershell) is the Powershell interface to the REST-based [grommunio Admin API](https://github.com/grommunio/admin-api) to manage entire grommunio installations from Powershell**

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

- **Simple** management of grommunio for Microsoft Administrators
- **Well-documented** interface descriptions
- **Powerful** Powershell interface allows simple and complex management tasks with grommunio
- **Standardized** calls enable full compliance with grommunio Admin API
- **Standalone**, requiring no dependencies to run

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
Import-Module -Name '.\powershell\src\GrommunioAdmin' -Verbose

# Define grommunio Admin API credentials
$grommunioHost="https://mail.example.com:8443"
$grommunioUsername="admin"
$grommunioPassword="VerySecureAP1-Passw0rd"

# Set grommunio Admin API endpoint
$APIEndpoint = -join($grommunioHost,"/api/v1")
Set-GroAdminConfiguration -BaseUrl $APIEndpoint

# Login to grommunio Admin API
$LoginResult = (Submit-GroAdminLogin -ContentType "application/x-www-form-urlencoded" -User $grommunioUsername -Pass $grommunioPassword)
$LoginCookie = -join("grommunioAuthJwt=",$LoginResult.grommunioAuthJwt)
$LoginCSRF = $LoginResult.csrf

# Set authentication headers for any request
Set-GroAdminConfiguration -DefaultHeaders @{"Cookie"="$LoginCookie";"X-CSRF-TOKEN"="$LoginCSRF"}

PS> Get-GroAdminAbout

API   backend schema
---   ------- ------
1.9.2 1.9.8      109

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
Remove-Module -FullyQualifiedName @{ModuleName = "GrommunioAdmin"; ModuleVersion = "1.9.2"}
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
*GroAdminDefaultsApi* | [**Get-GroAdminCreateParams**](docs/GroAdminDefaultsApi.md#Get-GroAdminCreateParams) | **GET** /defaults/createParams | getCreateParams
*GroAdminDefaultsApi* | [**Get-GroAdminDomainDefaultParams**](docs/GroAdminDefaultsApi.md#Get-GroAdminDomainDefaultParams) | **GET** /defaults/createParams/{domainID} | getDomainDefaultParams
*GroAdminDefaultsApi* | [**Get-GroAdminStoreLangs**](docs/GroAdminDefaultsApi.md#Get-GroAdminStoreLangs) | **GET** /defaults/storeLangs | getStoreLangs
*GroAdminDefaultsApi* | [**Invoke-GroAdminPatchCreateParams**](docs/GroAdminDefaultsApi.md#Invoke-GroAdminPatchCreateParams) | **PATCH** /defaults/createParams | patchCreateParams
*GroAdminDefaultsApi* | [**Invoke-GroAdminPatchDomainDefaultParams**](docs/GroAdminDefaultsApi.md#Invoke-GroAdminPatchDomainDefaultParams) | **PATCH** /defaults/createParams/{domainID} | patchDomainDefaultParams
*GroAdminDefaultsApi* | [**Send-GroAdminCreateParams**](docs/GroAdminDefaultsApi.md#Send-GroAdminCreateParams) | **PUT** /defaults/createParams | putCreateParams
*GroAdminDefaultsApi* | [**Send-GroAdminDomainDefaultParams**](docs/GroAdminDefaultsApi.md#Send-GroAdminDomainDefaultParams) | **PUT** /defaults/createParams/{domainID} | putDomainDefaultParams
*GroAdminDomainAdminClassesApi* | [**Invoke-GroAdminDeleteClass**](docs/GroAdminDomainAdminClassesApi.md#Invoke-GroAdminDeleteClass) | **DELETE** /domains/{domainID}/classes/{ID} | deleteClass
*GroAdminDomainAdminClassesApi* | [**Get-GroAdminClass**](docs/GroAdminDomainAdminClassesApi.md#Get-GroAdminClass) | **GET** /domains/{domainID}/classes/{ID} | getClass
*GroAdminDomainAdminClassesApi* | [**Get-GroAdminClasses**](docs/GroAdminDomainAdminClassesApi.md#Get-GroAdminClasses) | **GET** /domains/{domainID}/classes | getClasses
*GroAdminDomainAdminClassesApi* | [**Get-GroAdminClassesTree**](docs/GroAdminDomainAdminClassesApi.md#Get-GroAdminClassesTree) | **GET** /domains/{domainID}/classes/tree | getClassesTree
*GroAdminDomainAdminClassesApi* | [**Invoke-GroAdminPatchClass**](docs/GroAdminDomainAdminClassesApi.md#Invoke-GroAdminPatchClass) | **PATCH** /domains/{domainID}/classes/{ID} | patchClass
*GroAdminDomainAdminClassesApi* | [**Submit-GroAdminClass**](docs/GroAdminDomainAdminClassesApi.md#Submit-GroAdminClass) | **POST** /domains/{domainID}/classes | postClass
*GroAdminDomainAdminClassesApi* | [**Test-GroAdminFilter**](docs/GroAdminDomainAdminClassesApi.md#Test-GroAdminFilter) | **POST** /domains/{domainID}/classes/testFilter | testFilter
*GroAdminDomainAdminFoldersApi* | [**Invoke-GroAdminDeleteFolder**](docs/GroAdminDomainAdminFoldersApi.md#Invoke-GroAdminDeleteFolder) | **DELETE** /domains/{domainID}/folders/{folderID} | deleteFolder
*GroAdminDomainAdminFoldersApi* | [**Invoke-GroAdminDeleteMember**](docs/GroAdminDomainAdminFoldersApi.md#Invoke-GroAdminDeleteMember) | **DELETE** /domains/{domainID}/folders/{folderID}/owners/{memberID} | deleteMember
*GroAdminDomainAdminFoldersApi* | [**Get-GroAdminFolder**](docs/GroAdminDomainAdminFoldersApi.md#Get-GroAdminFolder) | **GET** /domains/{domainID}/folders/{folderID} | getFolder
*GroAdminDomainAdminFoldersApi* | [**Get-GroAdminFolderTree**](docs/GroAdminDomainAdminFoldersApi.md#Get-GroAdminFolderTree) | **GET** /domains/{domainID}/folders/tree | getFolderTree
*GroAdminDomainAdminFoldersApi* | [**Get-GroAdminFolders**](docs/GroAdminDomainAdminFoldersApi.md#Get-GroAdminFolders) | **GET** /domains/{domainID}/folders | getFolders
*GroAdminDomainAdminFoldersApi* | [**Get-GroAdminOwners**](docs/GroAdminDomainAdminFoldersApi.md#Get-GroAdminOwners) | **GET** /domains/{domainID}/folders/{folderID}/owners | getOwners
*GroAdminDomainAdminFoldersApi* | [**Invoke-GroAdminPatchFolder**](docs/GroAdminDomainAdminFoldersApi.md#Invoke-GroAdminPatchFolder) | **PATCH** /domains/{domainID}/folders/{folderID} | patchFolder
*GroAdminDomainAdminFoldersApi* | [**Submit-GroAdminFolders**](docs/GroAdminDomainAdminFoldersApi.md#Submit-GroAdminFolders) | **POST** /domains/{domainID}/folders | postFolders
*GroAdminDomainAdminFoldersApi* | [**Submit-GroAdminOwner**](docs/GroAdminDomainAdminFoldersApi.md#Submit-GroAdminOwner) | **POST** /domains/{domainID}/folders/{folderID}/owners | postOwner
*GroAdminDomainAdminFoldersApi* | [**Set-GroAdminMember**](docs/GroAdminDomainAdminFoldersApi.md#Set-GroAdminMember) | **PUT** /domains/{domainID}/folders/{folderID}/owners/{memberID} | setMember
*GroAdminDomainAdminMListsApi* | [**Invoke-GroAdminDeleteMlist**](docs/GroAdminDomainAdminMListsApi.md#Invoke-GroAdminDeleteMlist) | **DELETE** /domains/{domainID}/mlists/{ID} | deleteMlist
*GroAdminDomainAdminMListsApi* | [**Get-GroAdminMlist**](docs/GroAdminDomainAdminMListsApi.md#Get-GroAdminMlist) | **GET** /domains/{domainID}/mlists/{ID} | getMlist
*GroAdminDomainAdminMListsApi* | [**Get-GroAdminMlists**](docs/GroAdminDomainAdminMListsApi.md#Get-GroAdminMlists) | **GET** /domains/{domainID}/mlists | getMlists
*GroAdminDomainAdminMListsApi* | [**Invoke-GroAdminPatchMlist**](docs/GroAdminDomainAdminMListsApi.md#Invoke-GroAdminPatchMlist) | **PATCH** /domains/{domainID}/mlists/{ID} | patchMlist
*GroAdminDomainAdminMListsApi* | [**Submit-GroAdminMlists**](docs/GroAdminDomainAdminMListsApi.md#Submit-GroAdminMlists) | **POST** /domains/{domainID}/mlists | postMlists
*GroAdminDomainAdminUsersApi* | [**Stop-GroAdminWipe**](docs/GroAdminDomainAdminUsersApi.md#Stop-GroAdminWipe) | **DELETE** /domains/{domainID}/users/{userID}/sync/{deviceID}/wipe | cancelWipe
*GroAdminDomainAdminUsersApi* | [**Invoke-GroAdminDeleteStoreAccessUser**](docs/GroAdminDomainAdminUsersApi.md#Invoke-GroAdminDeleteStoreAccessUser) | **DELETE** /domains/{domainID}/users/{userID}/storeAccess/{username} | deleteStoreAccessUser
*GroAdminDomainAdminUsersApi* | [**Invoke-GroAdminDeleteStoreProps**](docs/GroAdminDomainAdminUsersApi.md#Invoke-GroAdminDeleteStoreProps) | **DELETE** /domains/{domainID}/users/{userID}/storeProps | deleteStoreProps
*GroAdminDomainAdminUsersApi* | [**Invoke-GroAdminDeleteUser**](docs/GroAdminDomainAdminUsersApi.md#Invoke-GroAdminDeleteUser) | **DELETE** /domains/{domainID}/users/{userID} | deleteUser
*GroAdminDomainAdminUsersApi* | [**Get-GroAdminDelegates**](docs/GroAdminDomainAdminUsersApi.md#Get-GroAdminDelegates) | **GET** /domains/{domainID}/users/{userID}/delegates | getDelegates
*GroAdminDomainAdminUsersApi* | [**Get-GroAdminDomainSyncPolicy**](docs/GroAdminDomainAdminUsersApi.md#Get-GroAdminDomainSyncPolicy) | **GET** /domains/{domainID}/syncPolicy | getDomainSyncPolicy
*GroAdminDomainAdminUsersApi* | [**Get-GroAdminSendas**](docs/GroAdminDomainAdminUsersApi.md#Get-GroAdminSendas) | **GET** /domains/{domainID}/users/{userID}/sendas | getSendas
*GroAdminDomainAdminUsersApi* | [**Get-GroAdminStoreAccessUsers**](docs/GroAdminDomainAdminUsersApi.md#Get-GroAdminStoreAccessUsers) | **GET** /domains/{domainID}/users/{userID}/storeAccess | getStoreAccessUsers
*GroAdminDomainAdminUsersApi* | [**Get-GroAdminStoreProps**](docs/GroAdminDomainAdminUsersApi.md#Get-GroAdminStoreProps) | **GET** /domains/{domainID}/users/{userID}/storeProps | getStoreProps
*GroAdminDomainAdminUsersApi* | [**Get-GroAdminSyncedDevices**](docs/GroAdminDomainAdminUsersApi.md#Get-GroAdminSyncedDevices) | **GET** /domains/{domainID}/users/{userID}/sync | getSyncedDevices
*GroAdminDomainAdminUsersApi* | [**Get-GroAdminUser**](docs/GroAdminDomainAdminUsersApi.md#Get-GroAdminUser) | **GET** /domains/{domainID}/users/{userID} | getUser
*GroAdminDomainAdminUsersApi* | [**Get-GroAdminUsers**](docs/GroAdminDomainAdminUsersApi.md#Get-GroAdminUsers) | **GET** /domains/{domainID}/users | getUsers
*GroAdminDomainAdminUsersApi* | [**Invoke-GroAdminOofSizeLarge**](docs/GroAdminDomainAdminUsersApi.md#Invoke-GroAdminOofSizeLarge) | **GET** /domains/{domainID}/users/{userID}/oof | oofSizeLarge
*GroAdminDomainAdminUsersApi* | [**Invoke-GroAdminPatchStoreProps**](docs/GroAdminDomainAdminUsersApi.md#Invoke-GroAdminPatchStoreProps) | **PATCH** /domains/{domainID}/users/{userID}/storeProps | patchStoreProps
*GroAdminDomainAdminUsersApi* | [**Invoke-GroAdminPatchUser**](docs/GroAdminDomainAdminUsersApi.md#Invoke-GroAdminPatchUser) | **PATCH** /domains/{domainID}/users/{userID} | patchUser
*GroAdminDomainAdminUsersApi* | [**Submit-GroAdminDeviceWipe**](docs/GroAdminDomainAdminUsersApi.md#Submit-GroAdminDeviceWipe) | **POST** /domains/{domainID}/users/{userID}/sync/{deviceID}/wipe | postDeviceWipe
*GroAdminDomainAdminUsersApi* | [**Submit-GroAdminStoreAccessUser**](docs/GroAdminDomainAdminUsersApi.md#Submit-GroAdminStoreAccessUser) | **POST** /domains/{domainID}/users/{userID}/storeAccess | postStoreAccessUser
*GroAdminDomainAdminUsersApi* | [**Submit-GroAdminUser**](docs/GroAdminDomainAdminUsersApi.md#Submit-GroAdminUser) | **POST** /domains/{domainID}/users | postUser
*GroAdminDomainAdminUsersApi* | [**Send-GroAdminDelegates**](docs/GroAdminDomainAdminUsersApi.md#Send-GroAdminDelegates) | **PUT** /domains/{domainID}/users/{userID}/delegates | putDelegates
*GroAdminDomainAdminUsersApi* | [**Send-GroAdminDeviceResync**](docs/GroAdminDomainAdminUsersApi.md#Send-GroAdminDeviceResync) | **PUT** /domains/{domainID}/users/{userID}/sync/{deviceID}/resync | putDeviceResync
*GroAdminDomainAdminUsersApi* | [**Send-GroAdminDownsync**](docs/GroAdminDomainAdminUsersApi.md#Send-GroAdminDownsync) | **PUT** /domains/{domainID}/users/{userID}/downsync | putDownsync
*GroAdminDomainAdminUsersApi* | [**Send-GroAdminSendas**](docs/GroAdminDomainAdminUsersApi.md#Send-GroAdminSendas) | **PUT** /domains/{domainID}/users/{userID}/sendas | putSendas
*GroAdminDomainAdminUsersApi* | [**Send-GroAdminStoreAccessUser**](docs/GroAdminDomainAdminUsersApi.md#Send-GroAdminStoreAccessUser) | **PUT** /domains/{domainID}/users/{userID}/storeAccess | putStoreAccessUser
*GroAdminDomainAdminUsersApi* | [**Remove-GroAdminDeviceResync**](docs/GroAdminDomainAdminUsersApi.md#Remove-GroAdminDeviceResync) | **DELETE** /domains/{domainID}/users/{userID}/sync/{deviceID} | removeDeviceResync
*GroAdminDomainAdminUsersApi* | [**Remove-GroAdminDeviceStates**](docs/GroAdminDomainAdminUsersApi.md#Remove-GroAdminDeviceStates) | **DELETE** /domains/{domainID}/users/{userID}/sync | removeDeviceStates
*GroAdminDomainAdminUsersApi* | [**Set-GroAdminOofSize**](docs/GroAdminDomainAdminUsersApi.md#Set-GroAdminOofSize) | **PUT** /domains/{domainID}/users/{userID}/oof | setOofSize
*GroAdminDomainAdminUsersApi* | [**Set-GroAdminPassword**](docs/GroAdminDomainAdminUsersApi.md#Set-GroAdminPassword) | **PUT** /domains/{domainID}/users/{userID}/password | setPassword
*GroAdminLDAPApi* | [**Invoke-GroAdminCheckUsers**](docs/GroAdminLDAPApi.md#Invoke-GroAdminCheckUsers) | **GET** /domains/ldap/check | checkUsers
*GroAdminLDAPApi* | [**Invoke-GroAdminDeleteLDAPConf**](docs/GroAdminLDAPApi.md#Invoke-GroAdminDeleteLDAPConf) | **DELETE** /system/mconf/ldap | deleteLDAPConf
*GroAdminLDAPApi* | [**Invoke-GroAdminDeleteOrgLDAPConf**](docs/GroAdminLDAPApi.md#Invoke-GroAdminDeleteOrgLDAPConf) | **DELETE** /system/orgs/{ID}/ldap | deleteOrgLDAPConf
*GroAdminLDAPApi* | [**Invoke-GroAdminDeleteOrphaned**](docs/GroAdminLDAPApi.md#Invoke-GroAdminDeleteOrphaned) | **DELETE** /domains/ldap/check | deleteOrphaned
*GroAdminLDAPApi* | [**Get-GroAdminLDAP**](docs/GroAdminLDAPApi.md#Get-GroAdminLDAP) | **GET** /domains/ldap/dump | dumpLDAP
*GroAdminLDAPApi* | [**Get-GroAdminLDAPConf**](docs/GroAdminLDAPApi.md#Get-GroAdminLDAPConf) | **GET** /system/mconf/ldap | getLDAPConf
*GroAdminLDAPApi* | [**Get-GroAdminOrgLDAPConf**](docs/GroAdminLDAPApi.md#Get-GroAdminOrgLDAPConf) | **GET** /system/orgs/{ID}/ldap | getOrgLDAPConf
*GroAdminLDAPApi* | [**Import-GroAdminLdapUser**](docs/GroAdminLDAPApi.md#Import-GroAdminLdapUser) | **POST** /domains/ldap/importUser | importLdapUser
*GroAdminLDAPApi* | [**Send-GroAdminDownsync**](docs/GroAdminLDAPApi.md#Send-GroAdminDownsync) | **PUT** /domains/{domainID}/users/{userID}/downsync | putDownsync
*GroAdminLDAPApi* | [**Search-GroAdminLDAP**](docs/GroAdminLDAPApi.md#Search-GroAdminLDAP) | **GET** /domains/ldap/search | searchLDAP
*GroAdminLDAPApi* | [**Set-GroAdminLDAPConf**](docs/GroAdminLDAPApi.md#Set-GroAdminLDAPConf) | **PUT** /system/mconf/ldap | setLDAPConf
*GroAdminLDAPApi* | [**Set-GroAdminOrgLDAPConf**](docs/GroAdminLDAPApi.md#Set-GroAdminOrgLDAPConf) | **PUT** /system/orgs/{ID}/ldap | setOrgLDAPConf
*GroAdminLDAPApi* | [**Update-GroAdminAllDomainUsers**](docs/GroAdminLDAPApi.md#Update-GroAdminAllDomainUsers) | **POST** /domains/{domainID}/ldap/downsync | updateAllDomainUsers
*GroAdminLDAPApi* | [**Update-GroAdminAllUsers**](docs/GroAdminLDAPApi.md#Update-GroAdminAllUsers) | **POST** /domains/ldap/downsync | updateAllUsers
*GroAdminLDAPApi* | [**Update-GroAdminOrgLDAPUsers**](docs/GroAdminLDAPApi.md#Update-GroAdminOrgLDAPUsers) | **POST** /system/orgs/{ID}/ldap/downsync | updateOrgLDAPUsers
*GroAdminMiscApi* | [**Invoke-GroAdminCheckFormat**](docs/GroAdminMiscApi.md#Invoke-GroAdminCheckFormat) | **GET** /chkFormat | checkFormat
*GroAdminMiscApi* | [**Invoke-GroAdminDeleteMailq**](docs/GroAdminMiscApi.md#Invoke-GroAdminDeleteMailq) | **POST** /system/mailq/delete | deleteMailq
*GroAdminMiscApi* | [**Clear-GroAdminMailq**](docs/GroAdminMiscApi.md#Clear-GroAdminMailq) | **POST** /system/mailq/flush | flushMailq
*GroAdminMiscApi* | [**Get-GroAdminAbout**](docs/GroAdminMiscApi.md#Get-GroAdminAbout) | **GET** /about | getAbout
*GroAdminMiscApi* | [**Get-GroAdminMailq**](docs/GroAdminMiscApi.md#Get-GroAdminMailq) | **GET** /system/mailq | getMailq
*GroAdminMiscApi* | [**Get-GroAdminProfile**](docs/GroAdminMiscApi.md#Get-GroAdminProfile) | **GET** /profile | getProfile
*GroAdminMiscApi* | [**Get-GroAdminStatus**](docs/GroAdminMiscApi.md#Get-GroAdminStatus) | **GET** /status | getStatus
*GroAdminMiscApi* | [**Get-GroAdminUserDomains**](docs/GroAdminMiscApi.md#Get-GroAdminUserDomains) | **GET** /domains | getUserDomains
*GroAdminMiscApi* | [**Submit-GroAdminLogin**](docs/GroAdminMiscApi.md#Submit-GroAdminLogin) | **POST** /login | postLogin
*GroAdminMiscApi* | [**Submit-GroAdminRequeue**](docs/GroAdminMiscApi.md#Submit-GroAdminRequeue) | **POST** /system/mailq/requeue | postRequeue
*GroAdminMiscApi* | [**Send-GroAdminPasswd**](docs/GroAdminMiscApi.md#Send-GroAdminPasswd) | **PUT** /passwd | putPasswd
*GroAdminMiscApi* | [**Invoke-GroAdminRemoteCLI**](docs/GroAdminMiscApi.md#Invoke-GroAdminRemoteCLI) | **POST** /system/cli | remoteCLI
*GroAdminMiscApi* | [**Sync-GroAdminTop**](docs/GroAdminMiscApi.md#Sync-GroAdminTop) | **GET** /system/sync/top | syncTop
*GroAdminServiceApi* | [**Get-GroAdminUserDeviceWipeStatus**](docs/GroAdminServiceApi.md#Get-GroAdminUserDeviceWipeStatus) | **GET** /service/wipe/{username} | getUserDeviceWipeStatus
*GroAdminServiceApi* | [**Get-GroAdminUserInformation**](docs/GroAdminServiceApi.md#Get-GroAdminUserInformation) | **GET** /service/userinfo/{username} | getUserInformation
*GroAdminServiceApi* | [**Get-GroAdminUserSyncPolicy**](docs/GroAdminServiceApi.md#Get-GroAdminUserSyncPolicy) | **GET** /service/syncPolicy/{username} | getUserSyncPolicy
*GroAdminServiceApi* | [**Send-GroAdminPasswd**](docs/GroAdminServiceApi.md#Send-GroAdminPasswd) | **PUT** /passwd | putPasswd
*GroAdminServiceApi* | [**Set-GroAdminUserDeviceWipeStatus**](docs/GroAdminServiceApi.md#Set-GroAdminUserDeviceWipeStatus) | **POST** /service/wipe/{username} | setUserDeviceWipeStatus
*GroAdminSystemAdminDBConfApi* | [**Invoke-GroAdminDeleteConfigFile**](docs/GroAdminSystemAdminDBConfApi.md#Invoke-GroAdminDeleteConfigFile) | **DELETE** /system/dbconf/{service}/{file}/ | deleteConfigFile
*GroAdminSystemAdminDBConfApi* | [**Invoke-GroAdminDeleteServiceConfig**](docs/GroAdminSystemAdminDBConfApi.md#Invoke-GroAdminDeleteServiceConfig) | **DELETE** /system/dbconf/{service}/ | deleteServiceConfig
*GroAdminSystemAdminDBConfApi* | [**Get-GroAdminCommandList**](docs/GroAdminSystemAdminDBConfApi.md#Get-GroAdminCommandList) | **GET** /system/dbconf/commands | getCommandList
*GroAdminSystemAdminDBConfApi* | [**Get-GroAdminConfigFile**](docs/GroAdminSystemAdminDBConfApi.md#Get-GroAdminConfigFile) | **GET** /system/dbconf/{service}/{file}/ | getConfigFile
*GroAdminSystemAdminDBConfApi* | [**Get-GroAdminServiceFiles**](docs/GroAdminSystemAdminDBConfApi.md#Get-GroAdminServiceFiles) | **GET** /system/dbconf/{service}/ | getServiceFiles
*GroAdminSystemAdminDBConfApi* | [**Get-GroAdminServicesListDBConf**](docs/GroAdminSystemAdminDBConfApi.md#Get-GroAdminServicesListDBConf) | **GET** /system/dbconf/ | getServicesListDBConf
*GroAdminSystemAdminDBConfApi* | [**Invoke-GroAdminPatchConfigFile**](docs/GroAdminSystemAdminDBConfApi.md#Invoke-GroAdminPatchConfigFile) | **PATCH** /system/dbconf/{service}/{file}/ | patchConfigFile
*GroAdminSystemAdminDBConfApi* | [**Invoke-GroAdminPatchServiceFiles**](docs/GroAdminSystemAdminDBConfApi.md#Invoke-GroAdminPatchServiceFiles) | **PATCH** /system/dbconf/{service}/ | patchServiceFiles
*GroAdminSystemAdminDBConfApi* | [**Send-GroAdminConfigFile**](docs/GroAdminSystemAdminDBConfApi.md#Send-GroAdminConfigFile) | **PUT** /system/dbconf/{service}/{file}/ | putConfigFile
*GroAdminSystemAdminDashboardApi* | [**Get-GroAdminDashboard**](docs/GroAdminSystemAdminDashboardApi.md#Get-GroAdminDashboard) | **GET** /system/dashboard | getDashboard
*GroAdminSystemAdminDashboardApi* | [**Get-GroAdminServiceInfo**](docs/GroAdminSystemAdminDashboardApi.md#Get-GroAdminServiceInfo) | **GET** /system/dashboard/services/{unit} | getServiceInfo
*GroAdminSystemAdminDashboardApi* | [**Get-GroAdminServicesList**](docs/GroAdminSystemAdminDashboardApi.md#Get-GroAdminServicesList) | **GET** /system/dashboard/services | getServicesList
*GroAdminSystemAdminDashboardApi* | [**Send-GroAdminServiceSignal**](docs/GroAdminSystemAdminDashboardApi.md#Send-GroAdminServiceSignal) | **POST** /system/dashboard/services/{unit}/{action} | sendServiceSignal
*GroAdminSystemAdminDomainsApi* | [**Invoke-GroAdminDeleteDomain**](docs/GroAdminSystemAdminDomainsApi.md#Invoke-GroAdminDeleteDomain) | **DELETE** /system/domains/{domainID} | deleteDomain
*GroAdminSystemAdminDomainsApi* | [**Get-GroAdminAllUsers**](docs/GroAdminSystemAdminDomainsApi.md#Get-GroAdminAllUsers) | **GET** /system/users | getAllUsers
*GroAdminSystemAdminDomainsApi* | [**Get-GroAdminDomainInfo**](docs/GroAdminSystemAdminDomainsApi.md#Get-GroAdminDomainInfo) | **GET** /system/domains/{domainID} | getDomainInfo
*GroAdminSystemAdminDomainsApi* | [**Get-GroAdminDomains**](docs/GroAdminSystemAdminDomainsApi.md#Get-GroAdminDomains) | **GET** /system/domains | getDomains
*GroAdminSystemAdminDomainsApi* | [**Invoke-GroAdminPatchDomain**](docs/GroAdminSystemAdminDomainsApi.md#Invoke-GroAdminPatchDomain) | **PATCH** /system/domains/{domainID} | patchDomain
*GroAdminSystemAdminDomainsApi* | [**Submit-GroAdminDomain**](docs/GroAdminSystemAdminDomainsApi.md#Submit-GroAdminDomain) | **POST** /system/domains | postDomain
*GroAdminSystemAdminLicenseApi* | [**Invoke-GroAdminDownloadCert**](docs/GroAdminSystemAdminLicenseApi.md#Invoke-GroAdminDownloadCert) | **GET** /system/license/certificate.pem | downloadCert
*GroAdminSystemAdminLicenseApi* | [**Get-GroAdminLicense**](docs/GroAdminSystemAdminLicenseApi.md#Get-GroAdminLicense) | **GET** /system/license | getLicense
*GroAdminSystemAdminLicenseApi* | [**Send-GroAdminLicense**](docs/GroAdminSystemAdminLicenseApi.md#Send-GroAdminLicense) | **PUT** /system/license | putLicense
*GroAdminSystemAdminLogsApi* | [**Get-GroAdminLog**](docs/GroAdminSystemAdminLogsApi.md#Get-GroAdminLog) | **GET** /system/logs/{file} | getLog
*GroAdminSystemAdminLogsApi* | [**Get-GroAdminLogs**](docs/GroAdminSystemAdminLogsApi.md#Get-GroAdminLogs) | **GET** /system/logs | getLogs
*GroAdminSystemAdminMConfApi* | [**Invoke-GroAdminDeleteAuthmgr**](docs/GroAdminSystemAdminMConfApi.md#Invoke-GroAdminDeleteAuthmgr) | **DELETE** /system/mconf/authmgr | deleteAuthmgr
*GroAdminSystemAdminMConfApi* | [**Invoke-GroAdminDeleteLDAPConf**](docs/GroAdminSystemAdminMConfApi.md#Invoke-GroAdminDeleteLDAPConf) | **DELETE** /system/mconf/ldap | deleteLDAPConf
*GroAdminSystemAdminMConfApi* | [**Get-GroAdminAuthmgr**](docs/GroAdminSystemAdminMConfApi.md#Get-GroAdminAuthmgr) | **GET** /system/mconf/authmgr | getAuthmgr
*GroAdminSystemAdminMConfApi* | [**Get-GroAdminLDAPConf**](docs/GroAdminSystemAdminMConfApi.md#Get-GroAdminLDAPConf) | **GET** /system/mconf/ldap | getLDAPConf
*GroAdminSystemAdminMConfApi* | [**Set-GroAdminAuthmgr**](docs/GroAdminSystemAdminMConfApi.md#Set-GroAdminAuthmgr) | **PUT** /system/mconf/authmgr | setAuthmgr
*GroAdminSystemAdminMConfApi* | [**Set-GroAdminLDAPConf**](docs/GroAdminSystemAdminMConfApi.md#Set-GroAdminLDAPConf) | **PUT** /system/mconf/ldap | setLDAPConf
*GroAdminSystemAdminOrganizationsApi* | [**Invoke-GroAdminDeleteOrg**](docs/GroAdminSystemAdminOrganizationsApi.md#Invoke-GroAdminDeleteOrg) | **DELETE** /system/orgs/{ID} | deleteOrg
*GroAdminSystemAdminOrganizationsApi* | [**Invoke-GroAdminDeleteOrgLDAPConf**](docs/GroAdminSystemAdminOrganizationsApi.md#Invoke-GroAdminDeleteOrgLDAPConf) | **DELETE** /system/orgs/{ID}/ldap | deleteOrgLDAPConf
*GroAdminSystemAdminOrganizationsApi* | [**Get-GroAdminOrg**](docs/GroAdminSystemAdminOrganizationsApi.md#Get-GroAdminOrg) | **GET** /system/orgs/{ID} | getOrg
*GroAdminSystemAdminOrganizationsApi* | [**Get-GroAdminOrgLDAPConf**](docs/GroAdminSystemAdminOrganizationsApi.md#Get-GroAdminOrgLDAPConf) | **GET** /system/orgs/{ID}/ldap | getOrgLDAPConf
*GroAdminSystemAdminOrganizationsApi* | [**Get-GroAdminOrgs**](docs/GroAdminSystemAdminOrganizationsApi.md#Get-GroAdminOrgs) | **GET** /system/orgs | getOrgs
*GroAdminSystemAdminOrganizationsApi* | [**Invoke-GroAdminPatchOrg**](docs/GroAdminSystemAdminOrganizationsApi.md#Invoke-GroAdminPatchOrg) | **PATCH** /system/orgs/{ID} | patchOrg
*GroAdminSystemAdminOrganizationsApi* | [**Submit-GroAdminOrgs**](docs/GroAdminSystemAdminOrganizationsApi.md#Submit-GroAdminOrgs) | **POST** /system/orgs | postOrgs
*GroAdminSystemAdminOrganizationsApi* | [**Set-GroAdminOrgLDAPConf**](docs/GroAdminSystemAdminOrganizationsApi.md#Set-GroAdminOrgLDAPConf) | **PUT** /system/orgs/{ID}/ldap | setOrgLDAPConf
*GroAdminSystemAdminProxiesApi* | [**Get-GroAdminAntispam**](docs/GroAdminSystemAdminProxiesApi.md#Get-GroAdminAntispam) | **GET** /system/antispam/{path} | getAntispam
*GroAdminSystemAdminProxiesApi* | [**Get-GroAdminVhostStatus**](docs/GroAdminSystemAdminProxiesApi.md#Get-GroAdminVhostStatus) | **GET** /system/vhostStatus/{host} | getVhostStatus
*GroAdminSystemAdminProxiesApi* | [**Get-GroAdminVhosts**](docs/GroAdminSystemAdminProxiesApi.md#Get-GroAdminVhosts) | **GET** /system/vhostStatus | getVhosts
*GroAdminSystemAdminRolesApi* | [**Invoke-GroAdminDeleteRole**](docs/GroAdminSystemAdminRolesApi.md#Invoke-GroAdminDeleteRole) | **DELETE** /system/roles/{ID} | deleteRole
*GroAdminSystemAdminRolesApi* | [**Get-GroAdminPermissions**](docs/GroAdminSystemAdminRolesApi.md#Get-GroAdminPermissions) | **GET** /system/roles/permissions | getPermissions
*GroAdminSystemAdminRolesApi* | [**Get-GroAdminRole**](docs/GroAdminSystemAdminRolesApi.md#Get-GroAdminRole) | **GET** /system/roles/{ID} | getRole
*GroAdminSystemAdminRolesApi* | [**Get-GroAdminRoles**](docs/GroAdminSystemAdminRolesApi.md#Get-GroAdminRoles) | **GET** /system/roles | getRoles
*GroAdminSystemAdminRolesApi* | [**Invoke-GroAdminPatchRole**](docs/GroAdminSystemAdminRolesApi.md#Invoke-GroAdminPatchRole) | **PATCH** /system/roles/{ID} | patchRole
*GroAdminSystemAdminRolesApi* | [**Invoke-GroAdminPatchUserRoles**](docs/GroAdminSystemAdminRolesApi.md#Invoke-GroAdminPatchUserRoles) | **PATCH** /domains/{domainID}/users/{userID}/roles | patchUserRoles
*GroAdminSystemAdminRolesApi* | [**Submit-GroAdminRole**](docs/GroAdminSystemAdminRolesApi.md#Submit-GroAdminRole) | **POST** /system/roles | postRole
*GroAdminSystemAdminServersApi* | [**Invoke-GroAdminDeleteServer**](docs/GroAdminSystemAdminServersApi.md#Invoke-GroAdminDeleteServer) | **DELETE** /system/servers/{ID} | deleteServer
*GroAdminSystemAdminServersApi* | [**Get-GroAdminServer**](docs/GroAdminSystemAdminServersApi.md#Get-GroAdminServer) | **GET** /system/servers/{ID} | getServer
*GroAdminSystemAdminServersApi* | [**Get-GroAdminServers**](docs/GroAdminSystemAdminServersApi.md#Get-GroAdminServers) | **GET** /system/servers | getServers
*GroAdminSystemAdminServersApi* | [**Invoke-GroAdminPatchServer**](docs/GroAdminSystemAdminServersApi.md#Invoke-GroAdminPatchServer) | **PATCH** /system/servers/{ID} | patchServer
*GroAdminSystemAdminServersApi* | [**Submit-GroAdminServers**](docs/GroAdminSystemAdminServersApi.md#Submit-GroAdminServers) | **POST** /system/servers | postServers
*GroAdminTasQApi* | [**Get-GroAdminTask**](docs/GroAdminTasQApi.md#Get-GroAdminTask) | **GET** /tasq/tasks/{ID} | getTask
*GroAdminTasQApi* | [**Get-GroAdminTasks**](docs/GroAdminTasQApi.md#Get-GroAdminTasks) | **GET** /tasq/tasks | getTasks
*GroAdminTasQApi* | [**Invoke-GroAdminNotify**](docs/GroAdminTasQApi.md#Invoke-GroAdminNotify) | **POST** /tasq/notify | notify
*GroAdminTasQApi* | [**Start-GroAdminTaskq**](docs/GroAdminTasQApi.md#Start-GroAdminTaskq) | **POST** /tasq/start | startTaskq
*GroAdminTasQApi* | [**Stop-GroAdminTaskq**](docs/GroAdminTasQApi.md#Stop-GroAdminTaskq) | **POST** /tasq/stop | stopTaskq
*GroAdminTasQApi* | [**Invoke-GroAdminTaskQStatus**](docs/GroAdminTasQApi.md#Invoke-GroAdminTaskQStatus) | **GET** /tasq/status | taskQStatus


### Documentation for Models

 - [GrommunioAdmin/Model.AboutResponse](docs/AboutResponse.md)
 - [GrommunioAdmin/Model.Action](docs/Action.md)
 - [GrommunioAdmin/Model.AdminPermission](docs/AdminPermission.md)
 - [GrommunioAdmin/Model.AdminRole](docs/AdminRole.md)
 - [GrommunioAdmin/Model.AdminRoleWrite](docs/AdminRoleWrite.md)
 - [GrommunioAdmin/Model.Allowbluetooth](docs/Allowbluetooth.md)
 - [GrommunioAdmin/Model.Allowbrowser](docs/Allowbrowser.md)
 - [GrommunioAdmin/Model.Allowcam](docs/Allowcam.md)
 - [GrommunioAdmin/Model.Allowconsumeremail](docs/Allowconsumeremail.md)
 - [GrommunioAdmin/Model.Allowdesktopsync](docs/Allowdesktopsync.md)
 - [GrommunioAdmin/Model.Allowhtmlemail](docs/Allowhtmlemail.md)
 - [GrommunioAdmin/Model.Allowinternetsharing](docs/Allowinternetsharing.md)
 - [GrommunioAdmin/Model.Allowirda](docs/Allowirda.md)
 - [GrommunioAdmin/Model.Allowpopimapemail](docs/Allowpopimapemail.md)
 - [GrommunioAdmin/Model.Allowremotedesk](docs/Allowremotedesk.md)
 - [GrommunioAdmin/Model.Allowsimpledevpw](docs/Allowsimpledevpw.md)
 - [GrommunioAdmin/Model.Allowsmimeencalgneg](docs/Allowsmimeencalgneg.md)
 - [GrommunioAdmin/Model.Allowsmimesoftcerts](docs/Allowsmimesoftcerts.md)
 - [GrommunioAdmin/Model.Allowstoragecard](docs/Allowstoragecard.md)
 - [GrommunioAdmin/Model.Allowtextmessaging](docs/Allowtextmessaging.md)
 - [GrommunioAdmin/Model.Allowunsignedapps](docs/Allowunsignedapps.md)
 - [GrommunioAdmin/Model.Allowunsigninstallpacks](docs/Allowunsigninstallpacks.md)
 - [GrommunioAdmin/Model.Allowwifi](docs/Allowwifi.md)
 - [GrommunioAdmin/Model.Alphanumpwreq](docs/Alphanumpwreq.md)
 - [GrommunioAdmin/Model.Attenabled](docs/Attenabled.md)
 - [GrommunioAdmin/Model.AuthBackendSelection](docs/AuthBackendSelection.md)
 - [GrommunioAdmin/Model.Child](docs/Child.md)
 - [GrommunioAdmin/Model.ChkFormatResponse](docs/ChkFormatResponse.md)
 - [GrommunioAdmin/Model.Class](docs/Class.md)
 - [GrommunioAdmin/Model.ClassFilter](docs/ClassFilter.md)
 - [GrommunioAdmin/Model.ClassRead](docs/ClassRead.md)
 - [GrommunioAdmin/Model.ClassTreeElement](docs/ClassTreeElement.md)
 - [GrommunioAdmin/Model.ClassWrite](docs/ClassWrite.md)
 - [GrommunioAdmin/Model.Code](docs/Code.md)
 - [GrommunioAdmin/Model.Connection](docs/Connection.md)
 - [GrommunioAdmin/Model.Container](docs/Container.md)
 - [GrommunioAdmin/Model.CpuPercent](docs/CpuPercent.md)
 - [GrommunioAdmin/Model.CreateDefaults](docs/CreateDefaults.md)
 - [GrommunioAdmin/Model.Data1](docs/Data1.md)
 - [GrommunioAdmin/Model.Data2](docs/Data2.md)
 - [GrommunioAdmin/Model.Data3](docs/Data3.md)
 - [GrommunioAdmin/Model.Data3Asversion](docs/Data3Asversion.md)
 - [GrommunioAdmin/Model.Data4](docs/Data4.md)
 - [GrommunioAdmin/Model.Data5](docs/Data5.md)
 - [GrommunioAdmin/Model.Data6](docs/Data6.md)
 - [GrommunioAdmin/Model.Data7](docs/Data7.md)
 - [GrommunioAdmin/Model.DatabaseError1](docs/DatabaseError1.md)
 - [GrommunioAdmin/Model.DefaultsCreateParamsResponse](docs/DefaultsCreateParamsResponse.md)
 - [GrommunioAdmin/Model.DefaultsStoreLangsResponse](docs/DefaultsStoreLangsResponse.md)
 - [GrommunioAdmin/Model.Deleted](docs/Deleted.md)
 - [GrommunioAdmin/Model.Devencenabled](docs/Devencenabled.md)
 - [GrommunioAdmin/Model.Devpwenabled](docs/Devpwenabled.md)
 - [GrommunioAdmin/Model.Disk](docs/Disk.md)
 - [GrommunioAdmin/Model.Domain](docs/Domain.md)
 - [GrommunioAdmin/Model.Domain1](docs/Domain1.md)
 - [GrommunioAdmin/Model.DomainCommon](docs/DomainCommon.md)
 - [GrommunioAdmin/Model.DomainCommonSyncPolicy](docs/DomainCommonSyncPolicy.md)
 - [GrommunioAdmin/Model.DomainCommonSyncPolicyAllOf](docs/DomainCommonSyncPolicyAllOf.md)
 - [GrommunioAdmin/Model.DomainHomeserver](docs/DomainHomeserver.md)
 - [GrommunioAdmin/Model.DomainHomeserverAllOf](docs/DomainHomeserverAllOf.md)
 - [GrommunioAdmin/Model.DomainWrite](docs/DomainWrite.md)
 - [GrommunioAdmin/Model.DomainsClassesResponse](docs/DomainsClassesResponse.md)
 - [GrommunioAdmin/Model.DomainsClassesTestFilterResponse](docs/DomainsClassesTestFilterResponse.md)
 - [GrommunioAdmin/Model.DomainsClassesTreeResponse](docs/DomainsClassesTreeResponse.md)
 - [GrommunioAdmin/Model.DomainsFoldersOwnersMemberIDRequest](docs/DomainsFoldersOwnersMemberIDRequest.md)
 - [GrommunioAdmin/Model.DomainsFoldersOwnersRequest](docs/DomainsFoldersOwnersRequest.md)
 - [GrommunioAdmin/Model.DomainsFoldersOwnersResponse](docs/DomainsFoldersOwnersResponse.md)
 - [GrommunioAdmin/Model.DomainsFoldersRequest](docs/DomainsFoldersRequest.md)
 - [GrommunioAdmin/Model.DomainsFoldersRequest1](docs/DomainsFoldersRequest1.md)
 - [GrommunioAdmin/Model.DomainsFoldersResponse](docs/DomainsFoldersResponse.md)
 - [GrommunioAdmin/Model.DomainsFoldersResponse1](docs/DomainsFoldersResponse1.md)
 - [GrommunioAdmin/Model.DomainsLdapCheckResponse](docs/DomainsLdapCheckResponse.md)
 - [GrommunioAdmin/Model.DomainsLdapCheckResponse1](docs/DomainsLdapCheckResponse1.md)
 - [GrommunioAdmin/Model.DomainsLdapDownsyncResponse](docs/DomainsLdapDownsyncResponse.md)
 - [GrommunioAdmin/Model.DomainsLdapDumpResponse](docs/DomainsLdapDumpResponse.md)
 - [GrommunioAdmin/Model.DomainsLdapImportUserResponse](docs/DomainsLdapImportUserResponse.md)
 - [GrommunioAdmin/Model.DomainsLdapImportUserResponse1](docs/DomainsLdapImportUserResponse1.md)
 - [GrommunioAdmin/Model.DomainsLdapSearchResponse](docs/DomainsLdapSearchResponse.md)
 - [GrommunioAdmin/Model.DomainsMlistsResponse](docs/DomainsMlistsResponse.md)
 - [GrommunioAdmin/Model.DomainsResponse](docs/DomainsResponse.md)
 - [GrommunioAdmin/Model.DomainsSyncPolicyResponse](docs/DomainsSyncPolicyResponse.md)
 - [GrommunioAdmin/Model.DomainsUsersDelegatesResponse](docs/DomainsUsersDelegatesResponse.md)
 - [GrommunioAdmin/Model.DomainsUsersPasswordRequest](docs/DomainsUsersPasswordRequest.md)
 - [GrommunioAdmin/Model.DomainsUsersResponse](docs/DomainsUsersResponse.md)
 - [GrommunioAdmin/Model.DomainsUsersRolesRequest](docs/DomainsUsersRolesRequest.md)
 - [GrommunioAdmin/Model.DomainsUsersRolesResponse](docs/DomainsUsersRolesResponse.md)
 - [GrommunioAdmin/Model.DomainsUsersSendasResponse](docs/DomainsUsersSendasResponse.md)
 - [GrommunioAdmin/Model.DomainsUsersStoreAccessRequest](docs/DomainsUsersStoreAccessRequest.md)
 - [GrommunioAdmin/Model.DomainsUsersStoreAccessRequest1](docs/DomainsUsersStoreAccessRequest1.md)
 - [GrommunioAdmin/Model.DomainsUsersStoreAccessResponse](docs/DomainsUsersStoreAccessResponse.md)
 - [GrommunioAdmin/Model.DomainsUsersStorePropsResponse](docs/DomainsUsersStorePropsResponse.md)
 - [GrommunioAdmin/Model.DomainsUsersStorePropsResponse1](docs/DomainsUsersStorePropsResponse1.md)
 - [GrommunioAdmin/Model.DomainsUsersSyncDeviceIDWipeRequest](docs/DomainsUsersSyncDeviceIDWipeRequest.md)
 - [GrommunioAdmin/Model.DomainsUsersSyncResponse](docs/DomainsUsersSyncResponse.md)
 - [GrommunioAdmin/Model.ExternalAudience](docs/ExternalAudience.md)
 - [GrommunioAdmin/Model.FetchmailEntry](docs/FetchmailEntry.md)
 - [GrommunioAdmin/Model.FolderMemberList](docs/FolderMemberList.md)
 - [GrommunioAdmin/Model.Forward](docs/Forward.md)
 - [GrommunioAdmin/Model.ForwardType](docs/ForwardType.md)
 - [GrommunioAdmin/Model.Fs](docs/Fs.md)
 - [GrommunioAdmin/Model.Homeserver](docs/Homeserver.md)
 - [GrommunioAdmin/Model.HomeserverRef](docs/HomeserverRef.md)
 - [GrommunioAdmin/Model.ImportLdapUser200Response](docs/ImportLdapUser200Response.md)
 - [GrommunioAdmin/Model.InvalidRequest1](docs/InvalidRequest1.md)
 - [GrommunioAdmin/Model.LdapConfig](docs/LdapConfig.md)
 - [GrommunioAdmin/Model.LdapConfigConnection](docs/LdapConfigConnection.md)
 - [GrommunioAdmin/Model.LdapConfigUsers](docs/LdapConfigUsers.md)
 - [GrommunioAdmin/Model.License](docs/License.md)
 - [GrommunioAdmin/Model.ListPrivilege](docs/ListPrivilege.md)
 - [GrommunioAdmin/Model.ListType](docs/ListType.md)
 - [GrommunioAdmin/Model.ListType1](docs/ListType1.md)
 - [GrommunioAdmin/Model.LoginResponse](docs/LoginResponse.md)
 - [GrommunioAdmin/Model.Maxattsize](docs/Maxattsize.md)
 - [GrommunioAdmin/Model.Maxcalagefilter](docs/Maxcalagefilter.md)
 - [GrommunioAdmin/Model.Maxemailagefilter](docs/Maxemailagefilter.md)
 - [GrommunioAdmin/Model.Memory](docs/Memory.md)
 - [GrommunioAdmin/Model.MlistRead](docs/MlistRead.md)
 - [GrommunioAdmin/Model.MlistReadClass](docs/MlistReadClass.md)
 - [GrommunioAdmin/Model.MlistReadClassAllOf](docs/MlistReadClassAllOf.md)
 - [GrommunioAdmin/Model.MlistWrite](docs/MlistWrite.md)
 - [GrommunioAdmin/Model.Mode](docs/Mode.md)
 - [GrommunioAdmin/Model.ModelData](docs/ModelData.md)
 - [GrommunioAdmin/Model.NotFound1](docs/NotFound1.md)
 - [GrommunioAdmin/Model.Op](docs/Op.md)
 - [GrommunioAdmin/Model.Org](docs/Org.md)
 - [GrommunioAdmin/Model.OrgWrite](docs/OrgWrite.md)
 - [GrommunioAdmin/Model.Orphaned](docs/Orphaned.md)
 - [GrommunioAdmin/Model.ParentClass](docs/ParentClass.md)
 - [GrommunioAdmin/Model.PasswdRequest](docs/PasswdRequest.md)
 - [GrommunioAdmin/Model.PatchConfigFileRequest](docs/PatchConfigFileRequest.md)
 - [GrommunioAdmin/Model.PatchFolderRequest](docs/PatchFolderRequest.md)
 - [GrommunioAdmin/Model.PatchServiceFilesRequest](docs/PatchServiceFilesRequest.md)
 - [GrommunioAdmin/Model.PatchStorePropsRequestValue](docs/PatchStorePropsRequestValue.md)
 - [GrommunioAdmin/Model.PatchUserRequest](docs/PatchUserRequest.md)
 - [GrommunioAdmin/Model.PatchUserRolesRequest](docs/PatchUserRolesRequest.md)
 - [GrommunioAdmin/Model.PostClassRequest](docs/PostClassRequest.md)
 - [GrommunioAdmin/Model.PostDeviceWipeRequest](docs/PostDeviceWipeRequest.md)
 - [GrommunioAdmin/Model.PostDomainRequest](docs/PostDomainRequest.md)
 - [GrommunioAdmin/Model.PostFoldersRequest](docs/PostFoldersRequest.md)
 - [GrommunioAdmin/Model.PostMlistsRequest](docs/PostMlistsRequest.md)
 - [GrommunioAdmin/Model.PostOrgsRequest](docs/PostOrgsRequest.md)
 - [GrommunioAdmin/Model.PostOwnerRequest](docs/PostOwnerRequest.md)
 - [GrommunioAdmin/Model.PostRoleRequest](docs/PostRoleRequest.md)
 - [GrommunioAdmin/Model.PostServersRequest](docs/PostServersRequest.md)
 - [GrommunioAdmin/Model.PostStoreAccessUserRequest](docs/PostStoreAccessUserRequest.md)
 - [GrommunioAdmin/Model.PostUserRequest](docs/PostUserRequest.md)
 - [GrommunioAdmin/Model.ProfileResponse](docs/ProfileResponse.md)
 - [GrommunioAdmin/Model.ProfileResponseUser](docs/ProfileResponseUser.md)
 - [GrommunioAdmin/Model.Protocol](docs/Protocol.md)
 - [GrommunioAdmin/Model.PublicFolder](docs/PublicFolder.md)
 - [GrommunioAdmin/Model.PublicFolderRef](docs/PublicFolderRef.md)
 - [GrommunioAdmin/Model.PutConfigFileRequest](docs/PutConfigFileRequest.md)
 - [GrommunioAdmin/Model.PutCreateParamsRequest](docs/PutCreateParamsRequest.md)
 - [GrommunioAdmin/Model.PutPasswdRequest](docs/PutPasswdRequest.md)
 - [GrommunioAdmin/Model.PutStoreAccessUserRequest](docs/PutStoreAccessUserRequest.md)
 - [GrommunioAdmin/Model.Pwrecoveryenabled](docs/Pwrecoveryenabled.md)
 - [GrommunioAdmin/Model.Queued](docs/Queued.md)
 - [GrommunioAdmin/Model.RemoteCLIRequest](docs/RemoteCLIRequest.md)
 - [GrommunioAdmin/Model.Reqdevenc](docs/Reqdevenc.md)
 - [GrommunioAdmin/Model.Reqencsmimealgorithm](docs/Reqencsmimealgorithm.md)
 - [GrommunioAdmin/Model.Reqencsmimemessages](docs/Reqencsmimemessages.md)
 - [GrommunioAdmin/Model.Reqmansyncroam](docs/Reqmansyncroam.md)
 - [GrommunioAdmin/Model.Reqsignedsmimealgorithm](docs/Reqsignedsmimealgorithm.md)
 - [GrommunioAdmin/Model.Reqsignedsmimemessages](docs/Reqsignedsmimemessages.md)
 - [GrommunioAdmin/Model.Role](docs/Role.md)
 - [GrommunioAdmin/Model.ServerError1](docs/ServerError1.md)
 - [GrommunioAdmin/Model.Service](docs/Service.md)
 - [GrommunioAdmin/Model.ServiceSyncPolicyResponse](docs/ServiceSyncPolicyResponse.md)
 - [GrommunioAdmin/Model.ServiceUnavailable1](docs/ServiceUnavailable1.md)
 - [GrommunioAdmin/Model.ServiceUserinfoResponse](docs/ServiceUserinfoResponse.md)
 - [GrommunioAdmin/Model.ServiceWipeRequest](docs/ServiceWipeRequest.md)
 - [GrommunioAdmin/Model.ServiceWipeResponse](docs/ServiceWipeResponse.md)
 - [GrommunioAdmin/Model.SetAuthmgrRequest](docs/SetAuthmgrRequest.md)
 - [GrommunioAdmin/Model.SetMemberRequest](docs/SetMemberRequest.md)
 - [GrommunioAdmin/Model.SetOofSizeRequest](docs/SetOofSizeRequest.md)
 - [GrommunioAdmin/Model.SetOrgLDAPConfRequest](docs/SetOrgLDAPConfRequest.md)
 - [GrommunioAdmin/Model.SetPasswordRequest](docs/SetPasswordRequest.md)
 - [GrommunioAdmin/Model.SetUserDeviceWipeStatusRequest](docs/SetUserDeviceWipeStatusRequest.md)
 - [GrommunioAdmin/Model.SrcAuth](docs/SrcAuth.md)
 - [GrommunioAdmin/Model.State](docs/State.md)
 - [GrommunioAdmin/Model.State1](docs/State1.md)
 - [GrommunioAdmin/Model.Status](docs/Status.md)
 - [GrommunioAdmin/Model.StatusResponse](docs/StatusResponse.md)
 - [GrommunioAdmin/Model.Swap](docs/Swap.md)
 - [GrommunioAdmin/Model.SyncPolicy](docs/SyncPolicy.md)
 - [GrommunioAdmin/Model.SyncPolicyMaxattsize](docs/SyncPolicyMaxattsize.md)
 - [GrommunioAdmin/Model.SyncStatus](docs/SyncStatus.md)
 - [GrommunioAdmin/Model.SystemCliRequest](docs/SystemCliRequest.md)
 - [GrommunioAdmin/Model.SystemCliResponse](docs/SystemCliResponse.md)
 - [GrommunioAdmin/Model.SystemDashboardResponse](docs/SystemDashboardResponse.md)
 - [GrommunioAdmin/Model.SystemDashboardResponseCpuPercent](docs/SystemDashboardResponseCpuPercent.md)
 - [GrommunioAdmin/Model.SystemDashboardResponseMemory](docs/SystemDashboardResponseMemory.md)
 - [GrommunioAdmin/Model.SystemDashboardResponseSwap](docs/SystemDashboardResponseSwap.md)
 - [GrommunioAdmin/Model.SystemDashboardServicesResponse](docs/SystemDashboardServicesResponse.md)
 - [GrommunioAdmin/Model.SystemDbconfCommandsResponse](docs/SystemDbconfCommandsResponse.md)
 - [GrommunioAdmin/Model.SystemDbconfRequest](docs/SystemDbconfRequest.md)
 - [GrommunioAdmin/Model.SystemDbconfRequest1](docs/SystemDbconfRequest1.md)
 - [GrommunioAdmin/Model.SystemDbconfRequest2](docs/SystemDbconfRequest2.md)
 - [GrommunioAdmin/Model.SystemDbconfResponse](docs/SystemDbconfResponse.md)
 - [GrommunioAdmin/Model.SystemDbconfResponse2](docs/SystemDbconfResponse2.md)
 - [GrommunioAdmin/Model.SystemDomainsResponse](docs/SystemDomainsResponse.md)
 - [GrommunioAdmin/Model.SystemLogsResponse](docs/SystemLogsResponse.md)
 - [GrommunioAdmin/Model.SystemLogsResponse1](docs/SystemLogsResponse1.md)
 - [GrommunioAdmin/Model.SystemMailqResponse](docs/SystemMailqResponse.md)
 - [GrommunioAdmin/Model.SystemMconfAuthmgrRequest](docs/SystemMconfAuthmgrRequest.md)
 - [GrommunioAdmin/Model.SystemMconfAuthmgrResponse](docs/SystemMconfAuthmgrResponse.md)
 - [GrommunioAdmin/Model.SystemMconfLdapResponse](docs/SystemMconfLdapResponse.md)
 - [GrommunioAdmin/Model.SystemOrgsLdapDownsyncResponse](docs/SystemOrgsLdapDownsyncResponse.md)
 - [GrommunioAdmin/Model.SystemOrgsLdapResponse](docs/SystemOrgsLdapResponse.md)
 - [GrommunioAdmin/Model.SystemOrgsResponse](docs/SystemOrgsResponse.md)
 - [GrommunioAdmin/Model.SystemRolesPermissionsResponse](docs/SystemRolesPermissionsResponse.md)
 - [GrommunioAdmin/Model.SystemRolesResponse](docs/SystemRolesResponse.md)
 - [GrommunioAdmin/Model.SystemServersResponse](docs/SystemServersResponse.md)
 - [GrommunioAdmin/Model.SystemSyncTopResponse](docs/SystemSyncTopResponse.md)
 - [GrommunioAdmin/Model.SystemUsersResponse](docs/SystemUsersResponse.md)
 - [GrommunioAdmin/Model.SystemVhostStatusResponse](docs/SystemVhostStatusResponse.md)
 - [GrommunioAdmin/Model.TasqStatusResponse](docs/TasqStatusResponse.md)
 - [GrommunioAdmin/Model.TasqTask](docs/TasqTask.md)
 - [GrommunioAdmin/Model.TasqTasksResponse](docs/TasqTasksResponse.md)
 - [GrommunioAdmin/Model.User](docs/User.md)
 - [GrommunioAdmin/Model.User1](docs/User1.md)
 - [GrommunioAdmin/Model.User2](docs/User2.md)
 - [GrommunioAdmin/Model.UserForward](docs/UserForward.md)
 - [GrommunioAdmin/Model.UserForwardAllOf](docs/UserForwardAllOf.md)
 - [GrommunioAdmin/Model.UserInit](docs/UserInit.md)
 - [GrommunioAdmin/Model.UserOofState](docs/UserOofState.md)
 - [GrommunioAdmin/Model.UserStatus](docs/UserStatus.md)
 - [GrommunioAdmin/Model.UserUpdate](docs/UserUpdate.md)
 - [GrommunioAdmin/Model.Users](docs/Users.md)

## Status

- [Top Feature Requests](https://github.com/grommunio/aapi-powershell/issues?q=label%3Aenhancement+is%3Aopen+sort%3Areactions-%2B1-desc) (Add your votes using the 👍 reaction)
- [Top Bugs](https://github.com/grommunio/aapi-powershell/issues?q=is%3Aissue+is%3Aopen+label%3Abug+sort%3Areactions-%2B1-desc) (Add your votes using the 👍 reaction)
- [Newest Bugs](https://github.com/grommunio/aapi-powershell/issues?q=is%3Aopen+is%3Aissue+label%3Abug)

## Support

- Support is available through **[grommunio GmbH](https://grommunio.com)** and its partners.
- grommunio community is available here: **[grommunio Community](https://community.grommunio.com)**

For direct contact to the maintainers (for example to supply information about a security-related responsible disclosure), you can contact grommunio directly at [dev@grommunio.com](mailto:dev@grommunio.com)

## Project assistance

If you want to say **thank you** or/and support active development of grommunio AAPIPS:

- Add a [GitHub Star](https://github.com/grommunio/aapi-powershell) to the project.
- Tweet about grommunio AAPIPS.
- Write interesting articles about the project on [Dev.to](https://dev.to/), [Medium](https://medium.com/), your personal blog or any medium you feel comfortable with.

Together, we can make grommunio AAPIPS **better**!

## Contributing

First off, thanks for taking the time to contribute! Contributions are what make the open-source community such an amazing place to learn, inspire, and create. Any contributions you make will benefit everybody else and are **greatly appreciated**.

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
grommunio AAPIPS is provided **"as is"** without any **warranty**. For professional support options through subscriptions, head over to [grommunio](https://grommunio.com).

## License

This project is licensed under the **GNU Affero General Public License v3**.

See [LICENSE.txt](LICENSE.txt) for more information.
