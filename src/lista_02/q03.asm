.text
main:
    # Ler primeiro número
    addi $2,$0,5      
    syscall
    add $8,$0,$2      

    # Ler segundo número
    addi $2,$0,5
    syscall
    add $9,$0,$2      

    # Verificar quem é o maior
    slt $10,$8,$9     # $10 = 1 se $8 < $9
    beq $10,$0,maior8 # se $8 >= $9, vai pra maior8

menor8:
    # $9 é o maior
    sub $14,$9,$8     
    add $4,$0,$9      
    j imp

maior8:
    # $8 é o maior
    sub $14,$8,$9     # diferença (positiva)
    add $4,$0,$8      

imp:
    # imprimir maior
    addi $2,$0,1      
    syscall

    # imprimir quebra de linha
    addi $2,$0,11     
    addi $4,$0,'\n'     
    syscall

    # imprimir diferença
    add $4,$0,$14
    addi $2,$0,1
    syscall

    # encerrar
fim:
    addi $2,$0,10
    syscall
