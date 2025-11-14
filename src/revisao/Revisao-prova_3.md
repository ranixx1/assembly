# 📘  Resumão

Este documento reúne **todos os comandos essenciais**, explicados de forma prática, clara e com exemplos reais exatamente como você está usando nos exercícios.

---

# 🧱 1. MEMÓRIA E ENDEREÇAMENTO

## ✔ `lui` — Load Upper Immediate
Carrega um valor nos **16 bits superiores** do registrador.

```asm
lui $10, 0x1001
```

Resultado:

```
$10 = 0x10010000
```

---

## ✔ `sw` — Store Word
Guarda um valor da CPU na memória.

```asm
sw $2, 0($10)
```

---

## ✔ `lw` — Load Word
Carrega um valor da memória para um registrador.

```asm
lw $4, 12($10)
```

---

## 📌 Como acessar posições do vetor

Cada inteiro ocupa **4 bytes**.

---

# 🔁 2. DESVIOS E COMPARAÇÕES

## ✔ `beq` — Branch if Equal
```asm
beq $8, $0, fim
```

## ✔ `bne` — Branch if Not Equal
```asm
bne $5, $6, volta
```

## ✔ `slt` — Set Less Than
```asm
slt $3, $A, $B
```

---

# 🧮 3. SYScalls úteis

| Código | Ação |
|--------|-------|
| 1      | imprimir inteiro |
| 5      | ler inteiro |
| 11     | imprimir caractere |
| 10     | encerrar programa |

---

# 🧾 4. LOOP DE LEITURA

```asm
.text
main:
    lui $10, 0x1001
    addi $8, $0, 8

loop_leitura:
    beq $8, $0, fim_leitura

    addi $2, $0, 5
    syscall

    sw  $2, 0($10)

    addi $10, $10, 4
    addi $8,  $8, -1
    j loop_leitura

fim_leitura:
```

---

# 🔎 5. ACESSAR UMA POSIÇÃO POR ÍNDICE

```asm
lui $10, 0x1001
sll $11, $15, 2
add $11, $11, $10
lw  $12, 0($11)
```
