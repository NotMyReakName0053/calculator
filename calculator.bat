@echo off
title Advanced Calculator 🖩
color 0b
cls

:menu
echo =====================================
echo          ADVANCED CALCULATOR
echo =====================================
echo 1. Addition (+)
echo 2. Subtraction (-)
echo 3. Multiplication (*)
echo 4. Division (/)
echo 5. Exponentiation (^)
echo 6. Square Root (√)
echo 7. Modulo (%)
echo 8. Factorial (!)
echo 9. Logarithm (log)
echo 10. Sine (sin)
echo 11. Cosine (cos)
echo 12. Tangent (tan)
echo 13. Exit
echo =====================================
set /p choice=Choose an operation (1-13): 

if %choice%==1 goto addition
if %choice%==2 goto subtraction
if %choice%==3 goto multiplication
if %choice%==4 goto division
if %choice%==5 goto exponent
if %choice%==6 goto sqrt
if %choice%==7 goto modulo
if %choice%==8 goto factorial
if %choice%==9 goto logarithm
if %choice%==10 goto sine
if %choice%==11 goto cosine
if %choice%==12 goto tangent
if %choice%==13 exit

:addition
cls
set /p num1=Enter first number: 
set /p num2=Enter second number: 
set /a result=%num1% + %num2%
echo Result: %result%
pause
goto menu

:subtraction
cls
set /p num1=Enter first number: 
set /p num2=Enter second number: 
set /a result=%num1% - %num2%
echo Result: %result%
pause
goto menu

:multiplication
cls
set /p num1=Enter first number: 
set /p num2=Enter second number: 
set /a result=%num1% * %num2%
echo Result: %result%
pause
goto menu

:division
cls
set /p num1=Enter first number: 
set /p num2=Enter second number (not zero!): 
set /a result=%num1% / %num2%
echo Result: %result%
pause
goto menu

:exponent
cls
set /p base=Enter base number: 
set /p power=Enter exponent: 
echo Set objShell = CreateObject("WScript.Shell") > temp.vbs
echo WScript.Echo ^(%base%^)^%power% >> temp.vbs
cscript //nologo temp.vbs
del temp.vbs
pause
goto menu

:sqrt
cls
set /p num=Enter number for square root: 
echo Set objShell = CreateObject("WScript.Shell") > temp.vbs
echo WScript.Echo Sqr(%num%) >> temp.vbs
cscript //nologo temp.vbs
del temp.vbs
pause
goto menu

:modulo
cls
set /p num1=Enter first number: 
set /p num2=Enter second number: 
set /a result=%num1% %% %num2%
echo Result: %result%
pause
goto menu

:factorial
cls
set /p num=Enter a number for factorial: 
echo Set objShell = CreateObject("WScript.Shell") > temp.vbs
echo Function Fact(n): If n=0 Then Fact=1 Else Fact=n*Fact(n-1) End If End Function >> temp.vbs
echo WScript.Echo Fact(%num%) >> temp.vbs
cscript //nologo temp.vbs
del temp.vbs
pause
goto menu

:logarithm
cls
set /p num=Enter a number for logarithm (base 10): 
echo Set objShell = CreateObject("WScript.Shell") > temp.vbs
echo WScript.Echo Log(%num%) / Log(10) >> temp.vbs
cscript //nologo temp.vbs
del temp.vbs
pause
goto menu

:sine
cls
set /p num=Enter angle (in degrees) for sine: 
echo Set objShell = CreateObject("WScript.Shell") > temp.vbs
echo WScript.Echo Sin(%num% * 3.14159265358979 / 180) >> temp.vbs
cscript //nologo temp.vbs
del temp.vbs
pause
goto menu

:cosine
cls
set /p num=Enter angle (in degrees) for cosine: 
echo Set objShell = CreateObject("WScript.Shell") > temp.vbs
echo WScript.Echo Cos(%num% * 3.14159265358979 / 180) >> temp.vbs
cscript //nologo temp.vbs
del temp.vbs
pause
goto menu

:tangent
cls
set /p num=Enter angle (in degrees) for tangent: 
echo Set objShell = CreateObject("WScript.Shell") > temp.vbs
echo WScript.Echo Tan(%num% * 3.14159265358979 / 180) >> temp.vbs
cscript //nologo temp.vbs
del temp.vbs
pause
goto menu
