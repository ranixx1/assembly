.text
main:
    # Ler nota1
    addi $2, $0, 5
    syscall
    add $8, $0, $2

    # Ler nota2
    addi $2, $0, 5
    syscall
    add $9, $0, $2

    # Ler faltas
    addi $2, $0, 5
    syscall
    add $10, $0, $2

    # média ponderada
    addi $11, $0, 2
    mul $12, $8, $11     # nota1 * 2
    addi $11, $0, 3
    mul $13, $9, $11     # nota2 * 3
    add $14, $12, $13
    addi $11, $0, 5
    div $14, $11
    mflo $15             # média em $15

    # penalidade = (faltas / 5) * 10
    addi $11, $0, 5
    div $10, $11
    mflo $16             # faltas/5
    addi $11, $0, 10
    mul $17, $16, $11    # penalidade em $17

    # média final = média - penalidade
    sub $18, $15, $17

    # imprimir média
    add $4, $15, $0
    addi $2, $0, 1
    syscall

    # imprimir penalidade
    add $4, $17, $0
    addi $2, $0, 1
    syscall

    # imprimir média final
    add $4, $18, $0
    addi $2, $0, 1
    syscall

    # fim
    addi $2, $0, 10
    syscall
