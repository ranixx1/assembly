.text
main:
    # Carrega os caracteres nos registradores
    addi $1, $0, 'H'
    addi $13, $0, 'E'
    addi $3, $0, 'L'
    addi $4, $0, 'L'
    addi $5, $0, 'O'
    addi $6, $0, ' '
    addi $7, $0, 'W'
    addi $8, $0, 'O'
    addi $9, $0, 'R'
    addi $10, $0, 'L'
    addi $11, $0, 'D'

    # Imprimir um por um usando syscall 11 (print_char)

    addi $2, $0, 11
    add $4, $0, $1
    syscall

    addi $2, $0, 11
    add $4, $0, $13
    syscall

    addi $2, $0, 11
    add $4, $0, $3
    syscall

    addi $2, $0, 11
    add $4, $0, $4
    syscall

    addi $2, $0, 11
    add $4,$0, $5
    syscall

    addi $2, $0, 11
    add $4, $0,$6
    syscall

    addi $2, $0, 11
    add $4, $0, $7
    syscall

    addi $2, $0, 11
    add $4, $0, $8
    syscall

    addi $2, $0, 11
    add $4, $0, $9
    syscall

    addi $2, $0, 11
    add $4, $0, $10
    syscall

    addi $2, $0, 11
    add $4, $0, $11
    syscall

    # Finalizar programa
    addi $2, $0, 10
    syscall
