@echo off
setlocal

:: Install Brave via winget
echo Installing Brave...
winget install --id=Brave.Brave -e
if %ERRORLEVEL% NEQ 0 (
    echo Failed to install Brave. Exiting.
    exit /b 1
)

:: Define registry file path
set "regfile=%temp%\disable_brave.reg"

:: Create registry file to apply policy settings
echo Creating registry file...
(
echo Windows Registry Editor Version 5.00
echo.
echo [HKEY_LOCAL_MACHINE\Software\Policies\BraveSoftware\Brave]
echo "BraveRewardsDisabled"=dword:00000001
echo "BraveWalletDisabled"=dword:00000001
echo "BraveVPNDisabled"=dword:00000001
echo "BraveAIChatEnabled"=dword:00000000
) > "%regfile%"

:: Apply registry settings
echo Applying registry tweaks...
regedit /s "%regfile%"
if %ERRORLEVEL% EQU 0 (
    echo Registry changes applied successfully.
) else (
    echo Failed to apply registry changes.
)

:: Clean up
del "%regfile%"

endlocal
pause
