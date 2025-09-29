<div align="center">
<h4>Mflo e Mfhi</h4>
<h6>mflo para quociente e mfhi para resto</h6>
</div>

```assembly

.text

main: addi $2,$0,5
      syscall
      add $8,$0,$2
      
      addi $10,$0,5
      div $8,$10
      mflo $11 # quociente
      mfhi $12 # resto
      
      add $4,$0,$11
      addi $2,$0,1
      syscall
      
      addi $2,$0,10
      syscall

```

<div align="center">
<h4>srl e sll</h4>
<h6>srl para dividir por 2 e sll para multiplicar por 2</h6>
</div>

SRL

```assembly
.text
main:
    addi $8, $0, 6      # $8 = 6

    # Multiplicação por potência de 2 usando SLL
    sll $9, $8, 1       # $9 = 6 << 1 = 12  (6 * 2)
    sll $10, $8, 2      # $10 = 6 << 2 = 24 (6 * 4)
    sll $11, $8, 3      # $11 = 6 << 3 = 48 (6 * 8)

    # Divisão por potência de 2 usando SRL
    srl $12, $8, 1      # $12 = 6 >> 1 = 3  (6 / 2)
    srl $13, $8, 2      # $13 = 6 >> 2 = 1  (6 / 4)
    srl $14, $8, 3      # $14 = 6 >> 3 = 0  (6 / 8)

```




<div align="center">
<h4>\n</h4>
<h6>quebra de linha</h6>
</div>

```assembly
    addi $4, $0, '\n'   
    addi $2, $0, 11     # syscall 11 (print_char)
    syscall
```

<div align="center">
<h4>Condições e comparações sem condicionais</h4><h6>Par e impar</h6>
</div>

```assembly

addi $8, $0, 13    # número a testar
andi $9, $8, 1     # $9 = 0 se par, 1 se ímpar

# armazene no reg8 o resultado
```
<div align="center">
<h6>Testar divisibilidade</h6>
</div>

```assembly

addi $8,$0,12
andi $9,$8,3 # $9 = 0 se divisível por 4
```
<div align="center">
<h6>Trocar valores</h6>
</div>

```assembly
srl $onde-salva, $qual-quer-salvar, 31      # pega só o bit mais significativo
xori $onde-salva, $qual-quer-salvar, 1       # opcional: inverte para ter 0/1
```