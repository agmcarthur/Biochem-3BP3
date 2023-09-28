@echo off 
title Create missing directories for Lab 3 

set /p Missing=Name of missing temp file (e.g. temp01354a497313):
::echo %Missing%

set mydir="C:\Users\%USERNAME%\Mesquite_Support_Files\Mesquite_Prefs\Temp\%Missing%\ClustalAlign\"

:: Check for existence of path, creates it if it doesn't exist 
if not exist %mydir% (
echo Creating temp directories! Continue with Lab 3. 
mkdir %mydir% 
) else (
echo Directory exists!)
