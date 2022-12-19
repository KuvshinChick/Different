@ECHO OFF
:: Начало цикла
:BegLoop 

:: SET /P  - ввод значения переменной с клавиатуры
SET /P number= Enter number:  

:: Если пользователь ввел '-', закончи цикл
IF %number% ==- GOTO ExitLoop

:: Если переменная не определена, то присвой ей значение
IF NOT DEFINED MIN SET MIN=%number%
IF NOT DEFINED MAX SET MAX=%number%

:: LEQ - меньше или равно, GEQ - больше или равно
IF %number% LEQ %MIN% SET MIN=%number%
IF %number% GEQ %MAX% SET MAX=%number%

:: GOTO - переход к команде/метке
GOTO BegLoop
:ExitLoop

:: ECHO - вывод в консоль
ECHO Min = %MIN%
ECHO Max = %MAX%