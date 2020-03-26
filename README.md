run "launch_watchdog_installer.bat" with admin credentials.

This is intended to be used with an atera script to pull these files.

-How this works-
Run Atera script "Install AteraWatchdog"
Atera script will:
1. Install Choco
2. Choco will install Git
3. Git will pull these files
4. Atera will call the installer that is pulled down.
