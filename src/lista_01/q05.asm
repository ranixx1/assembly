.text

main:addi $2,$0,5
     syscall
     
     add $8,$0,$2
     
     addi $10,$0,100
     addi $11,$0,10
     
     div $8,$10
     
     mflo $14
     
     mfhi $15
     
     div $15,$11
     
     mflo $15
     mfhi $8
     
     add $8,$15,$8
     add $8,$14,$8
     
     add $4,$0,$8
     
     addi $2,$0,1
     syscall

     addi $2,$0,10
     sycsall