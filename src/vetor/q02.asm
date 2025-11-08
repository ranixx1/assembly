.data
.text
main:
    lui $10, 0x1001    
    addi $8, $0, 6     # contador = 6

for1:
    beq $8, $0, ffor1

    addi $2, $0, 5     # syscall 5 = ler inteiro
    syscall

    sw $2, 0($10)      # guarda número no vetor
    addi $10, $10, 4   # avança posição
    addi $8, $8, -1    # contador --
    j for1

ffor1:
    addi $10, $10, -24 # volta pro início do vetor (6 * 4)
    addi $8, $0, 6     # reinicia contador

for2:
    beq $8, $0, fim

    lw $4, 0($10)      # $4 = valor do vetor
    addi $2, $0, 1     
    syscall

    # imprimir quebra de linha
    addi $4, $0, '\n'    
    addi $2, $0, 11    
    syscall

    addi $10, $10, 4   # próxima posição
    addi $8, $8, -1    # contador --
    j for2

fim:
    addi $2, $0, 10    
    syscall
