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
::ZQ05rAF9IAHYFVzEqQIfCihgRQmHXA==
::eg0/rx1wNQPfEVWB+kM9LVsJDGQ=
::fBEirQZwNQPfEVWB+kM9LVsJDCugD1+zC7B8
::cRolqwZ3JBvQF1fEqQIRaAhdQRSOOSu7FqUQ4ev6++OIrA0JXOMrOI7X1ruZM6AK5VCkYZlt3ntMnYsNTB9ReRu/bwN0qmJNtW/FPsncvA3yKg==
::dhA7uBVwLU+EWH2F9UwELRhcDEytHliOCboQ+6Gb
::YQ03rBFzNR3SWATElA==
::dhAmsQZ3MwfNWATEVotieEkEDCCDPWWOA7YUiA==
::ZQ0/vhVqMQ3MEVWAtB9wSA==
::Zg8zqx1/OA3MEVWAtB9wSA==
::dhA7pRFwIByZRRnk
::Zh4grVQjdCyDJGyX8VAjFDlVXhC+GG6pDaET+NTf7uuJnmI/Z9Y2dYqV36yLQA==
::YB416Ek+ZG8=
::
::
::978f952a14a936cc963da21a135fa983
@echo off
cls
title OBSTime
mode con: cols=70 lines=2
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
:loop
time /t > time.txt
echo writing to %cd%\time.txt
timeout /t 1 > nul
goto loop