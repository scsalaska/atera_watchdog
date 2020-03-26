@ECHO OFF
SET mypath=%~dp0
goto check_Permissions
:check_Permissions
    ECHO Administrative permissions required. Detecting permissions...
    net session >nul 2>&1
    IF %errorLevel% == 0 (
        IF NOT EXIST c:\scripts\atera_startTask (mkdir c:\scripts\atera_startTask)
        robocopy -e %mypath% c:\scripts\atera_startTask
        powershell.exe -executionpolicy bypass -file "c:\scripts\atera_startTask\register_task.ps1"
    ) ELSE (
               CLS
        powershell.exe -executionpolicy bypass -Command "Start-Process %~dpnx0 -Verb RunAs"
        TIMEOUT /T 1
    )
