@ECHO OFF

set version=3.6
set ip=127.0.0.1
set port=27017
set gzip=n

echo restore mongoDB database
echo.

set /p version=mongo version (default: %version%):
echo.

set /p ip=mongoDB ip (default: %ip%):
echo.

set /p port=mongoDB port (default: %port%):
echo.

set /p db=restore db name:
echo.

set /p gzip=need gzip (default: %gzip%)(y/n):
echo.

if %gzip% == n (
    set /p fromDir=from directory:  
) else (
    set /p fromDir=gzip path:
)
echo.

set host=%ip%:%port%
echo.
echo restore start
echo.

if %gzip% == n (
	"%ProgramW6432%\MongoDB\Server\%version%\bin\mongorestore" --host %host% -d "%db%" "%fromDir%"
) else (
	"%ProgramW6432%\MongoDB\Server\%version%\bin\mongorestore" --host %host% --gzip --archive="%fromDir%" --nsInclude "%db%.*"
)
	
	 
echo.
echo version: %version%, host: %host%, db: %db%, from directory: %fromDir%, gzip: %gzip%
echo.
echo restore end
echo.

pause