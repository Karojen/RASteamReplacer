@echo off
echo RASteamReplacer - written by Karojen
echo.

echo Downloading nightly build from buildbot...
curl https://buildbot.libretro.com/nightly/windows/x86_64/RetroArch.7z --output RetroArch.7z
echo.

echo Extracting and replacing files...
"C:\Program Files\7-Zip\7z.exe" e RetroArch.7z -o. Qt5Core.dll Qt5Gui.dll Qt5Network.dll Qt5Widgets.dll retroarch.exe -r -aoa
echo.

echo Cleaning files...
del /q /f RetroArch.7z
echo.

echo Completed - exiting program...
exit
