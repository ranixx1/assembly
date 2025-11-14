.data
.text

main: addi $8,$0,10
      addi $9,$0,0
      lui $10, 0x1000
      
for1: beq $9,$8, for2
      addi $2,$0,5
      syscall

      sw $2,0($10)

      addi $10,$10,4
      addi $9,$9,1
      j for1

for2: lui $10,0x1000

      addi $9,$0,0


p_for2: 
      beq $9,$8,fim
      
      lw $11,0($10)

      andi $12,$11,1
      bne $12,$0,impar

      add $4,$0,$11
      addi $2,$0,1
      syscall

      addi $4,$0,'\n'
      addi $2,$0,11
      syscall
            
      addi $10,$10,4
      addi $9,$9,1
      j p_for2

impar:
      addi $10,$10,4
      addi $9,$9,1
      j p_for2

fim: addi $2,$0,10
     syscall
