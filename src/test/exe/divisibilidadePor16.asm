.text
main: addi $2,$0,5
      syscall
      add $8,$0,$2

      andi $9,$8,15
      nor $9, $9, $0      # $9 = ~($9)
      srl $9, $9, 31      # pega o bit mais significativo
      addi $9, $9, 0      

      add $4,$0,$9

      addi $2,$0,1
      syscall

      addi $2,$0,10
      syscall

