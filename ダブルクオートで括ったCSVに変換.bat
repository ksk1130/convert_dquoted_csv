@echo off

REM バッチにドラッグしたCSVファイルをダブルクオートで括られたCSVに変換して別ファイルで保存する
SET CURRENT_DIR=%~dp0

for %%f in (%*) do (
  powershell -NoProfile -ExecutionPolicy Unrestricted "%CURRENT_DIR%\convert_dquoted_csv.ps1" -filename %%f
)

PAUSE
