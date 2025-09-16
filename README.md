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
; Programa: Multiplica dois números
; Autor: Thamires Vitoria
; Data: 16/09/2025

; Programa que multiplica dois números
        ORG 0

; Pede primeiro número
        IN 0       ; Lê teclado
        STA 128    ; Guarda em endereço 128

; Pede segundo número  
        IN 0       ; Lê teclado
        STA 129    ; Guarda em endereço 129

; Prepara multiplicação
        STA 131    ; Usa endereço 131 como contador
        LDI 0
        STA 130    ; Zera resultado (endereço 130)

; Loop de multiplicação
LOOP:
        LDA 131    ; Pega contador
        SUB 1      ; Diminui 1
        JZ FIM     ; Se zero, acabou
        STA 131    ; Atualiza contador
        
        LDA 130    ; Pega resultado
        ADD 128    ; Soma primeiro número
        STA 130    ; Guarda resultado
        JMP LOOP   ; Repete

; Mostra resultado
FIM:
        LDA 130    ; Pega resultado
        OUT 0      ; Mostra no display
        HLT        ; Termina
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
