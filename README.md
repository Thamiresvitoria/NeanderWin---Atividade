# Multiplicação de Números - NeanderWin

Este projeto implementa uma operação de multiplicação de dois números no simulador NeanderWin, utilizando a arquitetura do processador Neander.

📋 Descrição

O código realiza a multiplicação de dois números (NUM1 e NUM2) utilizando o método de soma sucessiva, aproveitando a arquitetura básica do processador Neander.

📚 Aluna 

Thamires Vitoria Muniz da Silva 
Turma: EO3

🧮 Algoritmo Implementado

O algoritmo implementa a multiplicação através de somas sucessivas:

1. Inicializa o resultado com zero
2. Utiliza NUM2 como contador de iterações
3. Soma NUM1 ao resultado a cada iteração
4. Decrementa o contador até chegar a zero
5. Retorna o resultado final

💻 Código

```assembly
; Programa: Multiplicação de dois números
; Autor: Thamires Vitoria
; Data: 16/09/2025

INICIO:   LDA NUM2        ; Carrega o valor de NUM2 (contador)
          STA CONT        ; Armazena em CONT para usar como contador
          LDA ZERO        ; Zera o acumulador
          STA RESULTADO   ; Inicializa RESULTADO com 0

LOOP:     LDA CONT        ; Carrega o contador
          JZ FIM          ; Se for zero, fim da multiplicação
          LDA RESULTADO   ; Carrega o resultado parcial
          ADD NUM1        ; Soma NUM1
          STA RESULTADO   ; Salva no RESULTADO
          LDA CONT        ; Carrega o contador
          SUB UM          ; Decrementa 1
          STA CONT        ; Atualiza o contador
          JMP LOOP        ; Volta para o loop

FIM:      HLT             ; Termina a execução

; -------------------------
; Dados
NUM1:     DB 05           ; Primeiro número (5)
NUM2:     DB 03           ; Segundo número (3)
RESULTADO:DB 00           ; Aqui vai o resultado
CONT:     DB 00           ; Contador auxiliar
UM:       DB 01           ; Constante 1
ZERO:     DB 00           ; Constante 0
```

🎯 Como Usar

1. Configuração dos valores:
   · Edite os valores de NUM1 e NUM2 com os números a serem multiplicados
   · Exemplo: NUM1 = 5, NUM2 = 3 (para calcular 5 × 3)
2. Execução:
   · Execute o programa no NeanderWin
   · O resultado será armazenado em RESULTADO
3. Resultado:
   · Verifique o valor em RESULTADO para obter o produto da multiplicação

📊 Exemplo de Execução

Para multiplicar 5 × 3:

· NUM1 = 5 (multiplicando)
· NUM2 = 3 (multiplicador)
· Após execução: RESULTADO = 15

🔧 Características Técnicas

· Arquitetura: Neander (processador didático)
· Linguagem: Assembly do Neander
· Técnica: Multiplicação por soma sucessiva
· Uso de memória: 6 posições de memória
· Constantes: Utiliza constantes UM (1) e ZERO (0) para melhor legibilidade

📝 Observações

· Isso foi o que eu consegui desenvolver, infelizmente não possuo base para fazer algo mais complexo. Essa foi a melhoria que consegui desenvolve.

---

Desenvolvido por Thamires Vitoria - Demonstrando operações aritméticas básicas em assembly Neander.
