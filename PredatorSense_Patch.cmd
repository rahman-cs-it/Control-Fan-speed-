@ECHO OFF
md C:\OEM\AcerLogs\
SET LogPath=C:\OEM\AcerLogs\Useralaunch.log
ECHO.>>%LogPath%
ECHO %DATE% %TIME%[Log START]  ============ %~dpnx0 ============ >> %LogPath%
pushd "%~dp0"

ECHO %DATE% %TIME%[Log TRACE]  rd /s /q c:\uninstall >>%LogPath% 2>&1
rd /s /q c:\uninstall >>%LogPath% 2>&1

ECHO %DATE% %TIME%[Log TRACE]  copy /y "%ALLUsersProfile%\Microsoft\Windows\Start Menu\Programs\Acer\PredatorSense.lnk" "C:\Users\Public\Desktop" >>%LogPath% 2>&1
copy /y "%ALLUsersProfile%\Microsoft\Windows\Start Menu\Programs\Acer\PredatorSense.lnk" "C:\Users\Public\Desktop" >>%LogPath% 2>&1

popd
ECHO %DATE% %TIME%[Log LEAVE]  ============ %~dpnx0 ============ >> %LogPath%
ECHO.>>%LogPath%