schtasks /create /sc hourly /mo 1 /sd 01/01/2000 /RU "SYSTEM" /RL HIGHEST /tn "Atera Query Service" /tr 'powershell -ExecutionPolicy Bypass -File c:\scripts\atera_startTask\queryAteraService.ps1'
