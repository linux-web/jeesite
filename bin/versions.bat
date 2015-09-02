@echo off
rem /**
rem  * Copyright &copy; 2012-2014 <a href="https://github.com/thinkgem/jeesite">JeeSite</a> All rights reserved.
rem  *
rem  * Author: ThinkGem@163.com
rem  */
echo.
echo [Info] Updating project version.
echo.
rem pause
echo.

cd %~dp0

set /p new=Please input new version number.
echo.

pause
echo.
cd ..

rem Update the Version of pom
call mvn versions:set -DnewVersion=%new%

rem Substitute the Version of jeesite.properties
echo.
set f=%cd%\src\main\resources\jeesite.properties
echo [INFO] Update %f%
set s1=version=
set s2=version=V%new%
for /f "delims=:" %%a in ('findstr /in "%s1%" "%f%"') do set n=%%a
(for /f "tokens=1* delims=:" %%a in ('findstr /n ".*" "%f%"') do (
  if %%a equ %n% ( echo.%s2%) else ( echo.%%b)
))>newfile
echo.
move newfile "%f%" >nul
echo.

cd bin
pause