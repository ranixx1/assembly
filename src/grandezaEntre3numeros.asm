.text
main:
    # Ler 3 números
    addi $2,$0,5
    syscall
    add $8,$0,$2   # A

    addi $2,$0,5
    syscall
    add $9,$0,$2   # B

    addi $2,$0,5
    syscall
    add $10,$0,$2  # C

    # Verificar se todos iguais
    beq $8,$9,verifica_c
    j compara

verifica_c:
    beq $8,$10,iguais
    j compara

compara:
    add $11,$0,$8   # maior
    add $12,$0,$8   # menor

    # B > maior ?
    slt $13,$11,$9
    beq $13,$0,check_c_maior
    add $11,$0,$9

check_c_maior:
    slt $13,$11,$10
    beq $13,$0,check_b_menor
    add $11,$0,$10

check_b_menor:
    slt $13,$9,$12
    beq $13,$0,check_c_menor
    add $12,$0,$9

check_c_menor:
    slt $13,$10,$12
    beq $13,$0,imp
    add $12,$0,$10

imp:
    add $4,$0,$11   # imprime maior
    addi $2,$0,1
    syscall

    addi $2,$0,10   # quebra linha
    syscall

    add $4,$0,$12   # imprime menor
    addi $2,$0,1
    syscall

    addi $2,$0,10
    syscall

    j fim

iguais:
    add $4,$0,$8
    addi $2,$0,1
    syscall

    addi $2,$0,10
    syscall

fim:
    addi $2,$0,10
    syscall
