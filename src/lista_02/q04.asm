.text
main:
    # Ler primeiro número (A)
    addi $2,$0,5
    syscall
    add $8,$0,$2     # $8 = A

    # Ler segundo número (B)
    addi $2,$0,5
    syscall
    add $9,$0,$2     # $9 = B

    # Testa igualdade primeiro
    beq $8,$9,iguais

    # Testa se A < B
    slt $10,$8,$9    # se A<B → $10=1
    bne $10,$0,menorA

    # Se não é menor nem igual → é maior
maior:
    # imprime A
    add $4,$8,$0
    addi $2,$0,1
    syscall
    # imprime '>'
    addi $4,$0,'>'
    addi $2,$0,11
    syscall
    # imprime B
    add $4,$9,$0
    addi $2,$0,1
    syscall
    j fim

menorA:
    # imprime A
    add $4,$8,$0
    addi $2,$0,1
    syscall
    # imprime '<'
    addi $4,$0,'<'
    addi $2,$0,11
    syscall
    # imprime B
    add $4,$9,$0
    addi $2,$0,1
    syscall
    j fim

iguais:
    # imprime A
    add $4,$8,$0
    addi $2,$0,1
    syscall
    # imprime '='
    addi $4,$0,'='
    addi $2,$0,11
    syscall
    # imprime B
    add $4,$9,$0
    addi $2,$0,1
    syscall

fim:
    addi $2,$0,10
    syscall
