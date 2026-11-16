#!/usr/bin/env bash
# Reproduz todo o trabalho a partir do zero (aprox. 2–3 minutos).
set -e
cd "$(dirname "$0")/codigo"
python 01_gerar_base.py
python 02_testes_auditoria.py
python 03_avaliar_resultados.py
python 04_gerar_planilhas.py
python 05_gerar_dossie.py
