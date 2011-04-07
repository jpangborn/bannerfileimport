@ECHO OFF
ECHO Processing...
SET to_directory=N:\DATA\1112-ISIRS
move /Y idsa12*.* %to_directory%
move /Y igsa12*.* %to_directory%
move /Y igsg12*.* %to_directory%
move /Y igaa12*.* %to_directory%
move /Y isrf12*.* %to_directory%
ECHO Completed Successfully