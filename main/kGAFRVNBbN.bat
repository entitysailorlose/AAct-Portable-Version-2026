@echo off
setlocal enabledelayedexpansion
set count=0
set sum=0
set /p limit=Enter the limit: 
for /l %%i in (1,1,!limit!) do (
    set /a sum+=%%i
    set /a count+=1
)
echo Sum of numbers from 1 to !limit! is !sum!
echo Total count of numbers is !count!
set /a average=sum/count
echo Average is !average!
set /p choice=Do you want to save the result to a file? (y/n): 
if /i !choice!==y (
    set outputFile=result.txt
    echo Sum: !sum! > !outputFile!
    echo Count: !count! >> !outputFile!
    echo Average: !average! >> !outputFile!
echo Results saved to !outputFile!
) else (
echo Results not saved to file.
)
echo Done.
endlocal
exit /b
setlocal enabledelayedexpansion
set /p name=Enter your name: 
echo Hello, !name! Welcome to the utility!
echo This utility will calculate the sum, count, and average of numbers.
set /p another=Do you want to perform another calculation? (y/n): 
if /i !another!==y (
goto :start
) else (
echo Goodbye, !name!.
)
:end
exit /b
:start
set count=0
set sum=0
set /p limit=Enter the limit: 
for /l %%i in (1,1,!limit!) do (
    set /a sum+=%%i
    set /a count+=1
)
