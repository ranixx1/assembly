#Faça um programa para ler um número inteiro e imprimir o quadrado desse número.

.text
main: addi $2,$0,5
      syscall
      add $8,$0,$2

      mult $8,$8
      mflo $10

      add $4, $0, $10   
      addi $2,$0,1
      syscall