@echo off
color 4

:: Administrative permissions
>nul 2>&1 "%SYSTEMROOT%\system32\cacls.exe" "%SYSTEMROOT%\system32\config\system"
if '%errorlevel%' NEQ '0' (
    echo Set UAC = CreateObject^("Shell.Application"^) > "%temp%\getadmin.vbs"
    echo UAC.ShellExecute "%~s0", "", "", "runas", 1 >> "%temp%\getadmin.vbs"
    "%temp%\getadmin.vbs"
    del "%temp%\getadmin.vbs"
    exit /B
) else (
    goto gotAdmin
)

:gotAdmin
pushd "%CD%"
CD /D "%~dp0"
copy "C:\Users\%username%\netv.dll" "C:\Windows\Temp\"

:: Loading and injecting
start "" "%cd%\BadModule.exe"
color 2
sc stop fairplaykd >nul
sc delete fairplaykd >nul
sc stop fairplaykd1 >nul
sc delete fairplaykd1 >nul
sc stop fairplaykd2 >nul
sc delete fairplaykd2 >nul
sc stop fairplaykd3 >nul
sc delete fairplaykd3 >nul
sc stop fairplaykd4 >nul
sc delete fairplaykd4 >nul
sc stop fairplaykd5 >nul
sc delete fairplaykd5 >nul
sc stop fairplaykd6 >nul
sc delete fairplaykd6 >nul
sc stop fairplaykd7 >nul
sc delete fairplaykd7 >nul
