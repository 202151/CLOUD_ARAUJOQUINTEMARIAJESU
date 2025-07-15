@echo off
setlocal enabledelayedexpansion

for /L %%i in (0,1,19) do (
    start cmd /k echo !%%i! && set /a bin=!%%i! && call :convert
)

goto :eof

:convert
set "bin=%bin%"
set "bin=!bin:0=0!" 
set "bin=!bin:1=1!"
set "bin=!bin:2=2!"
set "bin=!bin:3=3!"
set "bin=!bin:4=4!"
set "bin=!bin:5=5!"
set "bin=!bin:6=6!"
set "bin=!bin:7=7!"
set "bin=!bin:8=8!"
set "bin=!bin:9=9!"
echo !bin!
pause
goto :eof