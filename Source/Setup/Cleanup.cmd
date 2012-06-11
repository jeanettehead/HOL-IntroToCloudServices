@echo off
echo.
echo ======================================================
echo Uninstall Visual Studio 2010 Code Snippets for the lab
echo ======================================================
echo.

for /f "tokens=2,*" %%a in ('reg query "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\Shell Folders" /v "Personal" 2^>NUL ^| findstr Personal') do set MyDocuments=%%b

DEL "%MyDocuments%\Visual Studio 2010\Code Snippets\Visual C#\My Code Snippets\IntroductiontoWindowsAzureEx*.snippet" 2>NUL
DEL "%MyDocuments%\Visual Studio 2010\Code Snippets\XML\My Xml Snippets\IntroductiontoWindowsAzureEx*.snippet" 2>NUL

echo Lab Code Snippets have been removed!
PAUSE