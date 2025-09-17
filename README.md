# Multiplicação de Números - NeanderWin

Este projeto implementa uma operação de multiplicação de dois números no simulador NeanderWin, utilizando a arquitetura do processador Neander.

## 📋 Descrição

O código realiza a multiplicação de dois números (NUM1 e NUM2) utilizando o método de soma sucessiva, aproveitando a arquitetura básica do processador Neander.

## 📚 Aluna 

Thamires Vitoria Muniz da Silva 
Turma: EO3

## 🧮 Explicação do Programa de Multiplicação em Assembly

Este documento explica o funcionamento de um programa em assembly que realiza a multiplicação de dois números inseridos pelo usuário.

## 🖥️ Visão Geral do Programa

O programa implementa uma multiplicação através de adições sucessivas. Ele solicita dois números ao usuário, realiza a multiplicação e exibe o resultado.

Estrutura do Código

1. Diretiva de Origem

```assembly
      ORG 0
```

· Define que o programa deve começar no endereço de memória 0.

2. Leitura do Primeiro Número

```assembly
IN 0       ; Lê teclado
STA 128    ; Guarda em endereço 128
```

· IN 0: Lê um valor do dispositivo de entrada (teclado) e armazena no acumulador
· STA 128: Armazena o valor do acumulador no endereço de memória 128

3. Leitura do Segundo Número

```assembly
IN 0       ; Lê teclado  
STA 129    ; Guarda em endereço 129
```

· Similar ao anterior, mas armazena o segundo número no endereço 129

4. Preparação para a Multiplicação

```assembly
        LDA 129    ; Carrega o segundo número (contador)
        STA 131    ; Usa endereço 131 como contador
        LDI 0
        STA 130    ; Zera resultado (endereço 130)
```

· STA 131: O segundo número já está no acumulador, então é armazenado no endereço 131 para servir como contador
· LDI 0: Carrega o valor 0 imediatamente no acumulador
· STA 130: Armazena 0 no endereço 130, que será usado para acumular o resultado

5. Loop de Multiplicação

```assembly
LOOP:
     LDA 131    ; Pega o contador
        SUB 1      ; Diminui 1
        STA 131    ; Atualiza o contador
        JZ FIM     ; Se contador for zero, acabou
        
        LDA 130    ; Pega o resultado acumulado
        ADD 128    ; Soma o primeiro número
        STA 130    ; Atualiza o resultado
        
        JMP LOOP   ; Repete o loop
```

Este loop implementa a multiplicação como uma série de adições:

1. Carrega o contador (segundo número)
2. Decrementa o contador em 1
3. Se o contador chegar a zero, pula para o final
4. Atualiza o contador na memória
5. Adiciona o primeiro número ao resultado acumulado
6. Repete o processo

6. Exibição do Resultado e Término

```assembly
FIM:
      LDA 130    ; Pega o resultado final
      OUT 0      ; Mostra no display
      HLT        ; Termina

```

· Carrega o resultado final do endereço 130
· Exibe o resultado no dispositivo de saída (display)
· Para a execução do programa

Fluxo de Dados na Memória

Endereço Conteúdo Propósito
128 Primeiro número Valor a ser somado repetidamente
129 Segundo número Valor original do multiplicador
130 Resultado Acumula o resultado da multiplicação
131 Contador Controla as iterações do loop

Exemplo de Execução

Se o usuário inserir:

· Primeiro número: 4
· Segundo número: 3

O programa fará:

1. Armazenará 4 no endereço 128
2. Armazenará 3 no endereço 129 (e também no 131)
3. Executará o loop 3 vezes, somando 4+4+4
4. Resultado final: 12, que será exibido

---

Desenvolvido por Thamires Vitoria - Demonstrando operações aritméticas básicas em assembly Neander.
