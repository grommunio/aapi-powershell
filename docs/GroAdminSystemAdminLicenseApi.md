# GrommunioAdmin.GrommunioAdmin\Api.GroAdminSystemAdminLicenseApi

All URIs are relative to */api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Invoke-GroAdminDownloadCert**](GroAdminSystemAdminLicenseApi.md#Invoke-GroAdminDownloadCert) | **GET** /system/license/certificate.pem | 
[**Get-GroAdminLicense**](GroAdminSystemAdminLicenseApi.md#Get-GroAdminLicense) | **GET** /system/license | Get information about the currently installed License
[**Get-GroAdminLicenseCredentials**](GroAdminSystemAdminLicenseApi.md#Get-GroAdminLicenseCredentials) | **GET** /system/license/creds | 
[**Send-GroAdminLicense**](GroAdminSystemAdminLicenseApi.md#Send-GroAdminLicense) | **PUT** /system/license | Upload new license file
[**Set-GroAdminLicenseCredentials**](GroAdminSystemAdminLicenseApi.md#Set-GroAdminLicenseCredentials) | **PUT** /system/license/creds | 


<a id="Invoke-GroAdminDownloadCert"></a>
# **Invoke-GroAdminDownloadCert**
> void Invoke-GroAdminDownloadCert<br>



Download the certificate file

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: JWTCookie
$Configuration.ApiKey.grommunioAuthJwt = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.grommunioAuthJwt = "Bearer"


try {
    $Result = Invoke-GroAdminDownloadCert
} catch {
    Write-Host ("Exception occurred when calling Invoke-GroAdminDownloadCert: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

void (empty response body)

### Authorization

[JWTCookie](../README.md#JWTCookie)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-GroAdminLicense"></a>
# **Get-GroAdminLicense**
> License Get-GroAdminLicense<br>

Get information about the currently installed License

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: JWTCookie
$Configuration.ApiKey.grommunioAuthJwt = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.grommunioAuthJwt = "Bearer"


# Get information about the currently installed License
try {
    $Result = Get-GroAdminLicense
} catch {
    Write-Host ("Exception occurred when calling Get-GroAdminLicense: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**License**](License.md) (PSCustomObject)

### Authorization

[JWTCookie](../README.md#JWTCookie)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-GroAdminLicenseCredentials"></a>
# **Get-GroAdminLicenseCredentials**
> GetLicenseCredentials200Response Get-GroAdminLicenseCredentials<br>



Get subscription credentials

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: JWTCookie
$Configuration.ApiKey.grommunioAuthJwt = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.grommunioAuthJwt = "Bearer"


try {
    $Result = Get-GroAdminLicenseCredentials
} catch {
    Write-Host ("Exception occurred when calling Get-GroAdminLicenseCredentials: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**GetLicenseCredentials200Response**](GetLicenseCredentials200Response.md) (PSCustomObject)

### Authorization

[JWTCookie](../README.md#JWTCookie)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Send-GroAdminLicense"></a>
# **Send-GroAdminLicense**
> License Send-GroAdminLicense<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-XCsrfToken] <String><br>

Upload new license file

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: JWTCookie
$Configuration.ApiKey.grommunioAuthJwt = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.grommunioAuthJwt = "Bearer"

$XCsrfToken = "MyXCsrfToken" # String | CSRF Token (optional)

# Upload new license file
try {
    $Result = Send-GroAdminLicense -XCsrfToken $XCsrfToken
} catch {
    Write-Host ("Exception occurred when calling Send-GroAdminLicense: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **XCsrfToken** | **String**| CSRF Token | [optional] 

### Return type

[**License**](License.md) (PSCustomObject)

### Authorization

[JWTCookie](../README.md#JWTCookie)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Set-GroAdminLicenseCredentials"></a>
# **Set-GroAdminLicenseCredentials**
> void Set-GroAdminLicenseCredentials<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SetLicenseCredentialsRequest] <PSCustomObject><br>



Set subscription credentials

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: JWTCookie
$Configuration.ApiKey.grommunioAuthJwt = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.grommunioAuthJwt = "Bearer"

$SetLicenseCredentialsRequest = Initialize-SetLicenseCredentialsRequest -Username "MyUsername" -Password "MyPassword" # SetLicenseCredentialsRequest |  (optional)

try {
    $Result = Set-GroAdminLicenseCredentials -SetLicenseCredentialsRequest $SetLicenseCredentialsRequest
} catch {
    Write-Host ("Exception occurred when calling Set-GroAdminLicenseCredentials: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **SetLicenseCredentialsRequest** | [**SetLicenseCredentialsRequest**](SetLicenseCredentialsRequest.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

[JWTCookie](../README.md#JWTCookie)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

