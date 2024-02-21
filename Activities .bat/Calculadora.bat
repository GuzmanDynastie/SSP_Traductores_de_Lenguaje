@echo off
color 0f
Title Calculadora
cls

:Menu
Title Calculadora
cls
Echo.
Echo.
echo Hola! Estas en el menu principal.
echo.
echo.
echo 1. Sumar
echo 2. Restar
echo 3. Multiplicar
echo 4. Dividir
echo 5. Nada (Salir)
echo.
echo. 

set /p menu=Escribe el numero de la opcion elegida (Sin punto):
if %menu%==1 goto sumar
if %menu%==2 goto restar
if %menu%==3 goto multiplicar
if %menu%==4 goto dividir
if %menu%==5 exit else goto error

:Error
title Error !!
cls
echo.
echo UPS! ha habido un error!
echo Has escrito %menu%. Debe escribir el numero que indica la opcion. Sin Mas. Solo el numero.
echo Por ejemplo, si quiere sumar, escriba unicamente 1 y pulse intro.
echo Pulse una tecla para volver al menu.
pause > menu

goto Menu

:Sumar
Title Calculadora - Suma
cls
echo.
echo.
echo Escribe la primera cifra a sumar
echo.
set /p sum1=
echo.
echo.
echo Escribe la segunda cifra a sumar
echo.
set /p sum2=
echo.
echo.
echo ----------------
echo. 
set /a ress=%sum1%+%sum2%
echo %sum1% + %sum2% = %ress%
echo.
echo.
echo Pulse una tecla para volver
pause > nul
goto Menu


:Restar
Title Calculadora - Restar
cls
echo.
echo Escribe la primera cifra a restar
echo.
set /p res1=
echo.
echo.
echo Escribe la segunda cifra a restar
echo.
set /p res2=
echo.
echo.
echo ----------------
echo.
set /a resr=%res1%-%res2%
echo %res1% - %res2% = %resr%
echo.
echo.
echo Pulse una tecla para volver
pause > nul
goto Menu


:multiplicar
Title Calculadora - Multiplicar
cls
echo.
echo Escribe la primera cifra a multiplicar
echo.
set /p mult1=
echo.
echo.
echo Escribe la segunda cifra a multiplicar
echo.
set /p mult2=
echo.
echo.
echo ----------------
echo.
set /a resm=%mult1%*%mult2%
echo %mult1% * %mult2% = %resm%
echo.
echo.
echo Pulse una tecla para volver
pause > nul
goto Menu


 :dividir
Title Calculadora - Dividir 
cls
echo.
echo Escribe la primera cifra a dividir
echo.
set /p div1=
echo.
echo.
echo Escribe la segunda cifra a dividir
echo.
set /p div2=
echo.
echo.
echo ----------------
echo.
set /a resd=%div1%/%div2%
echo %div1% / %div2% = %resd%
echo.
echo.
echo Pulse una tecla para volver
pause > nul
goto Menu 