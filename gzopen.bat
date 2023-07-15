@echo off
@REM 1st arg = filename
set "filename=%~1"

@REM directory to which to save = 2nd arg
set "dirname=%~2"

@REM extension of input file
set "filepath=%filename:~-3%"

REM Check .gz extension
if "%filepath%"== ".gz" (
    tar -xvzf %filename%
) else (
    echo file extension is not .gz
)

