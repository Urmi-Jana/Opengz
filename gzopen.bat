@echo off
set "filename=%~1"
set "dirname=%~2"
set "filepath=%filename:~-3%"

REM Check .gz extension
if "%filepath%"== ".gz" (
    @REM tar -xvzf %filename% -C %dirname%
    findstr %filename% %dirname%
) else (
    echo file extension is not .gz
)

