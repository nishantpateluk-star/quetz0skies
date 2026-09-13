@echo off
REM Deploys the game to Cloudflare (standalone static Worker: quetzalcoatlus-skies).
REM Only index.html and three.min.js are published; everything else in this folder stays local.
setlocal
cd /d "%~dp0"
if not exist public mkdir public
copy /y index.html public\index.html >nul
copy /y three.min.js public\three.min.js >nul
npx --yes wrangler deploy
endlocal
