@echo off
rem homedir = %~dp0
rem project = %1
rem cwd = %CD%

if "%1"=="icefaces" (
	echo 'Creating icefaces project...'
	xcopy "%~dp0\templates\icefaces\*" "%CD%" /E /Q /R /Y
	echo 'Generating eclipse files...'
	gradle eclipse
	goto success
)

:failure
echo 'Unable to create project!'
goto :eof

:success
echo 'Project created successfully!'
goto :eof