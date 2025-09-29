.text
main:
    # carrega 80 em $8 ($t0)
    addi $8, $0, 80

    # --- divide $8 por 2 ---
    srl $9, $8, 1           # $9 = $8 / 2

    # imprime o resultado em $9
    add $4, $0, $9       # argumento para syscall em $4 
    addi $2, $0, 1       # syscall 1 (print_int)
    syscall

    addi $4,$0, '\n'
    addi $2,$0, 11
    syscall

    # --- divide $8 por 4 ---
    srl $9, $8, 2           # $9 = $8 / 4

    # imprime o resultado em $9
    add $4, $0, $9
    addi $2, $0, 1
    syscall

    # imprime nova linha
    addi $4,$0, '\n'
    addi $2,$0, 11
    syscall

    # --- divide $8 por 8 ---
    srl $9, $8, 3           # $9 = $8 / 8

    # imprime o resultado em $9
    add $4, $0, $9
    addi $2, $0, 1
    syscall

    # --- fim ---
    addi $2, $0, 10      # syscall 10 (exit)
    syscall
