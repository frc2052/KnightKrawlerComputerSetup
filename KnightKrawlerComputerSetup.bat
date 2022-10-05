@echo off

REM check if script has administrator privileges
net session >nul 2>&1
if not %errorlevel%==0 (
	echo To run this file successfully right-click on the file, 
	echo then select "Run as administrator".
	echo.&pause&exit
)

REM install chocolatey through powershell
powershell -NoProfile -ExecutionPolicy Bypass -Command "iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))" && SET PATH=%PATH%;%ALLUSERSPROFILE%\chocolatey\bin
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