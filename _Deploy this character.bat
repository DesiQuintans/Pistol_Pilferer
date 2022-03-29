echo off

REM ---------- Edit these variables as needed. --------------------------------

REM 	Set the character name, which is used for directory names and stuff.
set "charname=Pistol_Pilferer"

REM ---------- No user-editable variables below. ------------------------------

REM	Ask for new version number, which is used to find-replace in files.
set /p ver="Enter a new version number: "


REM	Copy README.md and src/ files to temporary folder.
if exist "temp\" rmdir "temp" /s /q
if not exist "temp\" mkdir "temp\"
copy README.md temp\
robocopy src\ temp\ /s


REM	Do recursive replacement of '{{ ver }}' with new version number.
REM     Needs 'rpl' from <http://gnuwin32.sourceforge.net/packages/rpl.htm>
rpl -R -x".md" -x".json" -q "{{ ver }}" %ver% temp


REM	Zip up the 'temp\*_deli' folder as a .zip renamed as '*.deli'.
REM     Needs 7Zip from <https://www.7-zip.org/>
7z a -tzip -r temp\%charname%.deli .\temp\%charname%_deli\*


REM	Do the final zipping.
	REM 	the -x switch for 7zip excludes the *_deli folder.
if not exist "distrib\" mkdir "distrib\"
if exist "distrib\%charname%.zip" del distrib\%charname%.zip
7z a -tzip -r- distrib\%charname%.zip .\temp\* -x!%charname%_deli


REM	Delete the temporary folder and announce success
REM	Wait for a second to wait for the processes to finish.
timeout /t 1 /nobreak
if exist "temp\" rmdir "temp" /s /q

echo.
echo Version v%ver% of %charname% was built.
echo The Thunderstore distributable is at 'distrib/%charname%.zip'.
echo.

PAUSE