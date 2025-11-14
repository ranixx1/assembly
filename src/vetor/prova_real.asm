.data
.text

main: addi $2,$0,5
      syscall
      add $9,$0,$2

      addi $8,$0,0

      lui $10,0x1000

for1: beq $8,$9,init
      
      addi $2,$0,5
      syscall
      sw $2,0($10)
      
      addi $10,$10,4
      addi $8,$8,1
      j for1

init: 
      addi $14,$0,0 #MaiorSoma = 0
      addi $18,$0,0 #SomaAtual

      addi $15,$0,0 #MelhorInicio = 0
      addi $19,$0,0 #MelhorFim

      addi $20,$0,0 #iniTemp

      addi $8,$0,0

      lui $10,0x1000

for2: beq $8,$9,imp

      lw $7,0($10)
      add $18,$18,$7 #SomaAtual+= valor

      slt $3,$14,$18
      beq $3,$0,check_neg

      addi $14,$18,0 #MaiorSoma = soma
      addi $15,$20,0 #MelhorInicio = initemp
      addi $19,$8,0 #MelhorFim = i

check_neg:
      slt $3,$18,$0
      beq $3,$0,continua

      addi $18,$0,0
      addi $20,$8,1  #initemp =I+1

continua: 
      addi $10,$10,4
      addi $8,$8,1
      j for2

imp:
      addi $4,$0,'M'
      addi $2,$0,11
      syscall  
      addi $4,$0,'S'
      addi $2,$0,11
      syscall
      addi $4,$0,' '
      addi $2,$0,11
      syscall
      addi $4,$0,':'
      addi $2,$0,11
      syscall
      add $4,$0,$14 #MaiorSoma
      addi $2,$0,1
      syscall

      addi $4,$0,'\n'
      addi $2,$0,11
      syscall
      
      addi $4,$0,'P'
      addi $2,$0,11
      syscall  
      addi $4,$0,'I'
      addi $2,$0,11
      syscall 
      addi $4,$0,' '
      addi $2,$0,11
      syscall      
      addi $4,$0,':'
      addi $2,$0,11
      syscall

      add $4,$0,$15 #posicao || MelhorInicio
      addi $2,$0,1
      syscall
      
      addi $4,$0,'\n'
      addi $2,$0,11
      syscall
      
      addi $4,$0,'Q'
      addi $2,$0,11
      syscall  
      addi $4,$0,'E'
      addi $2,$0,11
      syscall 
      addi $4,$0,' '
      addi $2,$0,11
      syscall
      addi $4,$0,':'
      addi $2,$0,11
      syscall

      sub $21,$19,$15
      addi $21,$21,1

      add $4,$0,$21
      addi $2,$0,1
      syscall

      addi $2,$0,10
      syscall

