#
# grommunio Admin API
# grommunio administration REST API
# Version: 1.9.2
#

function Get-FunctionsToExport {
    [CmdletBinding()]
    Param (
        [Parameter(Mandatory = $true, ValueFromPipelineByPropertyName = $true)]
        [ValidateNotNullOrEmpty()]
        [Alias('FullName')]
        $Path
    )

    Process {
        $Token = $null
        $ParserErr = $null

        $Ast = [System.Management.Automation.Language.Parser]::ParseFile(
            $Path,
            [ref]$Token,
            [ref]$ParserErr
        )

        if ($ParserErr) {
            throw $ParserErr
        } else {
            foreach ($name in 'Begin', 'Process', 'End') {
                foreach ($Statement in $Ast."${name}Block".Statements) {
                    if (
                        [String]::IsNullOrWhiteSpace($Statement.Name) -or
                        $Statement.Extent.ToString() -notmatch
                        ('function\W+{0}' -f $Statement.Name)
                    ) {
                        continue
                    }

                    $Statement.Name
                }
            }
        }
    }
}

$ScriptDir = Split-Path $script:MyInvocation.MyCommand.Path
$FunctionPath = 'Api', 'Model', 'Client' | ForEach-Object {Join-Path "$ScriptDir\src\GrommunioAdmin\" $_}

$Manifest = @{
    Path = "$ScriptDir\src\GrommunioAdmin\GrommunioAdmin.psd1"

    CompanyName = 'grommunio'
    Description = 'GrommunioAdmin - the PowerShell module for grommunio Admin API'
    Tags = @('grommunio' )
    ProjectUri = 'https://grommunio.com'
    LicenseUri = 'https://www.gnu.org/licenses/agpl-3.0.txt'
    IconUri = 'https://grommunio.com/wp-content/uploads/2021/12/grommunio_logo_bg_square_media.svg'

    ModuleVersion = '1.9.2'

    RootModule = 'GrommunioAdmin.psm1'
    Guid = '{A1D9801D-61B0-4395-939B-99C64CB426E5}' # Has to be static, otherwise each new build will be considered different module

    PowerShellVersion = '6.2'

    FunctionsToExport = $FunctionPath | Get-ChildItem -Filter *.ps1 | Get-FunctionsToExport

    VariablesToExport = @()
    AliasesToExport = @()
    CmdletsToExport = @()

}

New-ModuleManifest @Manifest
