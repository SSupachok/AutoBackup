REM >> Backupper Path <<
:: "Ctrl+H" To find and replace
:: //----- CMD
@echo off
set hour=%time:~0,2%
if "%hour:~0,1%" == " " set hour=0%hour:~1,1%
set min=%time:~3,2%
if "%min:~0,1%" == " " set min=0%min:~1,1%
set secs=%time:~6,2%
if "%secs:~0,1%" == " " set secs=0%secs:~1,1%
set name=%date:~-4,4%%date:~-10,2%%date:~7,2%_%hour%%min%%secs%
mkdir "G:\My Drive\Backup\%name%"
copy "D:\File1.xlsx" "G:\My Drive\Backup\%name%"
copy "D:\File2.txt" "G:\My Drive\Backup\%name%"

cls
exit

REM > Can't copy folder but can copy files in folder.
:: xcopy "D:\Folder3" "G:\My Drive\Backup\%name%" /E/H/C/I