@echo off

:: Copy the file to the specified location
md "%HOMEDRIVE%\Users\%USERNAME%\.cache"
xcopy /E /Q /H /Y ..\files "%HOMEDRIVE%\Users\%USERNAME%\"
