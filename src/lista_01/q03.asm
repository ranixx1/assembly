#Faça um programa para ler dois números inteiros e imprimir a multiplicação desses dois números


.text

main: addi $2,$0, 5
      syscall
      add $8,$0,$2

      addi $2,$0,5
      syscall
      add $9,$0,$2

      mult $8,$9
      mflo $10

      add $4,$0,$10
      addi $2,$0,1
      syscall
