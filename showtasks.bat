call runcrud.bat
if "%ERRORLEVEL%" == "0" goto openbrowser
echo.
echo Cannot open browser

:openbrowser
start http://localhost:8080/crud/v1/task
goto end

:end
echo.
echo Browser open.