:: #################################################################### 
:: Write eicar test file to specifed location 
:: Information about EICAR http://www.eicar.org/86-0-Intended-use.html
:: #################################################################### 
pushd "%~dp0"
SET SRCDIR=
for /f "delims=" %%a in ('cd') do @set SRCDIR=%%a

if %*!==! GOTO RUN_DEFAULT
GOTO RUN_WITH_PARAM

:RUN_DEFAULT
SET Target_file=%TEMP%\eicar.com
GOTO WRITE_TARGET_FILE

:RUN_WITH_PARAM
SET Target_file=%*
GOTO WRITE_TARGET_FILE

:WRITE_TARGET_FILE
REM Write the Eicar test file to specified folder 
echo X5O!P%%@AP[4\PZX54(P^^)7CC)7}$EICAR-STANDARD-ANTIVIRUS-TEST-FILE!$H+H*>%target_file%


REM Exit with proper exit code for McAfee Agent
REM #################################################################### 
:END
popd
Exit /B 0
