:: ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
::
::       ██████   ██████   ██    ██ ████ ████████  ██████  ████████  ████████ ██    ██ ██    ██  ██████
::      ██    ██ ██    ██  ███   ██  ██     ██    ██    ██ ██     ██ ██       ███   ██ ██   ██  ██    █
::      ██    ██ ██        ████  ██  ██     ██    ██    ██ ██     ██ ██       ████  ██ ██  ██   ██     
::      ██    ██ ██   ████ ██ ██ ██  ██     ██    ██    ██ ████████  ██████   ██ ██ ██ █████      ██████
::      ██    ██ ██    ██  ██  ████  ██     ██    ██    ██ ██   ██   ██       ██  ████ ██  ██         ██
::      ██    ██ ██    ██  ██   ███  ██     ██    ██    ██ ██    ██  ██       ██   ███ ██   ██  ██    ██
::       ██████   ██████   ██    ██ ████    ██     ██████  ██     ██ ████████ ██    ██ ██    ██  ██████ 
::
::                    ████████ ███████ ███████ ██      ██████  ███████  ██    ██
::                       ██    ██   ██ ██   ██ ██      ██   ██ ██   ██   ██  ██ 
::                       ██    ██   ██ ██   ██ ██      ██████  ██   ██     ██   
::                       ██    ██   ██ ██   ██ ██      ██   ██ ██   ██   ██  ██ 
::                       ██    ███████ ███████ ███████ ██████  ███████  ██    ██
::
::  ► Hazırlayan: Hüseyin UZUNYAYLA / OgnitorenKs
::
::  ► İletişim - Contact;
::  --------------------------------------
::  • Discord: OgnitorenKs#2737 
::  •    Mail: ognitorenks@gmail.com
::  •    Site: https://ognitorenks.com.tr
::  •    Site: https://ognitorenks.blogspot.com
::
:: ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
:OgnitorenKs.Toolbox
echo off
chcp 65001 > NUL 2>&1
setlocal enabledelayedexpansion
title  OgnitorenKs Toolbox
set Version=Dev-1.0
cls
:: Renklendirm için gerekli
for /F "tokens=1,2 delims=#" %%a in ('"prompt #$H#$E#&echo on&for %%b in (1) do rem"') do (set R=%%b)
:: Toolbox konumunu değişkene tanımlar
cd /d "%~dp0"
for /f %%a in ('"cd"') do set L=%%a
:: Değişkenler
set NSudo="%L%\Bin\NSudo.exe" -U:T -P:E -Wait -ShowWindowMode:hide cmd /c
set Lang=%L%\Bin\Language\Turkish.cmd
:: Yönetici yetkisi
reg query "HKU\S-1-5-19" > NUL 2>&1
	if %errorlevel%==1 ("%L%\Bin\NSudo.exe" -U:E -ShowWindowMode:hide cmd /c Powershell -command "Start-Process '%L%\OgnitorenKs.Toolbox.cmd'"
						exit)
