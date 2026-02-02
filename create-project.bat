@echo off
echo Creating project structure...

REM إنشاء المجلدات
mkdir .github\workflows
mkdir src\assets

REM إنشاء الملفات الفارغة
echo. > src\index.html
echo. > src\style.css
echo. > src\script.js
echo. > Dockerfile
echo. > docker-compose.yml
echo. > .github\workflows\deploy.yml
echo. > README.md

echo Project structure created successfully!
echo Now open each file and paste the content from ChatGPT.
pause