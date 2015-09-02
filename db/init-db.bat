@echo off
rem /**
rem  * Copyright &copy; 2012-2014 <a href="https://github.com/thinkgem/jeesite">JeeSite</a> All rights reserved.
rem  *
rem  * Author: ThinkGem@163.com
rem  */
echo.
echo [Info] Importing init tables.
echo.
pause
echo.
echo [Info] Then clear your jeesite database.
echo.
echo [Info] Yes?
echo.
pause
echo.
echo [Info] Again Yes?
echo.
pause
echo.

cd %~dp0
cd ..

call mvn antrun:run -Pinit-db

cd db
pause