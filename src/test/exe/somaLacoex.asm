.text

main:
    addi $8,$0,5     # n = 5
    addi $9,$0,1     # i = 1
    addi $10,$0,0    # soma = 0

loop:
    add $10,$10,$9   # soma = soma + i
    addi $9,$9,1     # i++
    sub $11,$9,$8
    beq $11,$0,fim
    j loop

fim:
    add $4,$0,$10    # print soma
    addi $2,$0,1
    syscall

    addi $2,$0,10
    syscall
