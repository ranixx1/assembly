.text
main: addi $2, $0, 5
      syscall
      add $21, $0, $2

      addi $2, $0, 5
      syscall
      add $20, $0, $2


      add $8, $0, $20  #$8 contem os multiplos
      add $10, $0, $21
      addi $9, $0, 0  # i = 0
test: beq $9, $10, fimLaco
     
      add $4, $0, $8
      addi $2, $0, 1
      syscall
 
      addi $4, $0, '\n'
      addi $2, $0, 11
      syscall
 
      add $8, $8, $20
     
      addi $9, $9, 1  # i++
      j test      
fimLaco:                                  
      addi $2, $0, 10
      syscall