@ECHO OFF
set version=3.6
set ip=127.0.0.1
set port=27017
set gzip=n

echo backup mongoDB database
echo.

set /p version=mongo version (default: %version%):
echo.

set /p ip=mongoDB ip (default: %ip%):
echo.

set /p port=mongoDB port (default: %port%):
echo.

set /p db=backup db name:
echo.

set /p gzip=need gzip (default: %gzip%)(y/n):
echo.

if %gzip% == n (
    set /p outputDir=output directory:  
) else (
    set /p outputDir=gzip path:
)
echo.

set host=%ip%:%port%
echo.
echo backup start
echo.

if %gzip% == n (
	"%ProgramW6432%\MongoDB\Server\%version%\bin\mongodump" --host %host% -d "%db%" -o "%outputDir%"
) else (
	"%ProgramW6432%\MongoDB\Server\%version%\bin\mongodump" --host %host% -d "%db%" --gzip --archive="%outputDir%\%db%.gz"
)
	 
echo.
echo version: %version%, host: %host%, db: %db%, output directory: %outputDir%
echo.
echo backup end
echo.

pause