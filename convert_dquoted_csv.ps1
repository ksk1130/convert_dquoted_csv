# 各値がダブルクオートでくくられていないCSVをダブルクオートでくくった
# CSVとして別ファイルに保存するスクリプト
param(
[string]$fileName    # 処理対象ファイル名
)

# エラーがあった時点で処理終了
$ErrorActionPreference = "stop"

# 変換後ファイルは、元ファイルと同階層に<元ファイル名>_dquoted.csvとして保存
$parentDir = Split-Path -Parent $fileName
$fileNameWithoutExtension = [System.IO.Path]::GetFileNameWithoutExtension($fileName);
$outputFileName = Join-Path $parentDir $fileNameWithoutExtension"_dquoted.csv"
Write-Host $outputFileName

Import-Csv -Encoding Default $fileName |`
Export-Csv -Encoding Default -NoTypeInformation $outputFileName
