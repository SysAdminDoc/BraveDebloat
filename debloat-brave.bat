@echo off
setlocal

:: === Step 1: Install Brave via Winget ===
echo Installing Brave...
winget install --id=Brave.Brave -e
if %ERRORLEVEL% NEQ 0 (
    echo Failed to install Brave. Exiting.
    exit /b 1
)

:: === Step 2: Apply Registry Debloat Settings ===
echo Creating registry file...

set "regfile=%temp%\disable_brave.reg"

(
echo Windows Registry Editor Version 5.00
echo.
echo [HKEY_LOCAL_MACHINE\Software\Policies\BraveSoftware\Brave]
echo "BraveRewardsDisabled"=dword:00000001
echo "BraveWalletDisabled"=dword:00000001
echo "BraveVPNDisabled"=dword:00000001
echo "BraveAIChatEnabled"=dword:00000000
echo "TorDisabled"=dword:00000001
echo "NewTabPageLocation"="https://www.google.com"
) > "%regfile%"

echo Applying registry tweaks...
regedit /s "%regfile%"
if %ERRORLEVEL% EQU 0 (
    echo Registry changes applied successfully.
) else (
    echo Failed to apply registry changes.
)

del "%regfile%"

:: === Step 3: Download User Data Files ===
set "bravePath=%LOCALAPPDATA%\BraveSoftware\Brave-Browser\User Data\Default"
if not exist "%bravePath%" (
    echo Creating Default profile folder...
    mkdir "%bravePath%"
)

echo Downloading profile configuration files...

bitsadmin /transfer "Brave1" https://raw.githubusercontent.com/SysAdminDoc/BraveDebloat/refs/heads/main/Secure%20Preferences "%bravePath%\Secure Preferences"
bitsadmin /transfer "Brave2" https://raw.githubusercontent.com/SysAdminDoc/BraveDebloat/refs/heads/main/Web%20Data "%bravePath%\Web Data"
bitsadmin /transfer "Brave3" https://raw.githubusercontent.com/SysAdminDoc/BraveDebloat/refs/heads/main/DIPS "%bravePath%\DIPS"
bitsadmin /transfer "Brave4" https://raw.githubusercontent.com/SysAdminDoc/BraveDebloat/refs/heads/main/Preferences "%bravePath%\Preferences"

echo Downloads complete.

endlocal
