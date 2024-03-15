@echo off

set a=TEST
set b=E:\code\a_testgenerator
set c=%~1
@REM c : file name 
set d=%~2
@REM d : test count

md %b%\%c%

for /l %%x in (1,1,%d%) do (
    md %b%\%c%\%a%%%x
    maketest.exe > %b%\%c%\%a%%%x\%c%.inp
    runtest.exe < %b%\%c%\%a%%%x\%c%.inp > %b%\%c%\%a%%%x\%c%.out

    echo Creat %b%\%c%\%a%%%x successfull!
)
