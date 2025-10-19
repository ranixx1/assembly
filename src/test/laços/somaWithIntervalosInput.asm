.text
main: addi $2,$0,5
      syscall
      add $8,$0,$2        # início

      addi $2,$0,5
      syscall
      add $10,$0,$2       # fim

      addi $11, $0, 0     # soma = 0

test: beq $8,$10,fim
      add $11, $11, $8    # soma += início
      addi $8,$8,1
      j test

fim:  add $11, $11, $8    # soma o último número
      add $4, $0, $11     # mostra resultado
      addi $2, $0, 1
      syscall

      addi $2, $0, 10     # encerra programa
      syscall
