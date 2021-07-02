@echo off

set WORKINGDIR="[Your Hack's Folder]"

set SOURCEROMFILE="%WORKINGDIR%\Backup\latest_MyBaseROM.smc"
set DESTROMFILE="%WORKINGDIR%\MyBaseROM.smc"

copy %DESTROMFILE% "%DESTROMFILE%~"

".\common\Lunar Magic.exe" -TransferLevelGlobalExAnim %DESTROMFILE% %SOURCEROMFILE%
".\common\Lunar Magic.exe" -TransferOverworld %DESTROMFILE% %SOURCEROMFILE%
".\common\Lunar Magic.exe" -TransferTitleScreen %DESTROMFILE% %SOURCEROMFILE%
".\common\Lunar Magic.exe" -TransferCredits %DESTROMFILE% %SOURCEROMFILE%

".\common\Lunar Magic.exe" -ImportMultLevels %DESTROMFILE% "%WORKINGDIR%\Levels\latest\"
".\common\Lunar Magic.exe" -ImportAllMap16 %DESTROMFILE% "%WORKINGDIR%\Map16\AllMap16_latest.map16"
".\common\Lunar Magic.exe" -ImportSharedPalette  %DESTROMFILE% "%WORKINGDIR%\Palettes\Shared_latest.pal"
