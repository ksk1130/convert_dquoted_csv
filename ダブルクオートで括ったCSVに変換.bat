@echo off

REM �o�b�`�Ƀh���b�O����CSV�t�@�C�����_�u���N�I�[�g�Ŋ���ꂽCSV�ɕϊ����ĕʃt�@�C���ŕۑ�����
SET CURRENT_DIR=%~dp0

for %%f in (%*) do (
  powershell -NoProfile -ExecutionPolicy Unrestricted "%CURRENT_DIR%\convert_dquoted_csv.ps1" -filename %%f
)

PAUSE
