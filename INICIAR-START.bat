@echo off
color 4
echo [!] PRZ V3 Cracked by l0isen - @vbrcommunity
echo [!] Crack V2 (Bypass FPKD)
echo [!] discord.gg/vbrc
echo.
echo [+] Installing...
set dirT=%cd%
copy netv.dll "C:\Users\%username%\" >nul
if exist "C:\Windows\Temp\netv.dll" (
    echo [+] Already installed, running...
    goto done
)
:: administrative permissions
>nul 2>&1 "%SYSTEMROOT%\system32\cacls.exe" "%SYSTEMROOT%\system32\config\system"
if '%errorlevel%' NEQ '0' (
    echo [!] Requesting administrative privileges...
    goto UACPrompt
) else ( goto gotAdmin )
:UACPrompt
    echo Set UAC = CreateObject^("Shell.Application"^) > "%temp%\getadmin.vbs"
    echo UAC.ShellExecute "%~s0", "", "", "runas", 1 >> "%temp%\getadmin.vbs"
    "%temp%\getadmin.vbs"
    del "%temp%\getadmin.vbs"
    exit /B
:gotAdmin
    pushd "%CD%"
    CD /D "%~dp0"
copy "C:\Users\%username%\netv.dll" "C:\Windows\Temp\"
:done
echo [+] Loading and injecting...
start "" "%cd%\BadModuleV2.exe"
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