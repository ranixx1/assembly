<div align="center">

<h1>RESUMÃO DE APOIO</h1>

<h4>SOMA</h4>
</div>

```assembly
.text

main: addi $8,$0,5 # soma 0 com 5 e adiciona no registrador 8
      addi $9,$0,6 # soma 0 com 6 e adiciona no registrador 9
      add $10,$8,$9 # soma os valores armazenados nos registradores
```

<div align="center">
<h4>Questao aula</h4>
      <h6> Somar 4 números</h6>
</div>

```assembly
main: addi $8,$0,6
      addi $9,$0,9
      addi $10,$0,4
      addi $11,$0,4
      add $20,$8,$9
      add $20,$20,$10 # mesma lógica que x = x+1
      add $20,$20,$11
```

<div align="center">
<h3>Syscall</h3>
<h4>Soma com duas entradas</h4>
</div>

```assembly
.text

main:
# --- Etapa 1: Ler o primeiro número do usuário ---
    addi $2, $0, 5      # Carrega o código da syscall 5 (read_int) em $v0
    syscall             # Executa a syscall. O inteiro lido fica em $v0
    add $8, $0, $2      # Copia o inteiro lido de $v0 para $t0 ($8)

# --- Etapa 2: Ler o segundo número do usuário ---
    addi $2, $0, 5      # Carrega novamente o código 5 em $v0
    syscall             # Executa a syscall. O novo inteiro fica em $v0
    add $9, $0, $2      # Copia o segundo inteiro de $v0 para $t1 ($9)

# --- Etapa 3: Calcular a soma ---
    add $10, $8, $9     # Soma $t0 e $t1, guarda o resultado em $t2 ($10)

# --- Etapa 4: Imprimir o resultado na tela ---
    add $4, $0, $10     # Move o resultado (de $t2) para $a0 ($4) para impressão
    addi $2, $0, 1      # Carrega o código da syscall 1 (print_int) em $v0
    syscall             # Executa a syscall, imprimindo o valor de $a0
```

<div align="center">
<h4>Quadrado de um número</h4>
</div>

```assembly
.text
main: addi $2,$0,5
      syscall
      add $8,$0,$2 # input

      mult $8,$8
      mflo $10 #  Multiplica por ele mesmo e adiciona no reg 10

      add $4, $0, $10   # Cria uma cópia do reg 10 para o reg 4
      addi $2,$0,1
      syscall
```

<div align="center">
<h4>Média de dois números</h4>
</div>

```assembly
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
```
