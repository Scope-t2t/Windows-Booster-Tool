@echo off
REM Delete temporary files in the Windows temp folder
del /s /f /q c:\windows\temp\*.*
REM Remove the temp folder and recreate it
rd /s /q c:\windows\temp
md c:\windows\temp
REM Delete files in the Prefetch folder
del /s /f /q C:\WINDOWS\Prefetch
REM Delete temporary files in the user temp folder
del /s /f /q %temp%\*.*
REM Remove the user temp folder and recreate it
rd /s /q %temp%
md %temp%
REM Delete temporary files and folders with specific names
deltree /y c:\windows\tempor~1
deltree /y c:\windows\temp
deltree /y c:\windows\tmp
deltree /y c:\windows\ff*.tmp
deltree /y c:\windows\history
deltree /y c:\windows\cookies
deltree /y c:\windows\recent
deltree /y c:\windows\spool\printers
REM Delete the Windows swap file
del c:\WIN386.SWP
REM Clear the command prompt window
cls