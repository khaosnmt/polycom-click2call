@echo on

REM Make a temporary variable to store the number being fed by the commandline
set phone=%1

curl -k --digest -u polycom:polycom -d "<PolycomIPPhone><Data priority=\"Critical\">%phone%</Data></PolycomIPPhone>" --header "Content-Type: application/x-com-polycom-spipx" https://192.168.2.67/push