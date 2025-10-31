.text
main:  
       addi $2, $0, 5
       syscall
       add $8, $0, $2       # $8 = n (número de linhas)
       
       addi $20, $0, 2      # nat = 2 (primeiro par)
     
       addi $9, $0, 0       # i = 0
test:  
       beq $9, $8, fimEXT   # se i == n, fim externo

       addi $10, $9, 1      # cols = i + 1
       addi $11, $0, 0      # j = 0
test2: 
       beq $11, $10, fimINT # se j == cols, fim interno
       
       add $4, $0, $20
       addi $2, $0, 1
       syscall              # printf("%d", nat)

       add $4, $0, ' '
       addi $2, $0, 11
       syscall              # printf(" ")
       
       addi $20, $20, 2     # próximo par
       addi $11, $11, 1     # j++
       j test2
fimINT:                  
       add $4, $0, '\n'
       addi $2, $0, 11
       syscall              # printf("\n")

       addi $9, $9, 1       # i++
       j test  
fimEXT: 
       addi $2, $0, 10
       syscall
