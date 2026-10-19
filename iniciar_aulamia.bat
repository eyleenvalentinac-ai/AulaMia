@echo off
chcp 65001 >nul
title AulaMIA - Asistente Pedagogico Inteligente

echo ========================================================
echo         ✨ BIENVENIDO A AulaMIA ✨
echo   "La IA que entiende tu aula y te ayuda a ensenar"
echo ========================================================
echo.
echo Iniciando el servidor de backend y frontend...

set NODE_EXEC=node

where node >nul 2>nul
if %errorlevel% neq 0 (
  if exist "%APPDATA%\Antigravity\bin\agy-node.cmd" (
    set NODE_EXEC="%APPDATA%\Antigravity\bin\agy-node.cmd"
  ) else (
    echo [ERROR] No se encontro Node.js en el sistema.
    echo Por favor instala Node.js desde https://nodejs.org
    pause
    exit /b 1
  )
)

start "" http://localhost:3000

%NODE_EXEC% backend\server.js

pause
