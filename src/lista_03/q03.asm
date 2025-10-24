.text

main: addi $9,$0,0
      addi $10,$0,11

test: beq $9,$10,fim
      addi $4,$9,0
      addi $2,$0,1
      syscall
      addi $9,$9,1
      add $4, $0, '\n'
      addi $2, $0, 11
      syscall        #printf("\n");
      j test


fim: addi $2,$0,10
     syscall
