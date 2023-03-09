echo off
chcp 65001 > NUL
cls
mode con cols=80 lines=30
title OgnitorenKs Toolbox Updater

:: -------------------------------------------------------------
::Renklendirme komutu
setlocal
for /F "tokens=1,2 delims=#" %%a in ('"prompt #$H#$E# & echo on & for %%b in (1) do rem"') do (set R=%%b)

:: -------------------------------------------------------------
:: Konum bilgisi
cd /d "%~dp0"
for /f %%a in ('"cd"') do set Location=%%a

:: -------------------------------------------------------------

MD "%Temp%\OgnitorenKs.Backup" > NUL 2>&1
Copy /y C:\OgnitorenKs.Toolbox.Dev\Backup\* "%Temp%\OgnitorenKs.Backup" > NUL 2>&1
RD /S /Q "C:\OgnitorenKs.Toolbox.Dev" > NUL 2>&1
MD "C:\OgnitorenKs.Toolbox" > NUL 2>&1
Copy /y %Temp%\OgnitorenKs.Backup\* "%L%\Backup" > NUL 2>&1
RD /S /Q "%Temp%\OgnitorenKs.Backup" > NUL 2>&1

:: =============================================================
:: Güncelleme dosyası indirilir
cls&Call :Panel "[■■■■■■■■■■■■                                    ]" "%R%[92m   Installing OgnitorenKs Toolbox...%R%[0m"
Call :Powershell "& { iwr https://raw.githubusercontent.com/OgnitorenKs/New_Toolbox/main/.Depo/Toolbox.zip -OutFile %temp%\NewToolbox.zip }"

:: İndirilen güncelleme zip dosyası klasörü çıkarılır.
cls&Call :Panel "[■■■■■■■■■■■■■■■■■■■■■■■■                        ]" "%R%[92m   Installing OgnitorenKs Toolbox...%R%[0m"
Call :Powershell "Expand-Archive -Force '%temp%\NewToolbox.zip' 'C:\OgnitorenKs.Toolbox.Dev'"

:: Güncelleme zip dosyası silinir.
cls&Call :Panel "[■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■            ]" "%R%[92m   Installing OgnitorenKs Toolbox...%R%[0m"
DEL /F /Q /A "%temp%\NewToolbox.zip" > NUL 2>&1

(
echo Set oWS = WScript.CreateObject^("WScript.Shell"^)
echo sLinkFile = "C:\Users\%username%\Desktop\OgnitorenKs.Toolbox.Dev.lnk"
echo Set oLink = oWS.CreateShortcut^(sLinkFile^)
echo oLink.TargetPath = "C:\Ognitorenks.Toolbox.Dev\OgnitorenKs.Toolbox.cmd"
echo oLink.WorkingDirectory = "C:\Ognitorenks.Toolbox.Dev"
echo oLink.Description = "OgnitorenKs Toolbox"
echo oLink.IconLocation = "C:\Ognitorenks.Toolbox.Dev\Bin\Icon\Ogni.ico"
echo oLink.Save
) > %Temp%\OgnitorenKs.Shortcut.vbs
cscript "%Temp%\OgnitorenKs.Shortcut.vbs"
DEL /F /Q /A "%Temp%\OgnitorenKs.Shortcut.vbs" > NUL 2>&1

:: Settings.ini içine güncelleme tarihi yazılır.
cls&Call :Panel "[■■■■■■■■■■■■■■■■■■■■COMPLETE■■■■■■■■■■■■■■■■■■■■]" "%R%[92m   Installing OgnitorenKs Toolbox...%R%[0m"
:: Güncel Toolbox açılır.
Call :Powershell "Start-Process 'C:\OgnitorenKs.Toolbox\OgnitorenKs.Toolbox.cmd'"
exit
:: =============================================================
:: ██████████████████████████████████████████████████████████████████████████████████████████████████
:: ██████████████████████████████████████████████████████████████████████████████████████████████████
:: ██████████████████████████████████████████████████████████████████████████████████████████████████
:Panel
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo                     %~2
echo.            
echo               %~1
echo.
echo             %R%[33m████ ████ █   █ █ █████ ████ ████ ███ █   █ █  █ ████%R%[0m
echo             %R%[33m█  █ █    ██  █ █   █   █  █ █  █ █   ██  █ █ █  █   %R%[0m
echo             %R%[33m█  █ █ ██ █ █ █ █   █   █  █ ████ ██  █ █ █ ██   ████%R%[0m
echo             %R%[33m█  █ █  █ █  ██ █   █   █  █ █ █  █   █  ██ █ █     █%R%[0m
echo             %R%[33m████ ████ █   █ █   █   ████ █  █ ███ █   █ █  █ ████%R%[0m
goto :eof

:: -------------------------------------------------------------
:Powershell
chcp 437 > NUL 2>&1
Powershell -command %*
chcp 65001 > NUL 2>&1
goto :eof
