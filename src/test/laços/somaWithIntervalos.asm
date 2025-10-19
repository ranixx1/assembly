.text
main: addi $8, $0, 1    # i=1
      addi $9, $0, 11   # limite = 6
      addi $10, $0, 0   # soma = 0

test: beq $8, $9, fimLaco

      add $10, $10, $8  # soma += i
      addi $8, $8, 1    # i++
      j test

fimLaco:
      add $4, $0, $10   # mostra resultado
      addi $2, $0, 1
      syscall

      addi $2, $0, 10
      syscall
