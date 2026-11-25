@echo off
robocopy "I:\Mi unidad\Obsidian\Erkabrew - Eisvirm\Lore y Mundo" "C:\Users\danie\Documents\wiki-eisvirm\content" /MIR /XD .obsidian /XF desktop.ini index.md /NJH /NJS /NDL /NC /NS

cd /d "C:\Users\danie\Documents\wiki-eisvirm"
git add -A content
git diff --cached --quiet
if %errorlevel% neq 0 (
    git commit -m "Actualizacion automatica de la wiki"
    git push
)