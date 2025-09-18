# Multiplicação de Números - NeanderWin

Este projeto implementa uma operação de multiplicação de dois números no simulador NeanderWin, utilizando a arquitetura do processador Neander.

## 📋 Descrição

O código realiza a multiplicação de dois números (`NUM1` e `NUM2`) utilizando o método de soma sucessiva. Ele inclui verificações para garantir a operação correta, mesmo quando um dos números é zero.

## 📚 Aluna

Thamires Vitoria Muniz da Silva

Turma: EO3

## 🧮 Explicação do Programa de Multiplicação em Assembly

Este documento explica o funcionamento de um programa em assembly que realiza a multiplicação de dois números inseridos pelo usuário através de somas sucessivas.

## 🖥️ Visão Geral do Programa

O programa solicita dois números, realiza a multiplicação através de adições repetidas, incluindo uma verificação inicial para casos de multiplicação por zero, e exibe o resultado final.

-----

### Estrutura do Código

1.  **Diretiva de Origem**

<!-- end list -->

```assembly
    ORG 0
```

  - Define que o programa deve começar no endereço de memória 0.

<!-- end list -->

2.  **Variáveis**

<!-- end list -->

```assembly
NUM1:   DB 0    ; Multiplicando
NUM2:   DB 0    ; Multiplicador (contador)
RESULT: DB 0    ; Resultado da multiplicação
```

  - Declara três variáveis na memória, inicializadas com 0, para armazenar os números de entrada, o contador do loop e o resultado do cálculo.

<!-- end list -->

3.  **Leitura dos Números**

<!-- end list -->

```assembly
    ; Pede e armazena o primeiro número (multiplicando)
    IN 0
    OUT 0
    STA NUM1

    ; Pede e armazena o segundo número (multiplicador)
    IN 0
    OUT 0
    STA NUM2
```

  - `IN 0`: Lê um valor do dispositivo de entrada (teclado/alavancas) e armazena no acumulador.
  - `OUT 0`: Exibe o número inserido no visor, servindo como feedback visual.
  - `STA`: Armazena o valor do acumulador nas variáveis `NUM1` e `NUM2`.

<!-- end list -->

4.  **Preparação para a Multiplicação**

<!-- end list -->

```assembly
    ; Inicializa o resultado com 0
    LDI 0
    STA RESULT

    ; Verifica se algum número é zero
    LDA NUM1
    JZ FIM
    LDA NUM2
    JZ FIM
```

  - `LDI 0`: Carrega o valor 0 imediatamente no acumulador.
  - `STA RESULT`: Zera a variável `RESULT`.
  - As instruções `LDA` e `JZ` verificam se `NUM1` ou `NUM2` são zero. Se forem, o programa pula o loop e vai direto para o final, onde o resultado (0) já está armazenado.

<!-- end list -->

5.  **Loop de Multiplicação**

<!-- end list -->

```assembly
LOOP:
    ; Soma NUM1 ao RESULT
    LDA RESULT
    ADD NUM1
    STA RESULT

    ; Decrementa o contador (NUM2)
    LDA NUM2
    SUB 1
    STA NUM2

    ; Verifica se ainda precisa continuar (NUM2 > 0)
    JZ FIM
    JMP LOOP
```

Este loop implementa a multiplicação como uma série de adições:

1.  Adiciona `NUM1` ao valor atual de `RESULT` e atualiza `RESULT`.

2.  Carrega o valor de `NUM2` no acumulador, subtrai 1 e atualiza `NUM2`.

3.  `JZ FIM`: Se `NUM2` chegou a zero, o loop termina e o programa salta para `FIM`.

4.  `JMP LOOP`: Se `NUM2` ainda for maior que zero, o loop continua.

5.  **Exibição do Resultado e Término**

<!-- end list -->

```assembly
FIM:
    LDA RESULT
    OUT 0
    HLT
```

  - `LDA RESULT`: Carrega o resultado final da variável `RESULT` para o acumulador.
  - `OUT 0`: Exibe o resultado no visor.
  - `HLT`: Para a execução do programa.

-----

### Fluxo de Dados na Memória

| Endereço  | Conteúdo          | Propósito                               |
|-----------|-------------------|-----------------------------------------|
| `NUM1`    | Primeiro número   | Valor a ser somado repetidamente.       |
| `NUM2`    | Segundo número    | Serve como contador para o loop.        |
| `RESULT`  | Resultado         | Acumula o resultado da multiplicação.   |

### Exemplo de Execução

Se o usuário inserir:

  - **Primeiro número:** 4
  - **Segundo número:** 3

O programa fará:

1.  Armazenará `4` em `NUM1` e `3` em `NUM2`.
2.  O loop executará 3 vezes.
      - 1ª volta: `RESULT` = $0 + 4 = 4$. `NUM2` = 2.
      - 2ª volta: `RESULT` = $4 + 4 = 8$. `NUM2` = 1.
      - 3ª volta: `RESULT` = $8 + 4 = 12$. `NUM2` = 0.
3.  `NUM2` é 0, o loop termina.
4.  O resultado final, **12**, será exibido no visor.

-----

Desenvolvido por Thamires Vitoria - Demonstrando operações aritméticas básicas em assembly Neander.
