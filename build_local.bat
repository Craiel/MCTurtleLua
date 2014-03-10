@Echo off

SET OUTPUT=%2
IF "%OUTPUT%"=="" GOTO EOF

cd %1
IF errorlevel 1 GOTO EOF

xcopy assets\computercraft\lua\rom\programs\* %OUTPUT%\
xcopy /I assets\computercraft\lua\rom\apis %OUTPUT%\apis
IF errorlevel 1 GOTO EOF

cd ..

:EOF