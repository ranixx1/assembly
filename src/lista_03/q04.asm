.text

main: addi $2,$0,5
      syscall
      add $8,$0,$2  #inicio

      addi $2,$0,5
      syscall
      add $9,$0,$2  #fim

      addi $9,$9,1

test: beq $8,$9,fim
      andi $12,$8,1

      bne $12,$0,impar
      add $4, $8, $0      
      addi $2, $0, 1      
      syscall

      addi $4, $0, '\n'   
      addi $2, $0, 11     
      syscall

impar: addi $8,$8,1
       j test

fim: addi $2,$0,10
     syscall