:: Boşluk ve Türkçe karakter kontrolü
FOR %%a in (Ö ö Ü ü Ğ ğ Ş ş Ç ç ı İ) do (
	echo %L% | Find "%%a" > NUL 2>&1
		if !errorlevel! EQU 0 (cls&Call :LT E0001&echo.&echo %R%[31m !LT! %R%[0m&Call :TO 5&exit)
)
if "%L%" NEQ "%L: =%" (cls&Call :LT E0002&echo.&echo %R%[31m !LT! %R%[0m&Call :TO 5&exit)
:: Sistem mimari kontrolü
FOR /F "tokens=3" %%a in ('reg query "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Environment" /v "PROCESSOR_ARCHITECTURE" 2^>NUL') do (
	if %%a NEQ AMD64 (cls&Call :LT E0003&echo.&echo %R%[31m !LT! %R%[0m&Call :TO 5&exit)
)
:: Sistem bilgileri
Call :Powershell "Get-CimInstance Win32_OperatingSystem | Select-Object Caption,InstallDate,OSArchitecture,RegisteredUser,CSName | FL" > %L%\Log\OS
FOR /F "tokens=5" %%a in ('Findstr /i "Caption" %L%\Log\OS') do set Win=%%a
:: Sistem kontrolü
::if %Win% EQU 10 (goto Main_Menu)
::if %Win% EQU 11 (goto Main_Menu)
::cls&Call :LT E0007&echo.&echo %R%[31m !LT! %R%[0m&Call :TO 10&exit)
::
FOR /F "delims=> tokens=2" %%a in ('findstr /i "Toolbox.Update." %L%\Settings.ini') do (
	if %%a EQU 0 (Call :Link Link_4_&Call :PSDownload "%L%\Bin\Extra\Link.txt"
				  FOR /F "delims=> tokens=2" %%b in ('Findstr /i "Toolbox.Version." %L%\Bin\Extra\Link.txt') do (
					if !Version! NEQ %%b (cls&Call :LT T0022&echo.&echo %R%[92m !LT! %R%[0m
										  Call :LT T0023&echo.&echo %R%[33m !LT! %R%[90m=%R%[37m !Version! %R%[0m
										  Call :LT T0024&echo %R%[33m !LT! %R%[90m=%R%[37m %%b %R%[0m
										  Call :TO 5
										  Call :Link Link_3_&Call :PSDownload "%Temp%\ToolboxUpdate.cmd"
										  Call :Powershell "Start-Process '%Temp%\ToolboxUpdate.cmd'"
										  exit)
		)
	)
)
::
:Main_Menu
Call :Menu_Taslak
Call %Lang% :Menu_1
Call :LT T0001&set /p Value_M=%R%[32m            !LT!: %R%[0m
title  OgnitorenKs Toolbox
	if %Value_M% EQU 1 (goto Software_Installer)
	if %Value_M% EQU 2 (echo Çok yakında)
	if %Value_M% EQU 3 (echo Çok yakında)
	if %Value_M% EQU 4 (goto Services_Menu_1)
	if %Value_M% EQU 5 (echo Çok yakında)
	if %Value_M% EQU 6 (echo Çok yakında)
goto Main_Menu

:Chocolatey
choco install -y --force --limit-output --ignore-checksums %~1
goto :eof
::
:Winget
winget install -e --silent --force --accept-source-agreements --accept-package-agreements --id %~1
	if %errorlevel% NEQ 0 (cls&"%Location%\Bin\NSudo.exe" -U:C -Wait cmd /c winget install -e --silent --force --accept-source-agreements --accept-package-agreements --id %~1)
goto :eof

:Software_Installer
mode con cols=100 lines=38
Call :Powershell "Get-AppxPackage -AllUsers" > %L%\Log\Appx
Findstr /i "Microsoft.WindowsStore_8wekyb3d8bbwe" %L%\Log\Appx > NUL 2>&1
	if %errorlevel% NEQ 0 (Call :LT E0006&echo.&echo %R%[31m !LT! %R%[0m&Call :TO 7&goto Main_Menu)
Findstr /i "Microsoft.DesktopAppInstaller_8wekyb3d8bbwe" %L%\Log\Appx > NUL 2>&1
	 if %errorlevel% NEQ 0 (Call :LT T0016&echo.&echo %R%[31m !LT!%R%[0m&Call :Link Link_1_&start !Link!&Call :TO 7&goto Main_Menu)
winget > NUL 2>&1
	if %errorlevel% NEQ 0 (Call :LT T0017&echo.&echo %R%[32m !LT!%R%[0m&Call :Link Link_2_&start !Link!&Call :TO 7&goto Main_Menu)
dir /b "C:\ProgramData\chocolatey\bin\choco.exe" > NUL 2>&1
	if %errorlevel% NEQ 0 (Call :RD "C:\ProgramData\chocolatey"
						   Call :LT T0015&echo  %R%[92m !LT!... %R%[0m
						   %NSudo% Powershell -NoProfile -ExecutionPolicy Bypass -Command "iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))" && set "PATH=%PATH%;%ALLUSERSPROFILE%\chocolatey\bin"
)
DEL /F /Q /A %L%\Log\* > NUL 2>&1
Call %Lang% :Menu_3
Call :LT T0002&set /p Value_M=%R%[32m  !LT! %R%[90mx,y: %R%[0m
Call :Upper %Value_M% Value_M
Call :LT T0003
FOR %%a in (%Value_M%) do (
	cls&echo.&echo  ►%R%[92m !LT!:%R%[0m %Value_M%
	if %%a EQU 1 (Call :AIO.Runtimes)
	if %%a EQU 2 (Call :Chocolatey discord)
	if %%a EQU 3 (Call :Chocolatey whatsapp)
	if %%a EQU 4 (Call :Chocolatey signal)
	if %%a EQU 5 (Call :Chocolatey telegram)
	if %%a EQU 6 (Call :Chocolatey zoom)
	if %%a EQU 7 (Call :Winget EpicGames.EpicGamesLauncher)
	if %%a EQU 8 (Call :Winget Valve.Steam)
	if %%a EQU 9 (Call :Winget GOG.Galaxy)
	if %%a EQU 10 (Call :Winget Ubisoft.Connect)
	if %%a EQU 11 (Call :Winget ElectronicArts.EADesktop)
	if %%a EQU 12 (Call :Winget Playnite.Playnite)
	if %%a EQU 13 (Call :Chocolatey googlechrome)
	if %%a EQU 14 (Call :Chocolatey firefox)
	if %%a EQU 15 (Call :Chocolatey brave)
	if %%a EQU 16 (Call :Chocolatey microsoft-edge)
	if %%a EQU 17 (Call :Chocolatey opera-gx)
	if %%a EQU 18 (Call :Chocolatey kdenlive)
	if %%a EQU 19 (Call :Chocolatey openshot)
	if %%a EQU 20 (Call :Chocolatey shotcut)
	if %%a EQU 21 (Call :Chocolatey krita)
	if %%a EQU 22 (Call :Chocolatey gimp)
	if %%a EQU 23 (Call :Chocolatey OBSProject.OBSStudio)
	if %%a EQU 24 (Call :Chocolatey sharex)
	if %%a EQU 25 (Call :Chocolatey audacity)
	if %%a EQU 26 (Call :Chocolatey handbrake)
	if %%a EQU 27 (Call :Winget AdrianAllard.FileConverter)
	if %%a EQU 28 (Call :Chocolatey 7zip)
	if %%a EQU 29 (Call :Chocolatey winrar)
	if %%a EQU 30 (Call :Chocolatey k-litecodecpackmega)
	if %%a EQU 31 (Call :Chocolatey vlc)
	if %%a EQU 32 (Call :Chocolatey potplayer)
	if %%a EQU 33 (Call :Chocolatey choco install aimp)
	if %%a EQU 34 (Call :Chocolatey spotify)
	if %%a EQU 35 (Call :Winget Tonec.InternetDownloadManager)
	if %%a EQU 36 (Call :Chocolatey freedownloadmanager)
	if %%a EQU 37 (Call :Chocolatey qbittorrent)
	if %%a EQU 38 (Call :Chocolatey libreoffice-fresh)
	if %%a EQU 39 (Call :Chocolatey adobereader)
	if %%a EQU 40 (Call :Chocolatey pdfxchangeeditor)
	if %%a EQU 41 (Call :Chocolatey calibre)
	if %%a EQU 42 (Call :Chocolatey notepadplusplus)
	if %%a EQU 43 (Call :Chocolatey python)
	if %%a EQU 44 (Call :Chocolatey visualstudiocode)
	if %%a EQU 45 (Call :Chocolatey github-desktop)
	if %%a EQU 46 (Call :Chocolatey nodejs)
	if %%a EQU 47 (Call :Chocolatey unity-hub)
	if %%a EQU 48 (Call :Chocolatey blender)
	if %%a EQU 49 (Call :Chocolatey io-unlocker)
	if %%a EQU 50 (Call :Winget WiseCleaner.WiseCare365)
	if %%a EQU 51 (Call :Winget HiBitSoftware.HiBitUninstaller)
	if %%a EQU 52 (Call :Chocolatey revo-uninstaller)
	if %%a EQU 53 (Call :Chocolatey teamviewer)
	if %%a EQU 54 (Call :Chocolatey anydesk.install)
	if %%a EQU 55 (Call :Chocolatey open-shell)
	if %%a EQU 56 (Call :Chocolatey taskbarx)
	if %%a EQU 57 (Call :Chocolatey memreduct)
	if %%a EQU 58 (Call :Chocolatey msiafterburner)
	if %%a EQU 59 (Call :Chocolatey everything)
	if %%a EQU 60 (Call :Chocolatey hamachi)
	if %%a EQU 61 (Call :Chocolatey glasswire)
	if %%a EQU 62 (Call :Chocolatey stremio)
	if %%a EQU X (goto Main_Menu)
)
set Value_M=
set LT=
goto Software_Installer

:AIO.Runtimes
cls&Call :LT T0018&echo %R%[32m !LT! %R%[0m
Dism /Online /Get-Capabilities /format:table > %L%\Log\Capabilities
Dism /Online /Get-Features /format:table > %L%\Log\Features
FOR /F "tokens=3" %%g in ('findstr /C:"NetFX3~~~~" %L%\Log\Capabilities') do (
	echo %%g | Findstr /C:"Installed" > NUL 2>&1
		if !errorlevel! NEQ 0 (Call :LT T0019&echo %R%[92m !LT! %R%[0m
							   Dism /Online /Enable-Feature /Featurename:NetFx3 /All /NoRestart)
)
FOR /F "tokens=3" %%g in ('findstr /C:"IIS-ASPNET45" %L%\Log\Features') do (
	echo %%g | Findstr /C:"Enabled" > NUL 2>&1
		if !errorlevel! NEQ 0 (Call :LT T0020&echo %R%[92m !LT! %R%[0m
							   Dism /Online /Enable-Feature /FeatureName:IIS-ASPNET45 /All /NoRestart)
)
FOR /F "tokens=3" %%g in ('findstr /C:"DirectPlay" %L%\Log\Features') do (
	echo %%g | findstr /C:"Enabled" > NUL 2>&1
		if !errorlevel! NEQ 0 (Call :LT T0021&echo %R%[92m !LT! %R%[0m
							   Dism /Online /Enable-Feature /FeatureName:DirectPlay /All /NoRestart)
)
FOR %%g in (
Microsoft.VCRedist.2005.x86
Microsoft.VCRedist.2005.x64
Microsoft.VCRedist.2008.x86
Microsoft.VCRedist.2008.x64
Microsoft.VCRedist.2010.x86
Microsoft.VCRedist.2010.x64
Microsoft.VCRedist.2012.x86
Microsoft.VCRedist.2012.x64
Microsoft.VCRedist.2013.x86
Microsoft.VCRedist.2013.x64
Microsoft.VCRedist.2015+.x86
Microsoft.VCRedist.2015+.x64
Oracle.JavaRuntimeEnvironment
Microsoft.XNARedist
Microsoft.DotNet.DesktopRuntime.6
Microsoft.DirectX
) do (cls&Call :LT T0018&echo %R%[32m !LT! %R%[0m&Call :Winget %%g
)
cls&Call :LT T0018&echo %R%[32m !LT! %R%[0m&Call :Chocolatey openal
FOR %%g in (Capabilities Features) do (Call :DEL %L%\Log\%%g)
goto :eof

:Service_Process
set Value_D=
FOR /F "delims=> tokens=2" %%g in ('Findstr /i "%~1" %Lang%') do (set Value_D=%%g)
reg query "HKLM\SYSTEM\CurrentControlSet\Services\%Value_D%" /v "Start" > NUL 2>&1
	if %errorlevel% NEQ 0 (goto :eof)
if %~2 EQU E (FOR /F "delims=> tokens=4" %%g in ('Findstr /i "%~1" %Lang%') do (set Value_D2=%%g))
if %~2 NEQ E (set Value_D2=%~2)
Call :RegAdd "HKLM\SYSTEM\CurrentControlSet\Services\%Value_D%" "Start" REG_DWORD %Value_D2%
set Value_D=
set Value_D2=
goto :eof

:Services_Menu_1
mode con cols=120 lines=46
title OgnitorenKs Toolbox ► Hizmet Yönetimi 1/6
Call :LT T0013&Call :LT2 T0013&echo  %R%[90m►%R%[32m E-%R%[37m !LT! %R%[90m│%R%[32m D-%R%[37m !LT2! %R%[90m│%R%[32m Example:%R%[37mE,1,2,3,4,5 %R%[90m│%R%[32m Example:%R%[37mD,1,2,3,4,5%R%[0m
Call :LT T0014&echo %R%[90m ► !LT! %R%[0m
Call :LT B0001&echo  %R%[90m•%R%[35m !LT! %R%[0m
FOR /L %%a in (1,1,5) do (Call :LS MS_%%a_ " %%a")
Call :LT B0002&Call :LT2 B0002&echo  %R%[90m•%R%[35m !LT! %R%[93m► !LT2! %R%[0m
FOR /L %%a in (6,1,7) do (Call :LS MS_%%a_ " %%a")
Call :LT B0003&echo  %R%[90m•%R%[35m !LT! %R%[0m
FOR /L %%a in (8,1,11) do (Call :LS MS_%%a_ " %%a")
Call :LT B0004&echo  %R%[90m•%R%[35m !LT! %R%[0m
FOR /L %%a in (12,1,15) do (Call :LS MS_%%a_ " %%a")
Call :LT B0005&echo  %R%[90m•%R%[35m !LT! %R%[0m
FOR /L %%a in (16,1,18) do (Call :LS MS_%%a_ " %%a")
Call :LT B0006&Call :LT2 B0006&echo  %R%[90m•%R%[35m !LT! %R%[93m► !LT2! %R%[0m
FOR /L %%a in (19,1,21) do (Call :LS MS_%%a_ " %%a")
Call :LT B0007&echo  %R%[90m•%R%[35m !LT! %R%[0m
FOR /L %%a in (22,1,26) do (Call :LS MS_%%a_ " %%a")
Call :LT B0008&Call :LT2 B0008&echo  %R%[90m•%R%[35m !LT! %R%[93m► !LT2! %R%[0m
FOR /L %%a in (27,1,30) do (Call :LS MS_%%a_ " %%a")
Call :LT T0009&echo              %R%[32m Z-%R%[37m !LT! %R%[0m
Call :LT T0010&echo              %R%[32m X-%R%[37m !LT! %R%[0m
Call :LT T0011&echo              %R%[32m C-%R%[37m !LT! %R%[0m
set LT2=
Call :LT T0002&set /p Value_M=%R%[92m !LT! %R%[90m(x,y): %R%[0m
Call :Upper "%Value_M%" Value_M
FOR %%a in (%Value_M%) do (
	if %%a EQU Z (goto Main_Menu)
	if %%a EQU X (goto Services_Menu_2)
	if %%a EQU C (goto Main_Menu)
	if %%a EQU E (set Value_Z=E)
	if %%a EQU D (set Value_Z=4)
	if %%a EQU Q0 (set Value_Z=0)
	if %%a EQU Q1 (set Value_Z=1)
	if %%a EQU Q2 (set Value_Z=2)
	if %%a EQU Q3 (set Value_Z=3)
	if %%a EQU Q4 (set Value_Z=4)
)
Call :LT T0012&echo %R%[96m !LT! %R%[0m
FOR %%a in (%Value_M%) do (FOR /L %%b in (1,1,30) do (if %%a EQU %%b (Call :Service_Process MS_%%a_ %Value_Z%)))
Call :ProcessCompleted
set Value_Z=
goto Services_Menu_1

:Services_Menu_2
mode con cols=120 lines=46
Call :LT T0013&Call :LT2 T0014
title OgnitorenKs Toolbox ► Hizmet Yönetimi 2/6
set Number=30
set Count=%Number%
Call :LT T0013&Call :LT2 T0013&echo  %R%[90m►%R%[32m E-%R%[37m !LT! %R%[90m│%R%[32m D-%R%[37m !LT2! %R%[90m│%R%[32m Example:%R%[37mE,1,2,3,4,5 %R%[90m│%R%[32m Example:%R%[37mD,1,2,3,4,5%R%[0m
Call :LT T0014&echo %R%[90m ► !LT! %R%[0m
Call :LT B0009&echo  %R%[90m•%R%[35m !LT! %R%[0m
FOR /L %%a in (1,1,13) do (set /a Count+=1&Call :LS MS_!Count!_ " %%a")
Call :LT B0010&echo  %R%[90m•%R%[35m !LT! %R%[0m
FOR /L %%a in (14,1,21) do (set /a Count+=1&Call :LS MS_!Count!_ " %%a")
Call :LT B0011&echo  %R%[90m•%R%[35m !LT! %R%[0m
FOR /L %%a in (22,1,28) do (set /a Count+=1&Call :LS MS_!Count!_ " %%a")
Call :LT B0012&echo  %R%[90m•%R%[35m !LT! %R%[0m
FOR /L %%a in (29,1,34) do (set /a Count+=1&Call :LS MS_!Count!_ " %%a")
Call :LT T0009&echo              %R%[32m Z-%R%[37m !LT! %R%[0m
Call :LT T0010&echo              %R%[32m X-%R%[37m !LT! %R%[0m
Call :LT T0011&echo              %R%[32m C-%R%[37m !LT! %R%[0m
set LT2=
Call :LT T0002&set /p Value_M=%R%[92m !LT! %R%[90m(x,y): %R%[0m
Call :Upper "%Value_M%" Value_M
FOR %%a in (%Value_M%) do (
	if %%a EQU Z (goto Services_Menu_1)
	if %%a EQU X (goto Services_Menu_3)
	if %%a EQU C (goto Main_Menu)
	if %%a EQU E (set Value_Z=E)
	if %%a EQU D (set Value_Z=4)
	if %%a EQU Q0 (set Value_Z=0)
	if %%a EQU Q1 (set Value_Z=1)
	if %%a EQU Q2 (set Value_Z=2)
	if %%a EQU Q3 (set Value_Z=3)
	if %%a EQU Q4 (set Value_Z=4)
)
Call :LT T0012&echo %R%[96m !LT! %R%[0m
FOR %%a in (%Value_M%) do (FOR /L %%b in (1,1,34) do (set Count=!Number!&set /a Count+=%%a&if %%a EQU %%b (Call :Service_Process MS_!Count!_ %Value_Z%)))
Call :ProcessCompleted
set Value_Z=
goto Services_Menu_2

:Services_Menu_3
mode con cols=120 lines=46
Call :LT T0013&Call :LT2 T0014
title OgnitorenKs Toolbox ► Hizmet Yönetimi 3/6
set Number=64
set Count=%Number%
Call :LT T0013&Call :LT2 T0013&echo  %R%[90m►%R%[32m E-%R%[37m !LT! %R%[90m│%R%[32m D-%R%[37m !LT2! %R%[90m│%R%[32m Example:%R%[37mE,1,2,3,4,5 %R%[90m│%R%[32m Example:%R%[37mD,1,2,3,4,5%R%[0m
Call :LT T0014&echo %R%[90m ► !LT! %R%[0m
Call :LT B0013&echo  %R%[90m•%R%[35m !LT! %R%[0m
FOR /L %%a in (1,1,9) do (set /a Count+=1&Call :LS MS_!Count!_ " %%a")
Call :LT B0014&echo  %R%[90m•%R%[35m !LT! %R%[0m
FOR /L %%a in (10,1,13) do (set /a Count+=1&Call :LS MS_!Count!_ " %%a")
Call :LT B0015&echo  %R%[90m•%R%[35m !LT! %R%[0m
FOR /L %%a in (14,1,15) do (set /a Count+=1&Call :LS MS_!Count!_ " %%a")
Call :LT B0016&echo  %R%[90m•%R%[35m !LT! %R%[0m
FOR /L %%a in (16,1,22) do (set /a Count+=1&Call :LS MS_!Count!_ " %%a")
Call :LT B0017&echo  %R%[90m•%R%[35m !LT! %R%[0m
FOR /L %%a in (23,1,28) do (set /a Count+=1&Call :LS MS_!Count!_ " %%a")
Call :LT T0009&echo              %R%[32m Z-%R%[37m !LT! %R%[0m
Call :LT T0010&echo              %R%[32m X-%R%[37m !LT! %R%[0m
Call :LT T0011&echo              %R%[32m C-%R%[37m !LT! %R%[0m
set LT2=
Call :LT T0002&set /p Value_M=%R%[92m !LT! %R%[90m(x,y): %R%[0m
Call :Upper "%Value_M%" Value_M
FOR %%a in (%Value_M%) do (
	if %%a EQU Z (goto Services_Menu_2)
	if %%a EQU X (goto Services_Menu_4)
	if %%a EQU C (goto Main_Menu)
	if %%a EQU E (set Value_Z=E)
	if %%a EQU D (set Value_Z=4)
	if %%a EQU Q0 (set Value_Z=0)
	if %%a EQU Q1 (set Value_Z=1)
	if %%a EQU Q2 (set Value_Z=2)
	if %%a EQU Q3 (set Value_Z=3)
	if %%a EQU Q4 (set Value_Z=4)
)
Call :LT T0012&echo %R%[96m !LT! %R%[0m
FOR %%a in (%Value_M%) do (FOR /L %%b in (1,1,28) do (set Count=!Number!&set /a Count+=%%a&if %%a EQU %%b (Call :Service_Process MS_!Count!_ %Value_Z%)))
Call :ProcessCompleted
set Value_Z=
goto Services_Menu_3

:Services_Menu_4
mode con cols=120 lines=48
Call :LT T0013&Call :LT2 T0014
title OgnitorenKs Toolbox ► Hizmet Yönetimi 4/6
set Number=92
set Count=%Number%
Call :LT T0013&Call :LT2 T0013&echo  %R%[90m►%R%[32m E-%R%[37m !LT! %R%[90m│%R%[32m D-%R%[37m !LT2! %R%[90m│%R%[32m Example:%R%[37mE,1,2,3,4,5 %R%[90m│%R%[32m Example:%R%[37mD,1,2,3,4,5%R%[0m
Call :LT T0014&echo %R%[90m ► !LT! %R%[0m
Call :LT B0018&echo  %R%[90m•%R%[35m !LT! %R%[0m
FOR /L %%a in (1,1,9) do (set /a Count+=1&Call :LS MS_!Count!_ " %%a")
Call :LT B0019&echo  %R%[90m•%R%[35m !LT! %R%[0m
FOR /L %%a in (10,1,16) do (set /a Count+=1&Call :LS MS_!Count!_ " %%a")
Call :LT B0020&echo  %R%[90m•%R%[35m !LT! %R%[0m
FOR /L %%a in (17,1,18) do (set /a Count+=1&Call :LS MS_!Count!_ " %%a")
Call :LT B0021&echo  %R%[90m•%R%[35m !LT! %R%[0m
FOR /L %%a in (19,1,23) do (set /a Count+=1&Call :LS MS_!Count!_ " %%a")
Call :LT B0022&echo  %R%[90m•%R%[35m !LT! %R%[0m
FOR /L %%a in (24,1,35) do (set /a Count+=1&Call :LS MS_!Count!_ " %%a")
Call :LT T0009&echo              %R%[32m Z-%R%[37m !LT! %R%[0m
Call :LT T0010&echo              %R%[32m X-%R%[37m !LT! %R%[0m
Call :LT T0011&echo              %R%[32m C-%R%[37m !LT! %R%[0m
set LT2=
Call :LT T0002&set /p Value_M=%R%[92m !LT! %R%[90m(x,y): %R%[0m
Call :Upper "%Value_M%" Value_M
FOR %%a in (%Value_M%) do (
	if %%a EQU Z (goto Services_Menu_3)
	if %%a EQU X (goto Services_Menu_5)
	if %%a EQU C (goto Main_Menu)
	if %%a EQU E (set Value_Z=E)
	if %%a EQU D (set Value_Z=4)
	if %%a EQU Q0 (set Value_Z=0)
	if %%a EQU Q1 (set Value_Z=1)
	if %%a EQU Q2 (set Value_Z=2)
	if %%a EQU Q3 (set Value_Z=3)
	if %%a EQU Q4 (set Value_Z=4)
)
Call :LT T0012&echo %R%[96m !LT! %R%[0m
FOR %%a in (%Value_M%) do (FOR /L %%b in (1,1,35) do (set Count=!Number!&set /a Count+=%%a&if %%a EQU %%b (Call :Service_Process MS_!Count!_ %Value_Z%)))
Call :ProcessCompleted
set Value_Z=
goto Services_Menu_4

:Services_Menu_5
mode con cols=120 lines=48
Call :LT T0013&Call :LT2 T0014
title OgnitorenKs Toolbox ► Hizmet Yönetimi 5/6
set Number=127
set Count=%Number%
Call :LT T0013&Call :LT2 T0013&echo  %R%[90m►%R%[32m E-%R%[37m !LT! %R%[90m│%R%[32m D-%R%[37m !LT2! %R%[90m│%R%[32m Example:%R%[37mE,1,2,3,4,5 %R%[90m│%R%[32m Example:%R%[37mD,1,2,3,4,5%R%[0m
Call :LT T0014&echo %R%[90m ► !LT! %R%[0m
Call :LT B0023&echo  %R%[90m•%R%[35m !LT! %R%[0m
FOR /L %%a in (1,1,31) do (set /a Count+=1&Call :LS MS_!Count!_ " %%a")
Call :LT T0009&echo              %R%[32m Z-%R%[37m !LT! %R%[0m
Call :LT T0010&echo              %R%[32m X-%R%[37m !LT! %R%[0m
Call :LT T0011&echo              %R%[32m C-%R%[37m !LT! %R%[0m
set LT2=
Call :LT T0002&set /p Value_M=%R%[92m !LT! %R%[90m(x,y): %R%[0m
Call :Upper "%Value_M%" Value_M
FOR %%a in (%Value_M%) do (
	if %%a EQU Z (goto Services_Menu_4)
	if %%a EQU X (goto Services_Menu_6)
	if %%a EQU C (goto Main_Menu)
	if %%a EQU E (set Value_Z=E)
	if %%a EQU D (set Value_Z=4)
	if %%a EQU Q0 (set Value_Z=0)
	if %%a EQU Q1 (set Value_Z=1)
	if %%a EQU Q2 (set Value_Z=2)
	if %%a EQU Q3 (set Value_Z=3)
	if %%a EQU Q4 (set Value_Z=4)
)
Call :LT T0012&echo %R%[96m !LT! %R%[0m
FOR %%a in (%Value_M%) do (FOR /L %%b in (1,1,31) do (set Count=!Number!&set /a Count+=%%a&if %%a EQU %%b (Call :Service_Process MS_!Count!_ %Value_Z%)))
Call :ProcessCompleted
set Value_Z=
goto Services_Menu_5

:Services_Menu_6
mode con cols=120 lines=46
title OgnitorenKs Toolbox ► Hizmet Yönetimi 6/6
Call :LT T0013&Call :LT2 T0013&echo  %R%[90m►%R%[32m E-%R%[37m !LT! %R%[90m│%R%[32m D-%R%[37m !LT2! %R%[90m│%R%[32m Example:%R%[37mE,1,2,3,4,5 %R%[90m│%R%[32m Example:%R%[37mD,1,2,3,4,5%R%[0m
Call :LT T0014&echo %R%[90m ► !LT! %R%[0m
Call :LT B0024&echo  %R%[90m•%R%[35m !LT! %R%[0m
FOR /L %%a in (1,1,3) do (Call :LS MSE_%%a_ " %%a")
Call :LT B0023&Call :LT2 B0002&echo  %R%[90m•%R%[35m !LT! %R%[0m
FOR /L %%a in (4,1,9) do (Call :LS MSE_%%a_ " %%a")
Call :LT T0009&echo              %R%[32m Z-%R%[37m !LT! %R%[0m
Call :LT T0010&echo              %R%[32m X-%R%[37m !LT! %R%[0m
Call :LT T0011&echo              %R%[32m C-%R%[37m !LT! %R%[0m
set LT2=
Call :LT T0002&set /p Value_M=%R%[92m !LT! %R%[90m(x,y): %R%[0m
Call :Upper "%Value_M%" Value_M
FOR %%a in (%Value_M%) do (
	if %%a EQU Z (goto Services_Menu_5)
	if %%a EQU X (goto Main_Menu)
	if %%a EQU C (goto Main_Menu)
	if %%a EQU E (set Value_Z=E)
	if %%a EQU D (set Value_Z=4)
	if %%a EQU Q0 (set Value_Z=0)
	if %%a EQU Q1 (set Value_Z=1)
	if %%a EQU Q2 (set Value_Z=2)
	if %%a EQU Q3 (set Value_Z=3)
	if %%a EQU Q4 (set Value_Z=4)
)
Call :LT T0012&echo %R%[96m !LT! %R%[0m
FOR %%a in (%Value_M%) do (FOR /L %%b in (1,1,9) do (if %%a EQU %%b (Call :Service_Process MSE_%%a_ %Value_Z%)))
Call :ProcessCompleted
set Value_Z=
goto Services_Menu_6









:LS
:: Hizmetleri kontrol eder
FOR /F "delims=> tokens=2" %%g in ('Findstr /i "%~1" %Lang%') do (set Value_D=%%g)
reg query "HKLM\SYSTEM\CurrentControlSet\Services\%Value_D%" /v "Start" > NUL 2>&1
	if %errorlevel% NEQ 0 (goto :eof)
FOR /F "skip=1 delims=x tokens=2" %%a in ('reg query "HKLM\System\CurrentControlSet\Services\%Value_D%" /v "Start" 2^>NUL') do (
	if %%a EQU 4 (Call :LT T0004&set Value_S=!LT!%R%[31m▐%R%[0m)
	if %%a EQU 3 (Call :LT T0005&set Value_S=!LT!%R%[36m▐%R%[0m)
	if %%a EQU 2 (Call :LT T0006&set Value_S=!LT!%R%[32m▐%R%[0m)
	if %%a EQU 1 (Call :LT T0007&set Value_S=!LT!%R%[37m▐%R%[0m)
	if %%a EQU 0 (Call :LT T0008&set Value_S=!LT!%R%[37m▐%R%[0m)
)
FOR /F "delims=> tokens=2" %%g in ('Findstr /i "%~1" %Lang%') do (
	FOR /F "delims=> tokens=3" %%j in ('Findstr /i "%~1" %Lang%') do (
		if %Value_S% NEQ NT (echo  %R%[90m│%Value_S%│%R%[32m%~2%R%[90m-%R%[33m %%g %R%[90m=%R%[36m %%j%R%[0m)
	)
)
set Value_D=
set Value_S=
goto :eof

:LT
set LT=
FOR /F "delims=> tokens=2" %%z in ('Findstr /i "%~1" %Lang%') do (set LT=%%z)
goto :eof

:LT2
set LT2=
FOR /F "delims=> tokens=3" %%z in ('Findstr /i "%~1" %Lang%') do (set LT2=%%z)
goto :eof






:Date
for /f "tokens=2" %%a in ('echo %date%') do set Date=%%a
set DateYear=%Date:~6%-%Date:~3,-5%-%Date:~0,-8%
set DateDay=%Date:~0,-8%.%Date:~3,-5%.%Date:~6%
goto :eof
::
:Time
for /f "tokens=1" %%a in ('echo %time%') do set Time=%%a
goto :eof
::
:TO
timeout /t %~1 /nobreak > NUL
goto :eof
::
:RD
RD /S /Q "%~1" > NUL 2&1
	if %errorlevel% NEQ 0 (%NSudo% RD /S /Q "%~1")
goto :eof
::
:DEL
DEL /F /Q /A "%~1" > NUL 2&1
	if %errorlevel% NEQ 0 (%NSudo% DEL /F /Q /A "%~1")
goto :eof
::
:VR
FOR /L %%x in (1,1,15) do (set Value%%x=)
goto :eof
::
:Powershell
chcp 437 > NUL 2>&1
Powershell -command %*
chcp 65001 > NUL 2>&1
goto :eof
::
:Upper
chcp 437 > NUL 2>&1
FOR /F %%g in ('Powershell -command "'%~1'.ToUpper()"') do (set %~2=%%g)
chcp 65001 > NUL 2>&1
goto :eof
::

::
:Link
set Link=
FOR /F "delims=> tokens=2" %%z in ('Findstr /i "%~1" %L%\Bin\Extra\Link.txt') do (set Link=%%z)
goto :eof
::
:RegKey
Reg add "%~1" /f > NUL 2>&1
	if %errorlevel% NEQ 0 (%NSudo% Reg add "%~1" /f)
goto :eof
::
:RegAdd
Reg add "%~1" /v "%~2" /t "%~3" /d "%~4" /f > NUL 2>&1
	if %errorlevel% NEQ 0 (%NSudo% Reg add "%~1" /v "%~2" /t "%~3" /d "%~4" /f)
goto :eof
::
:RegVeAdd
Reg add "%~1" /ve /t "%~2" /d "%~3" /f > NUL 2>&1
	if %errorlevel% NEQ 0 (%NSudo% Reg add "%~1" /ve /t "%~2" /d "%~3" /f)
goto :eof
::
:RegDel
Reg delete %* /f > NUL 2>&1
	if %errorlevel% NEQ 0 (%NSudo% Reg delete %* /f)
goto :eof
::
:PSDownload
Call :Powershell "& { iwr %Link% -OutFile %~1 }"
goto :eof




:Menu_Taslak
FOR /F "tokens=2 delims=':'" %%a in ('FIND "Caption" %L%\Log\OS') do set Value1=%%a
set Value1=%Value1:~11%
FOR /F "tokens=2 delims=':'" %%b in ('FIND "RegisteredUser" %L%\Log\OS') do set Value2=%%b
FOR /F "tokens=3 delims= " %%f in ('reg query "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Update\TargetingInfo\Installed\Client.OS.rs2.amd64" /v "Version" 2^>NUL') do set Value3=%%f
set Value3=%Value3:~5%
FOR /F "skip=1 tokens=3" %%b in ('reg query "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion" /v "DisplayVersion" 2^>NUL') do (set Value4=%%b)
Call :Date
set DateYear=
mode con cols=100 lines=22
title               O  G  N  I  T  O  R  E  N  K  S     ^|    OGNITORENKS TOOLBOX    ^|       T   O   O   L   B   O   X
echo    %R%[90mAMD64                                                                               %DateDay%%R%[0m
echo    %R%[90m████ ████ █   █ ███ █████ ████ ████ ███ █   █ █  █ ████    %R%[90m█████ ████ ████ █   ███  ████ █   █%R%[0m
echo    %R%[90m█  █ █    ██  █  █    █   █  █ █  █ █   ██  █ █ █  █       %R%[90m  █   █  █ █  █ █   █  █ █  █  █ █ %R%[0m
echo    %R%[90m█  █ █ ██ █ █ █  █    █   █  █ ████ ██  █ █ █ ██   ████    %R%[90m  █   █  █ █  █ █   ███  █  █   █  %R%[0m
echo    %R%[90m█  █ █  █ █  ██  █    █   █  █ █ █  █   █  ██ █ █     █    %R%[90m  █   █  █ █  █ █   █  █ █  █  █ █ %R%[0m
echo    %R%[90m████ ████ █   █ ███   █   ████ █  █ ███ █   █ █  █ ████    %R%[90m  █   ████ ████ ███ ███  ████ █   █%R%[0m
echo    %R%[90mhttps://ognitorenks.com.tr                                                             %R%[90m%version%%R%[0m
echo.
echo           %R%[90m %Value2%: %Value1% ^| %Value4% ^| %Value3%%R%[0m
Call :VR
goto :eof

:ProcessCompleted
mode con cols=39 lines=12
::--------------------------------------------------
echo.
echo            %R%[90m┌───────────────┐%R%[0m
echo            %R%[90m│%R%[32m               %R%[90m│%R%[0m
echo            %R%[90m│%R%[32m          ██   %R%[90m│%R%[0m
echo            %R%[90m│%R%[32m         ██    %R%[90m│%R%[0m
echo            %R%[90m│%R%[32m   ██   ██     %R%[90m│%R%[0m
echo            %R%[90m│%R%[32m    ██ ██      %R%[90m│%R%[0m
echo            %R%[90m│%R%[32m     ███       %R%[90m│%R%[0m
echo            %R%[90m│               %R%[90m│%R%[0m
echo            %R%[90m└───────────────┘%R%[0m
echo.
Call :TO 2
goto :eof