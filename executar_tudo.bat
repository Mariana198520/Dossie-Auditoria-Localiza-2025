@echo off
REM Reproduz todo o trabalho no Windows (aprox. 2-3 minutos).
cd /d "%~dp0codigo"
python 01_gerar_base.py || exit /b 1
python 02_testes_auditoria.py || exit /b 1
python 03_avaliar_resultados.py || exit /b 1
python 04_gerar_planilhas.py || exit /b 1
python 05_gerar_dossie.py || exit /b 1
echo Concluido.
