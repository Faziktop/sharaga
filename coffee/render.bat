@echo off
echo ========================================
echo Render Animation
echo ========================================
echo.

REM Go to the folder with the file
cd /d "C:\Users\duhgu\Downloads\coffee"

REM Show current folder
echo Current folder: %cd%
echo.

REM Check if file exists
if not exist "tema4.pov" (
    echo ERROR: File tema4.pov not found in folder %cd%
    echo.
    echo List of files in folder:
    dir *.pov
    pause
    exit /b
)

echo File found! Starting render...
echo.

REM Run render with path IN QUOTES (fixes the space in "Program Files")
"C:\Program Files\POV-Ray\v3.7\bin\pvengine64.exe" "%cd%\tema4.pov" +W1024 +H768 +FN +KFF60

echo.
echo ========================================
echo Done!
echo ========================================
pause