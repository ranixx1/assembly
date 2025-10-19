.text

main: addi $2,$0,5
      syscall
      add $8,$0,$2

      addi $2,$0,5
      syscall
      add $9,$0,$2

      addi $2,$0,5
      syscall
      add $10,$0,$2

      addi $7,$0,6
      addi $15,$0,60

      add $12,$9,$9 #peso 2, nota 2
      

      add $12,$12,$8 #nota 1 + nota 2

      add $12,$10,$10
      add $12,$12,$10

media: div $12,$6
       mflo $13


passou: slt $6,$13,$15
        beq $6,$0,aprovado

reprovado:



aprovado:


imp: addi $2,$0,1
     syscall


fim:

      
