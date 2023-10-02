@echo off

REM Verificamos que Git esté instalado
if not exist "C:\Program Files\Git\cmd\git.exe" (
  echo Git no está instalado
  pause
  exit /b 1
)

REM Obtenemos la descripción del commit
set /p descripcion="Ingrese la descripcion del commit: "

REM Ejecutamos los comandos
git add *
git commit -m "%descripcion%"
git push origin main

REM Pausa para que el usuario vea el resultado
pause