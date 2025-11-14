.data
.text

main: addi $8,$0,1
      addi $9,$0,6
      lui $10, 0x1001

for:  beq $8,$9,fim

      #salva i no vetor
      sw $8, 0($10)

      # imprime i
        add $4,$0,$8
        addi $2,$0,1
        syscall

        # pula linha
        addi $4,$0,'\n'
        addi $2,$0,11
        syscall

        addi $10,$10,4 #posicao ++
        addi $8,$8,1 #i++
      
        j for

fim: addi $2,$0,10
     syscall
