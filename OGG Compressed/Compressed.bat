@echo off
cd /d "%~dp0"

if not exist "Compressed" mkdir "Compressed"

echo ===============================
echo Compressing OGG files...
echo ===============================

for %%f in (*.ogg) do (
    echo Processing: %%f
    ffmpeg -y -i "%%f" -c:a libopus -b:a 24k "Compressed\%%~nf.ogg"
)

echo.
echo ===============================
echo Finished!
echo Files saved in: Compressed
echo ===============================
pause