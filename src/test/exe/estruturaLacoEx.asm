.text

main:
    addi $9,$0,1     # i = 1
    addi $8,$0,5     # n = 5

loop:
    # aqui vai o que você quer repetir
    add $4,$0,$9     # print i
    addi $2,$0,1
    syscall

    addi $4,$0,32    # espaço
    addi $2,$0,11
    syscall

    addi $9,$9,1     # i++

    sub $10,$9,$8    # $10 = i - n
    beq $10,$0,fim   # se i == n → fim

    j loop            # volta pro começo

fim:
    addi $2,$0,10
    syscall
