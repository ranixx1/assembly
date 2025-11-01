.text
main:
    # lê o número de linhas
    addi $2, $0, 5     
    syscall
    add $8, $0, $2     # $8 = n
    add $14,$0,$11
    
    slt $10, $8, $0     # $10 = 1 se n < 0
    bne $10, $0, erro   # se $10 == 1, pula para erro (n < 0)
    
    beq $8, $0, erro    # se n == 0, também pula para erro
    
    slt $10,$14,$8
    bne $10,$0,erro
    
    beq $8,$0,erro

    addi $9, $0, 0     # i = 0 (linhas)
    
    

loop_ext:
    beq $9, $8, fimEXT    # se i == n, termina

    # calcular espaços = n - i - 1
    add $10, $8, $0    # $10 = n
    sub $10, $10, $9   # $10 = n - i
    addi $10, $10, -1  # $10 = n - i - 1
    addi $11, $0, 0    # j = 0 (contador de espaços)

espacos:
    beq $11, $10, numeros   # se j == espaços, vai imprimir números
    add $4, $0, ' '         
    addi $2, $0, 11
    syscall
    addi $11, $11, 1 #espaços++
    j espacos

numeros:
    addi $12, $9, 1         # colunas = i + 1 (quantas vezes o número irá ser impresso)
    addi $13, $0, 0         # k = 0 (contador de dígitos)

loop_num:
    beq $13, $12, nova_linha
    add $4, $9, '0'         # converte i em caractere ('0' + i)
    addi $2, $0, 11
    syscall
    addi $13, $13, 1
    j loop_num

nova_linha:
    add $4, $0, '\n'
    addi $2, $0, 11
    syscall

    addi $9, $9, 1          # i++
    j loop_ext

erro:
   add $4,$0,'N'
   addi $2,$0,11
   syscall
   
fimEXT:
    addi $2, $0, 10
    syscall
