# GrommunioAdmin.GrommunioAdmin/Api.GroAdminSystemAdminLicenseApi

All URIs are relative to */api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Invoke-GroAdminDownloadCert**](GroAdminSystemAdminLicenseApi.md#Invoke-GroAdminDownloadCert) | **GET** /system/license/certificate.pem | downloadCert
[**Get-GroAdminLicense**](GroAdminSystemAdminLicenseApi.md#Get-GroAdminLicense) | **GET** /system/license | getLicense
[**Send-GroAdminLicense**](GroAdminSystemAdminLicenseApi.md#Send-GroAdminLicense) | **PUT** /system/license | putLicense


<a name="Invoke-GroAdminDownloadCert"></a>
# **Invoke-GroAdminDownloadCert**
> void Invoke-GroAdminDownloadCert<br>

downloadCert

Download the certificate file

### Example
```powershell

# downloadCert
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

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Get-GroAdminLicense"></a>
# **Get-GroAdminLicense**
> License Get-GroAdminLicense<br>

getLicense

Get information about the currently installed License

### Example
```powershell

# getLicense
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

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Send-GroAdminLicense"></a>
# **Send-GroAdminLicense**
> License Send-GroAdminLicense<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-XCsrfToken] <String><br>

putLicense

Upload new license file

### Example
```powershell
$XCsrfToken = "MyXCsrfToken" # String | CSRF Token (optional)

# putLicense
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

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

