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

<div align="center">
<h4>Principais serviços</h4>
</div>

```text

1 - imprime valor do $4
5 - lê inteiros do $2
10 - fim da execução
11 - imprimir um char do $4
12 - ler um char do $2



```

<div align="center">
<h3>Comparações e Desvios</h3>
<h4>BEQ, BNE e SLT</h4>
</div>

BEQ (Branch if Equal) → desvia se os dois registradores forem IGUAIS.
Sintaxe: beq $reg1, $reg2, etiqueta
Exemplo: beq $8, $0, fim → se $8 == 0, pula para fim

BNE (Branch if Not Equal) → desvia se os dois registradores forem DIFERENTES.
Sintaxe: bne $reg1, $reg2, etiqueta
Exemplo: bne $8, $0, negativo → se $8 != 0, pula para negativo

SLT (Set on Less Than) → coloca 1 no registrador de destino se o primeiro for MENOR que o segundo, senão coloca 0.
Sintaxe: slt $dest, $reg1, $reg2
Exemplo: slt $9, $8, $0 → se $8 < 0 então $9 = 1, senão $9 = 0


---

<div align="center">
<h4>Exemplo prático — Verifica se número é positivo ou negativo</h4>
</div>

```assembly
.text
main:
    # --- Lê um número ---
    addi $2, $0, 5       # syscall 5 (ler inteiro)
    syscall
    add $8, $0, $2        # guarda o número em $8

    # --- Testa se é negativo ---
    slt $9, $8, $0        # se $8 < 0 → $9 = 1
    bne $9, $0, negativo  # se $9 != 0 → pula pra "negativo"

# --- Caso positivo ---
positivo:
    addi $4, $0, 'P'      # imprime 'P' (positivo)
    addi $2, $0, 11
    syscall
    j fim

# --- Caso negativo ---
negativo:
    addi $4, $0, 'N'      # imprime 'N' (negativo)
    addi $2, $0, 11
    syscall

# --- Fim ---
fim:
    addi $2, $0, 10       # syscall 10 (encerrar)
    syscall

```
