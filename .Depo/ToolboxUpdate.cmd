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
MD "%Temp%\OgnitorenKs.Backup" > NUL 2>&1
Copy /y %L%\Backup\* "%Temp%\OgnitorenKs.Backup" > NUL 2>&1
RD /S /Q "%L%" > NUL 2>&1
MD "%L%" > NUL 2>&1
Copy /y %Temp%\OgnitorenKs.Backup\* "%L%\Backup" > NUL 2>&1
RD /S /Q "%Temp%\OgnitorenKs.Backup" > NUL 2>&1

:: =============================================================
:: Güncelleme dosyası indirilir
cls&Call :Panel "[■■■■■■■■■■■■                                    ]" "%R%[92m   Updating OgnitorenKs Toolbox...%R%[0m"
Call :Powershell "& { iwr https://raw.githubusercontent.com/OgnitorenKs/New_Toolbox/main/.Depo/Toolbox.zip -OutFile %temp%\NewToolbox.zip }"

:: İndirilen güncelleme zip dosyası klasörü çıkarılır.
cls&Call :Panel "[■■■■■■■■■■■■■■■■■■■■■■■■                        ]" "%R%[92m   Updating OgnitorenKs Toolbox...%R%[0m"
Call :Powershell "Expand-Archive -Force '%temp%\NewToolbox.zip' '%L%'"

:: Güncelleme zip dosyası silinir.
cls&Call :Panel "[■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■            ]" "%R%[92m   Updating OgnitorenKs Toolbox...%R%[0m"
DEL /F /Q /A "%temp%\NewToolbox.zip" > NUL 2>&1

(
echo Set oWS = WScript.CreateObject^("WScript.Shell"^)
echo sLinkFile = "C:\Users\%username%\Desktop\OgnitorenKs.Toolbox.lnk"
echo Set oLink = oWS.CreateShortcut^(sLinkFile^)
echo oLink.TargetPath = "%L%\OgnitorenKs.Toolbox.cmd"
echo oLink.WorkingDirectory = "%L%"
echo oLink.Description = "OgnitorenKs Toolbox"
echo oLink.IconLocation = "%L%\Bin\icon\Ogni.ico"
echo oLink.Save
) > %Temp%\OgnitorenKs.Shortcut.vbs
cscript "%Temp%\OgnitorenKs.Shortcut.vbs"
DEL /F /Q /A "%Temp%\OgnitorenKs.Shortcut.vbs" > NUL 2>&1

:: Güncel Toolbox açılır.
Call :Powershell "Start-Process '%L%\OgnitorenKs.Toolbox.cmd'"
DEL /F /Q /A "%temp%\ToolboxUpdate.cmd"
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
