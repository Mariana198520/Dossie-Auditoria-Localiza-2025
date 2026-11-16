# Dossiê de Auditoria — Localiza Rent a Car S.A. — Exercício 2025

**Universidade de Brasília** · Departamento de Ciências Contábeis e Atuariais  
**Disciplina:** Auditoria 1 (CCA0024) — Turma 02 — 2026.2 — Avaliação P2  
**Professor:** Lucas Oliveira Gomes Ferreira  
**Aluna:** Mariana dos Santos Graff · **Matrícula:** 232038380 · **Data:** 14/11/2026

> **Natureza do trabalho.** Trabalho acadêmico individual. Não constitui auditoria, não expressa opinião e não oferece
> segurança. Saldos e textos citados são públicos (demonstrações financeiras de 2025, B3, CFC). A base analítica do
> imobilizado é **100% sintética**, identificada pelo prefixo `SYN` e pela coluna `dado_sintetico = SIM`.

---

## 1. Entregáveis

| # | Entregável exigido | Onde está |
|---|---|---|
| 1 | Dossiê em PDF com papéis de trabalho e referências cruzadas | [`dossie/Dossie_Auditoria_Localiza_2025.pdf`](dossie/Dossie_Auditoria_Localiza_2025.pdf) — 80 páginas, padrão ABNT |
| 2 | Base simulada com no mínimo 500.000 linhas | [`dados/base_imobilizado_sintetica.csv.gz`](dados/) — 640.655 linhas |
| 3 | Dicionário de variáveis | [`docs/dicionario_variaveis.md`](docs/dicionario_variaveis.md) (também em CSV e no Apêndice C) |
| 4 | Código de geração e análise | [`codigo/`](codigo/) — scripts 01 a 05 |
| 5 | Planilhas editáveis (materialidade, amostra, análises, conciliações) | [`planilhas/papeis_de_trabalho.xlsx`](planilhas/papeis_de_trabalho.xlsx) |
| 6 | Matriz de cobertura das normas | [`docs/matriz_cobertura_normas.md`](docs/matriz_cobertura_normas.md) (Apêndice A) |
| 7 | Relação das fontes, com links e datas de acesso | [`docs/fontes.md`](docs/fontes.md) (Apêndice B) |
| 8 | README com identificação, organização e reprodução | este arquivo |

## 2. Estrutura do repositório

```
auditoria-localiza-2025/
├── README.md                     identificação, organização e reprodução
├── executar_tudo.sh / .bat       reproduz o trabalho inteiro (Linux/macOS ou Windows)
├── requirements.txt              dependências Python
├── assets/
│   └── logo_unb.png              logo usada na capa do dossiê
├── dossie/
│   └── Dossie_Auditoria_Localiza_2025.pdf
├── planilhas/
│   └── papeis_de_trabalho.xlsx   capa com índice, 10 abas, fórmulas e gráficos
├── dados/
│   ├── LEIA-ME.md
│   ├── base_imobilizado_sintetica.csv.gz
│   └── registro_erros_inseridos.csv
├── resultados/                   saídas dos testes (CSV) + LEIA-ME.md
├── docs/                         premissas, dicionário, matriz de normas e fontes (MD e CSV)
└── codigo/
    ├── config.py                 saldos reais, premissas, materialidade e identificação
    ├── 01_gerar_base.py          gera a base calibrada e insere os erros
    ├── 02_testes_auditoria.py    conciliação, testes T02–T11 e seleção MUS (sem ler o gabarito)
    ├── 03_avaliar_resultados.py  avaliação MUS e comparação inseridos x identificados
    ├── 04_gerar_planilhas.py     planilha editável
    ├── 05_gerar_dossie.py        dossiê em PDF (ABNT)
    └── conteudo_*.py, papeis_e.py, dicionario.py   textos dos papéis, fontes e normas
```

## 3. Organização do dossiê (ABNT)

Elementos pré-textuais (capa, folha de rosto, resumo, listas de quadros, tabelas e siglas, sumário); seções
**1 Introdução**, **2 Aceitação, qualidade e planejamento** (A-00 a A-09), **3 Entendimento da entidade e riscos**
(B-01 a B-06), **4 Respostas, evidência e comunicações** (C-01 a C-12), **5 Programas por área** — receitas,
disponibilidades, estoques, imobilizado, passivos e estimativas (D-01 a D-06), **6 Base sintética e testes** (E-01 a E-06)
e **7 Conclusão integrada** (F-01); referências (NBR 6023) e apêndices A a G.

Formatação: NBR 14724 (margens 3/2 cm, fonte 12, espaçamento 1,5, paginação a partir da folha de rosto), NBR 6024
(numeração progressiva), NBR 6027 (sumário), NBR 6028 (resumo), NBR 10520 (citações autor-data) e normas do IBGE
para tabelas.

Cada procedimento é classificado como **realizado com evidência pública**, **planejado por falta de acesso** ou
**simulado para fins didáticos**. Nenhuma confirmação, entrevista, inspeção física ou acesso a sistema é apresentado
como realizado.

## 4. Como reproduzir

Requer Python 3.10 ou superior.

```bash
pip install -r requirements.txt
./executar_tudo.sh            # Windows: executar_tudo.bat
```

A semente aleatória (20251231) garante a mesma base e os mesmos resultados em qualquer máquina. Para alterar
premissas, materialidade ou identificação, edite `codigo/config.py` e rode novamente.

## 5. Principais resultados

| Item | Resultado |
|---|---|
| Materialidade global / execução / trivial | R$ 159.893 mil / R$ 119.920 mil / R$ 7.995 mil |
| Conta de maior materialidade do ativo | Imobilizado — R$ 53.731.841 mil (62,8% do ativo) |
| Calibragem da base (antes dos erros) | Diferença zero com a Nota 12(a), por classe, ao centavo |
| Erros inseridos x detectados | 307 x 307 (100%), sem falsos positivos |
| Amostra MUS | 1.345 itens; LSD de R$ 189,8 mi antes e R$ 119,9 mi depois da correção (ME R$ 119,9 mi) |
| Achados com evidência pública | Covenant recalculado em 2,30x (2,25x divulgado; limite 4,00x); três valores divulgados para a baixa de prejuízos fiscais da Locamerica; cabeçalhos invertidos na tabela de EBITDA do Relatório da Administração |

## 6. Normas e fontes

Versões das NBC TA conforme a relação do CFC acessada em 14/11/2026. As NBC TA 240 (R2) e 570 (R1), publicadas no
DOU em 25/09/2026, são posteriores ao exercício; para 2025 aplicaram-se as versões anteriores. Fontes completas em
[`docs/fontes.md`](docs/fontes.md).

## 7. Publicação no GitHub

```bash
git init && git add . && git commit -m "P2 Auditoria 1 — Dossiê Localiza 2025"
git branch -M main
git remote add origin https://github.com/<usuario>/auditoria-localiza-2025.git
git push -u origin main
```

O maior arquivo (base compactada, cerca de 41 MB) está abaixo do limite de 100 MB do GitHub. Deixe o repositório
público (ou adicione o professor como colaborador) e teste o link em uma janela anônima antes de postar.
