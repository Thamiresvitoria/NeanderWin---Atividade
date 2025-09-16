; -------------------------
;Programa: Multiplicação de dois números
; Autor: Shun
; Data: 16/09/2025
; -------------------------

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
