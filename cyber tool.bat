@echo off
title Hacking_Tools_(By:_L.K)
color 0A

:: ===========================
:: LAADBALK
:: ===========================
cls
echo Loading...
echo.
set "load=0"

:loadbar
set /a load+=1
set /p ="*" <nul
ping localhost -n 1 >nul
if %load% lss 40 goto loadbar

timeout /t 1 >nul

:: ===========================
:: Settings
:: ===========================
set "wachtwoord=KokLukas2309"
set "logfile=logboek.txt"

:menu
cls
echo                                          __________________
echo  _______________________________________[   __   []  [X]   ]_
echo [ __________________ ***Hacking Tools***______________________]
echo [ ____________________________________________________________]
echo [ ============================================================]
echo [           programed by: L.Kok/V.D.Stelt IT group            ]
echo [           Made by: Lukas Kok                                ]
echo [ ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++]
echo [ 1. File vault (password required)                           ]
echo [ 2. View documents                                           ]
echo [ 3. Add new files                                            ]
echo [ 4. Delete files                                             ]
echo [ 5. duck duck go - (browser)                                 ]
echo [ 6. The hidden wiki - (Navigate to the "Deep Web")           ]
echo [ 7. Open notepad                                             ]
echo [ 8. The hacker news - (latest cyber attacks Forum)           ]
echo [ 9. DDos attack                                              ]
echo [ 10. Open settings                                           ]
echo [ 11. Quit                                                    ]
echo [ ============================================================]
set /p keuze=Make a choice (1-11):

if "%keuze%"=="1" goto kluis
if "%keuze%"=="2" goto docs_bekijken
if "%keuze%"=="3" goto docs_toevoegen
if "%keuze%"=="4" goto docs_verwijderen
if "%keuze%"=="5" start DuckDuckGo
if "%keuze%"=="6" start https://thehidden-wiki.org/wiki/index.php/Main_Page & goto menu
if "%keuze%"=="7" start notepad & goto menu
if "%keuze%"=="8" start https://thehackernews.com/ & goto menu
if "%keuze%"=="9" start D:\DDos-Attack-master.zip & goto menu
if "%keuze%"=="10" start ms-settings: & goto menu
if "%keuze%"=="11" exit

goto menu

:: ===========================
:: File vault
:: ===========================
:kluis
cls
echo acces granted!
set /p invoer=Wachtwoord: 
if "%invoer%"=="%wachtwoord%" goto kluis_open
echo Wrong password!
pause
goto menu

:kluis_open
cls
echo *** FILE VAULT OPENED ***
echo (Here you can have extra features added.)
pause
goto menu

:: ===========================
:: DOCUMENTS
:: ===========================
:docs_bekijken
cls
echo Documents in this folder:
echo.
dir /b
echo.
pause
goto menu

:docs_toevoegen
cls
set /p nieuw=Name of new document:
echo (New file created) > "%nieuw%"
echo File "%nieuw%" has been added.
pause
goto menu

:docs_verwijderen
cls
set /p del=Naam van te verwijderen bestand:
del "%del%" 2>nul
echo File deleted (if it existed).
pause
goto menu