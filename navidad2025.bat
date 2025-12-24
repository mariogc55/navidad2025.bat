@echo off
setlocal enabledelayedexpansion
title NAVIDAD 2025
:: Feliz navidad para todos
mode con: cols=80 lines=30

:inicio
:: Nieve navideña
set "nieve="
for /l %%i in (1,1,70) do (
    set /a "r=!random! %% 30"
    if !r!==0 (set "nieve=!nieve!*") else (
        if !r!==1 (set "nieve=!nieve!.") else (set "nieve=!nieve! ")
    )
)

:: arbol de colores :D
set /a "c=!random! %% 5"
if !c!==0 set "color_code=0A" & set "adorno=o"
if !c!==1 set "color_code=0C" & set "adorno=*"
if !c!==2 set "color_code=0E" & set "adorno=@"
if !c!==3 set "color_code=0D" & set "adorno=+"
if !c!==4 set "color_code=0B" & set "adorno=#"

:: Dibujo navideño
cls
color 07
echo !nieve!
echo.
echo           *************************************************
echo           * *
echo           * FELIZ NAVIDAD 2025        *
echo           * *
echo           *************************************************
echo.
:: Arbol 
color !color_code!
echo                                   *
echo                                   ^|
echo                                  / \
echo                                 / %adorno% \
echo                                / . . \
echo                               / %adorno% . %adorno% \
echo                              / . . . . \
echo                             / %adorno% . . %adorno%. .\
echo                            / . . %adorno% . . . \
echo                           / %adorno% . . . . %adorno% . \
echo                          /_________________\
echo                                [#####]
echo.
echo           -------------------------------------------------
echo            "Que tu terminal se llene de bytes de felicidad"
echo           -------------------------------------------------
echo.
echo !nieve!

:: Navidad codificada
:: ping navideño
ping n 2 127.0.0.1 >nul
goto inicio