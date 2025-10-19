#Faça um programa que leia um número inteiro entre 0 e 9999 e imprima esse número com 4 caracteres, substituindo o algarismo 0 por espaço.

.text
main:  addi $2, $0, 5
       syscall
       add $8, $0, $2
       
       sub $9, $0, $8  # 0 - num
       
       srl $10, $9, 31 # sinal (0-num)
       
       sll $11, $10, 4 # 16 * sinal (0-num)
       
       addi $4, $11, 32
       add $4, $8, $4
       addi $2, $0, 11
       syscall
       
       
       addi $4, $0, ' '
       addi $2, $0, 11
       syscall
       
       
       addi $2, $0, 10
       syscall
