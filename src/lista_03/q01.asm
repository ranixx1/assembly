text
main: addi $8, $0, 3  #$8 contem os multiplos
      addi $10, $0, 10
      addi $9, $0, 0  # i = 0
test: beq $9, $10, fimLaco
     
      add $4, $0, $8
      addi $2, $0, 1
      syscall
 
      addi $4, $0, '\n'
      addi $2, $0, 11
      syscall
 
      addi $8, $8, 3
     
      addi $9, $9, 1  # i++
      j test      
fimLaco:                                  
      addi $2, $0, 10
      syscall