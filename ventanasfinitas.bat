@echo off
setlocal enabledelayedexpansion

rem Función para mostrar un cuadro de diálogo
:show_dialog
set "dialog_title=Cuadro de diálogo !random!"
set "dialog_message=Este es un cuadro de diálogo !random!"
powershell -Command "[System.Windows.MessageBox]::Show('!dialog_message!', '!dialog_title!', 'OK')"
goto :eof

rem Inicializar el bucle
set "current_level=0"

:loop
if !current_level! gtr 3 goto end

rem Mostrar un cuadro de diálogo
call :show_dialog

rem Incrementar el nivel actual
set /a current_level+=1

goto loop

:end
endlocal