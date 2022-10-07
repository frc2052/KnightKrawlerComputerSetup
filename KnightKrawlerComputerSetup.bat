@echo off

REM check if script has administrator privileges
net session >nul 2>&1
if not %errorlevel%==0 (
	echo To run this file successfully right-click on the file, 
	echo then select "Run as administrator".
	echo.&pause&exit
)

REM check if user still wants to continue running the script
choice /m "Would you like to continue installing"
if errorlevel 2 goto :EOF

pause

REM install chocolatey through powershell
@"%SystemRoot%\System32\WindowsPowerShell\v1.0\powershell.exe" -NoProfile -InputFormat None -ExecutionPolicy Bypass -Command "[System.Net.ServicePointManager]::SecurityProtocol = 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))" && SET "PATH=%PATH%;%ALLUSERSPROFILE%\chocolatey\bin"
REM skips confirmation prompts
choco feature enable -n=allowGlobalConfirmation

REM install etcher
choco install etcher

REM install chrome
choco install googlechrome

REM install firefox
choco install firefox

REM install git
choco install git

REM install sourcetree
choco install sourcetree

REM install github desktop
choco install github-desktop

REM install tortoise git
choco install tortoisegit

REM install wpilib
choco install wpilib

REM install frc game tools
choco install ni-frcgametools