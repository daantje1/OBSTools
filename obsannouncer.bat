::[Bat To Exe Converter]
::
::YAwzoRdxOk+EWAnk
::fBw5plQjdG8=
::YAwzuBVtJxjWCl3EqQJgSA==
::ZR4luwNxJguZRRnk
::Yhs/ulQjdF+5
::cxAkpRVqdFKZSDk=
::cBs/ulQjdF+5
::ZR41oxFsdFKZSDk=
::eBoioBt6dFKZSDk=
::cRo6pxp7LAbNWATEpCI=
::egkzugNsPRvcWATEpCI=
::dAsiuh18IRvcCxnZtBJQ
::cRYluBh/LU+EWAnk
::YxY4rhs+aU+IeA==
::cxY6rQJ7JhzQF1fEqQJhZks0
::ZQ05rAF9IBncCkqN+0xwdVsFAlTi
::ZQ05rAF9IAHYFVzEqQIfCih1QgqNKWW5A6d8
::eg0/rx1wNQPfEVWB+kM9LVsJDGQ=
::fBEirQZwNQPfEVWB+kM9LVsJDCugD0q0CLoJ5uv+/Yo=
::cRolqwZ3JBvQF1fEqQIRaAhdQRSOOSuqFLob+un2r/6Po1ldWOcra8/C1aHOI/IW61HhNZUl13RdkcULTA9dZgbrZwF0pmxR1g==
::dhA7uBVwLU+EWH2F9UwELRhcDEytHliOCboQ+6Gb
::YQ03rBFzNR3SWATElA==
::dhAmsQZ3MwfNWATEVotieEkEDCCDPWWOA7YUiA==
::ZQ0/vhVqMQ3MEVWAtB9wSA==
::Zg8zqx1/OA3MEVWAtB9wSA==
::dhA7pRFwIByZRRnk
::Zh4grVQjdCyDJGyX8VAjFDlVXhC+GG6pDaET+NTf7uuJnmI/Z8MxdoDO1LeLMq4W8kCE
::YB416Ek+ZG8=
::
::
::978f952a14a936cc963da21a135fa983
@echo off
title OBSAnnouncer
mode con: cols=15 lines=1
echo Set objExplorer = CreateObject("InternetExplorer.Application") > spl.vbs
echo With objExplorer >> spl.vbs
echo    .Navigate "about:blank" >> spl.vbs
echo    .Visible = 1 >> spl.vbs
echo    .Document.Title = "Splash" >> spl.vbs
echo    .Toolbar=False >> spl.vbs
echo    .Statusbar=False >> spl.vbs
echo    .Top=200 >> spl.vbs
echo    .Left=400 >> spl.vbs
echo    .Height=350 >> spl.vbs
echo    .Width=430 >> spl.vbs
echo    .Document.Body.InnerHTML = "<img src='https://sbdplugins.nl/afuploads/downloads/1596905605.png'>"  >> spl.vbs
echo End With >> spl.vbs
start spl.vbs
TIMEOUT /t 4 /nobreak > nul
taskkill /f /im iexplore.exe
del spl.vbs
IF EXIST "messages.txt" (
     echo config already exists
	 cls
     ) else (
         echo. > messages.txt
		 cls
     )
	 :start
	 mode con: cols=85 lines=5
	 set /p delay=Delay between changing messages (in seconds):
	 call :CheckNumeric %delay%
:loop
for /f "tokens=*" %%a in (messages.txt) do call :processline %%a
goto loop
:CheckNumeric
@ECHO.

@ECHO Test %1
set /a num=%1 2>nul

if {%num%}=={%1} (
    @ECHO %1 Valid
    goto :eof
)

:INVALID
	@ECHO Invalid
	TIMEOUT /t 1 > nul
	cls
    goto start
:processline
cls
mode con: cols=85 lines=4
echo %* > obsmsg.txt
echo writing to %cd%\obsmsg.txt
echo currently displaying: %*
echo Delay between messages: %delay%
TIMEOUT /t %delay% /nobreak > nul

goto :eof
:eof