@echo off &setlocal
Title Quick Website Maker

@REM Get Website Name From User

echo Developed By Harshil Kaneria
echo.
set /p website_name="Enter Your Website Name :- "

@REM Creating Directory
mkdir "%website_name%"
mkdir "%website_name%/asset"
mkdir "%website_name%/asset/css"
mkdir "%website_name%/asset/js"
mkdir "%website_name%/asset/image"

@REM Creating Files
break>"%website_name%\index.html"
break>"%website_name%\asset\css\styles.css"
break>"%website_name%\asset\js\main.js"

@REM Add Html Syntax
(
echo(^<!DOCTYPE html^>
echo(^<html lang="en"^>
echo(^<head^>
echo(   ^<!-- Mata Tags --^>
echo(   ^<meta charset="UTF-8"^>
echo(   ^<meta name="viewport" content="width=device-width,initial-scale=1.0"^>
echo(   ^<title^>%website_name%^</title^>
echo(   ^<link rel="stylesheet" href="./asset/css/styles.css"^>
echo(^</head^>
echo(^<body^>
echo(    ^<h1^>Quick Site Run Fine !^</h1^>
echo(    ^<script src="./asset/js/main.js"^>^</script^>
echo(^</body^>
echo(^</html^>
)>"%website_name%\index.html"

exit