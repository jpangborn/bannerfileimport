@ECHO OFF
SETLOCAL ENABLEDELAYEDEXPANSION

ECHO Processing...

REM Retreive and store the current date in YYYYMMDD format
FOR /F "TOKENS=1* DELIMS= " %%A IN ('DATE/T') DO SET CDATE=%%B
FOR /F "TOKENS=1,2 eol=/ DELIMS=/ " %%A IN ('DATE/T') DO SET mm=%%B
FOR /F "TOKENS=1,2 DELIMS=/ eol=/" %%A IN ('echo %CDATE%') DO SET dd=%%B
FOR /F "TOKENS=2,3 DELIMS=/ " %%A IN ('echo %CDATE%') DO SET yyyy=%%B
SET date=%yyyy%%mm%%dd%

REM Create a processed directory for the current date if one does not exist 
IF NOT EXIST N:\DATA\1112-COD\processed_%date% (MD N:\DATA\1112-COD\processed_%date%)

REM Check for existence of crbn12op.dat. If it exists, copy it to processed directory and skip to MOVETOZ
IF EXIST crbn12op.dat (
copy /Y crbn12op.dat N:\DATA\1112-COD\processed_%date%
GOTO MOVETOZ
)

REM Find the next lowest file extension
SET ext=.999
FOR /F %%a IN ('dir /b crbn12op.*') DO IF /I %%~xa LSS !ext! (SET ext=%%~xa)

IF NOT EXIST crbn12op%ext% (
ECHO No Other CRBN Files Found.
PAUSE
ENDLOCAL
GOTO :EOF
)

REM Copy file with lowest extension to processed directory
copy /Y crbn12op%ext% N:\DATA\1112-COD\processed_%date%

REM Rename the file with the lowest extenion to crbn10op.dat
rename crbn12op%ext% crbn12op.dat

:MOVETOZ
REM Move current CRBN file to the Z:\ Drive
move /Y crbn12op.dat Z:\

ECHO Completed Successfully.
ENDLOCAL