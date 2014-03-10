@Echo off

SET OUTPUT=%2
IF "%OUTPUT%"=="" SET OUTPUT=..\bin

cd %1
IF errorlevel 1 GOTO EOF

7z a -o..\bin -r %1.zip assets pack.mcmeta pack.png
IF errorlevel 1 GOTO EOF

echo Deploying to %OUTPUT%
move %1.zip %OUTPUT%
IF errorlevel 1 GOTO EOF

cd ..

:EOF