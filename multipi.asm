;---------------------------------------------------
; Programa: Multiplicação de dois números
; Autor: Thamires Vitoria Muniz da Silva
; Data: 17-09-2025
;---------------------------------------------------

; Programa que multiplica dois números
        ORG 0

; Pede primeiro número
        IN 0       ; Lê teclado
        STA 128    ; Guarda em endereço 128

; Pede segundo número  
        IN 0       ; Lê teclado
        STA 129    ; Guarda em endereço 129

; Prepara multiplicação
        LDA 129    ; Carrega o segundo número (contador)
        STA 131    ; Usa endereço 131 como contador
        LDI 0
        STA 130    ; Zera resultado (endereço 130)

; Loop de multiplicação
LOOP:
        LDA 131    ; Pega o contador
        SUB 1      ; Diminui 1
        STA 131    ; Atualiza o contador
        JZ FIM     ; Se contador for zero, acabou
        
        LDA 130    ; Pega o resultado acumulado
        ADD 128    ; Soma o primeiro número
        STA 130    ; Atualiza o resultado
        
        JMP LOOP   ; Repete o loop

; Mostra resultado
FIM:
        LDA 130    ; Pega o resultado final
        OUT 0      ; Mostra no display
        HLT        ; Termina
