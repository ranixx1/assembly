.text

main: addi $2,$0,5
      syscall
      add $8,$0,$2
      
      addi $10,$0,5
      div $8,$10
      mflo $11
      mfhi $12
      
      add $4,$0,$11
      addi $2,$0,1
      syscall
      
      addi $2,$0,10
      syscall