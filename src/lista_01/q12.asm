#Faça um programa que calcule uma média ponderada de três números inteiros, com pesos 3, 9 e 15, sem usar a operação de multiplicação.
.text
main: addi $2,$0,5
      syscall
      add $8,$0,$2

      addi $2,$0,5
      syscall
      add $9,$0,$2

      addi $2,$0,5
      syscall
      add $11,$0,$2

      #pesos

      addi $12,$0,3
      addi $13,$0,9
      addi $14,$0,15
    
      #soma dos pesos
      addi $19,$0,27

      #multiplicando os pesos por seu respectivo numero

      mult $8,$12
      mflo $15
      mult $9,$13
      mflo $16
      mult $11,$14
      mflo $17

      #calculando a soma

      add $18,$15,$16
      add $18,$18,$17

      # dividindo a soma das notas pela soma dos pesos
      
      div $18,$19
      mflo $19

      add $4,$0,$19

      addi $2,$0,1
      syscall

      addi $2,$0,10
      syscall



