.text
main: addi $8,$0,0
      addi $10,$0,11
test: beq $8,$10,fimLaco
      add $4,$0,$8
      addi $2,$0,1
      syscall
      addi $4,$0,'\n'
      addi $2,$0,11
      syscall

      addi $8,$8,1
      j test
fimLaco: addi $2,$0,10
         syscall
