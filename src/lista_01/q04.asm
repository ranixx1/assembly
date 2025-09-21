#Faça um programa para ler duas notas de um aluno do IFRN em um curso semestral.Esse programa deverá apresentar a média desse aluno, após as duas provas.

.text
main: addi $2,$0,5
      syscall
      add $8,$0,$2

      addi $2,$0,5
      syscall
      add $9, $0, $2

      addi $7,$0,2
      add $10,$8,$9

      div $10,$7
      mflo $10

      add $4,$0,$10
      addi $2,$0,1
      syscall     
