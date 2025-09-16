; -------------------------
;Programa: Multiplicação de dois números
; Autor: Thamires Vitoria 
; Data: 16/09/2025
; -------------------------

INICIO:   ; Programa que multiplica dois números
        ORG 0 ; onde começa o programa na memória

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