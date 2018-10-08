@echo on

:: IP address variable
:: Edit this to match the IP of the phone you're controlling
set /p ip=<settings\ip.conf

:: Push message credentials
set /p credentials=<settings\credentials.conf


:: DO NOT EDIT BELOW THIS LINE!!!

:: Make a temporary variable to store the number being fed by the commandline
set phone=%1

curl -k --digest -u %credentials% -d "<PolycomIPPhone><Data priority=\"Critical\">%phone%</Data></PolycomIPPhone>" --header "Content-Type: application/x-com-polycom-spipx" https://%ip%/push