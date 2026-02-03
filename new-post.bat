@echo off
set /p title="Post title: "

for /f "tokens=1-3 delims=/" %%a in ('powershell -command "Get-Date -Format 'yyyy/MM/dd'"') do set date=%%a-%%b-%%c

powershell -command "('%title%'.ToLower() -replace '[^a-z0-9]+', '-' -replace '^-|-$', '')" > %temp%\slug.txt
set /p slug=<%temp%\slug.txt

set filename=_posts\%date%-%slug%.md

(
echo ---
echo layout: post
echo title: "%title%"
echo date: %date%
echo ---
echo.
) > %filename%

echo Created %filename%
