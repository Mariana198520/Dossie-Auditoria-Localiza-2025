# resultados/

Saídas geradas por `codigo/02_testes_auditoria.py` e `codigo/03_avaliar_resultados.py` (todas sobre dados sintéticos).

| Arquivo | Papel | Conteúdo |
|---|---|---|
| `totais_base_limpa.csv` | E-02 | Prova de calibragem: base antes dos erros x Nota 12(a) (diferença zero) |
| `T01_conciliacao.csv` | E-03 | Conciliação por classe: base x saldo contábil |
| `excecoes_testes.csv` | E-04 | Uma linha por exceção (registro x teste) |
| `resumo_testes.csv` | E-04 | Quantidade e valor por teste |
| `parametros_mus.csv` | E-05 | Valor da população, materialidade, fator, tamanho, intervalo, início aleatório |
| `amostra_mus.csv` | E-05 | Itens selecionados |
| `avaliacao_mus.csv` | E-05 | Valor auditado (simulado), distorção, tainting e projeção por item |
| `resumo_mus.csv` | E-05 | Limite superior de distorção antes e depois da correção |
| `comparacao_inseridos_x_identificados.csv` | E-06 | Cada erro inserido e os testes que o acusaram |
| `matriz_deteccao.csv` | E-06 | Inseridos x detectados por tipo |
| `falsos_positivos.csv` | E-06 | Exceções sem erro inserido (vazio nesta execução) |
