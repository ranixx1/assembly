# Em Edulândia o calendário é muito parecido com o nosso, exceto pelo fato de não existirem anos bissextos e o mês de fevereiro ter uma quantidade fixa de dias, isso é, 30. Faça um programa que leia um inteiro representando um mês do ano Edulandês e imprima a quantidade de dias que tem esse mês.
.text
main:  addi $2, $0, 5
       syscall
       add $8, $0, $2
       
       addi $9, $0, 8

       # divide o número do mês por 8
       div $8, $9
       
       mflo $10
       
       #soma o quociente com o mês digitado
       add $11, $8, $10

       #verifica paridade       
       andi $12, $11, 1  
       
       addi $4, $12, 30
       addi $2, $0, 1
       syscall
       
       addi $2, $0, 10
       syscall