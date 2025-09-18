;---------------------------------------------------
; Programa: Multiplicação de dois números 
; Autor: Thamires Vitoria Muniz da Silva
; Data: 18-09-2025
;---------------------------------------------------
; Descrição: Multiplica dois números usando somas sucessivas
; Entrada: Dois números via teclado
; Saída: Resultado da multiplicação no visor

ORG 0

; Variáveis
NUM1:    DB 0  ; Multiplicando
NUM2:    DB 0    ; Multiplicador (contador)
RESULT:  DB 0    ; Resultado da multiplicação

INICIO:
    ; Pede e armazena o primeiro número (multiplicando)
    IN 0         ; Lê do teclado
    OUT 0        ; Mostra no visor (feedback)
    STA NUM1     ; Armazena em NUM1

    ; Pede e armazena o segundo número (multiplicador)
    IN 0         ; Lê do teclado
    OUT 0        ; Mostra no visor (feedback)
    STA NUM2     ; Armazena em NUM2

    ; Inicializa o resultado com 0
    LDI 0
    STA RESULT

    ; Verifica se algum número é zero (multiplicação por zero = zero)
    LDA NUM1
    JZ FIM       ; Se NUM1 = 0, vai para FIM
    LDA NUM2
    JZ FIM       ; Se NUM2 = 0, vai para FIM

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
    JZ FIM       ; Se NUM2 = 0, termina
    JMP LOOP     ; Senão, continua somando

FIM:
    ; Mostra o resultado
    LDA RESULT
    OUT 0
    HLT          ; Termina o programa

