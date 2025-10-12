.text

main: addi $2,$0,5
      syscall
      andi $8,$2,1 # se for par = 0, se for impar = 1
      beq $8,$0,par
      addi $4,$0,'i'
      j imp

par: addi $4,$0,'p'

imp: addi $2,$0,11
     syscall
     
fim: addi $2,$0,10
     syscall