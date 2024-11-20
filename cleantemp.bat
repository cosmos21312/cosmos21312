@echo off
echo Limpiando archivos temporales...

:: Eliminar archivos en la carpeta Temp del usuario actual
del /f /s /q %TEMP%\*

:: Eliminar archivos en la carpeta LocalTemp del usuario actual
del /f /s /q %LOCALAPPDATA%\Temp\*

:: Limpiar cachés de Internet
RunDll32.exe InetCpl.cpl,ClearMyTracksByProcess 8

:: Limpiar la papelera de reciclaje
echo Limpiando la papelera de reciclaje...
rd /s /q C:\$Recycle.bin

:: Fin del script
echo Limpieza completada.
pause
