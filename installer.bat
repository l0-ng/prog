@echo off
echo Registering in "Open With" context menu...

:: Создаем с префиксом "A" чтобы был выше в алфавитном порядке
reg add "HKCR\*\shell\AShowSignature" /ve /d "Show File Signature" /f
reg add "HKCR\*\shell\AShowSignature\command" /ve /d "\"%~dp0sign.exe\" \"%%1\"" /f

:: Добавляем иконку для красоты
reg add "HKCR\*\shell\AShowSignature" /v "Icon" /d "shell32.dll,24" /f

echo Done! Right-click on any file -> Show File Signature
echo "Show File Signature" will appear ABOVE Notepad++ in context menu
pause