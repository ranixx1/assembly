.data
.text

main: addi $8,$0,0
      addi $9,$0,10

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
      addi $15,$0,0 #MaiorPosicao = 0

      addi $8,$0,0
      addi $9,$0,9

      lui $10,0x1000

for2: beq $8,$9,imp

      lw $7,0($10)
      lw $6,4($10)

      add $5,$7,$6

      slt $3,$14,$5
      beq $3,$0,continua

      addi $14,$5,0 #MaiorSoma = soma
      addi $15,$8,0 #MaiorPosicao = i

continua:
      addi $10,$10,4
      addi $8,$8,1
      j for2

imp:
      add $4,$0,$14 #MaiorPosicao
      addi $2,$0,1
      syscall

      addi $4,$0,'\n'
      addi $2,$0,11
      syscall
      
      lui $10,0x1000
      sll $11,$15,2 #pos *4
      add $11,$11,$10 #endereco = base + pos*4

      lw $13,0($11)  #n[pos]
      add $4,$0,$13
      addi $2,$0,1
      syscall
      
      addi $4,$0,' '
      addi $2,$0,11
      syscall

      lw $13,4($11)
      add $4,$0,$13
      addi $2,$0,1
      syscall
      
      addi $4,$0,'\n'
      addi $2,$0,11
      syscall

      add $4,$0,$15 # posicao
      addi $2,$0,1
      syscall

      addi $2,$0,10
      syscall

