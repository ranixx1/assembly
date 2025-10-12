

## 📥 Leitura de números

Para **ler um número inteiro** do teclado:

```asm
addi $2, $0, 5   # Código de serviço para leitura (5)
syscall           # Executa o serviço
add  $8, $0, $2   # Copia o valor lido de $2 para $8
```

> O valor digitado fica em `$2` depois do `syscall`, então você o move para outro registrador (ex: `$8`).

---

## 🖨️ Impressão de números

Para **imprimir um número inteiro**:

```asm
add  $4, $0, $8   # Coloca o valor que será impresso em $4
addi $2, $0, 1    # Código de serviço para imprimir inteiro (1)
syscall
```

---

## 🔤 Impressão de caractere (como 'S' ou 'N')

Para **imprimir um caractere (como S ou N)**:

```asm
addi $4, $0, 'S'  # Coloca o caractere em $4
addi $2, $0, 11   # Código de serviço para imprimir caractere (11)
syscall
```

> Você também pode usar `'N'`, `'>'`, `'<'`, `'='`, `'+'`, `'-'`, etc.

---

## ⚙️ Comparações básicas

### ✅ `slt` — Set Less Than
Compara dois valores:
```asm
slt $10, $8, $9   # $10 = 1 se $8 < $9, senão $10 = 0
```

### ✅ `beq` — Branch if Equal
Salta se dois registradores forem iguais:
```asm
beq $8, $9, rotulo
```

### ✅ `bne` — Branch if Not Equal
Salta se forem diferentes:
```asm
bne $8, $9, rotulo
```

---

## 🔁 Estrutura de decisão (if / else)

Exemplo: verificar se `$8` é maior que `$9`.

```asm
slt $10, $9, $8   # $10 = 1 se $9 < $8  (ou seja, $8 > $9)
beq $10, $0, menor
j maior

maior:
  addi $4, $0, '>'
  addi $2, $0, 11
  syscall
  j fim

menor:
  addi $4, $0, '<'
  addi $2, $0, 11
  syscall

fim:
```

---

## 🧮 Operações úteis

| Operação | Exemplo | Descrição |
|-----------|----------|------------|
| `add` | `add $8, $9, $10` | Soma |
| `sub` | `sub $8, $9, $10` | Subtração |
| `mul` | `mul $8, $9, $10` | Multiplicação |
| `div` | `div $8, $9` | Divide $8 / $9 |
| `mflo $t0` | | Pega o quociente |
| `mfhi $t1` | | Pega o resto |

---

## 🧩 Estrutura geral do programa

```asm
.text
main:
    # Leitura de números
    addi $2, $0, 5
    syscall
    add  $8, $0, $2

    addi $2, $0, 5
    syscall
    add  $9, $0, $2

    # Lógica principal (comparações, cálculos...)

    # Impressão de resultado

    # Encerrar programa
    addi $2, $0, 10
    syscall
```

---

## 💡 Dicas finais

- Sempre use **registradores de trabalho** como `$8`, `$9`, `$10`, `$11` etc.
- **Evite `li` e `move`**, use `addi` e `add` no lugar.
- Para testar condições: use `slt`, depois `beq` ou `bne`.
- Para imprimir caracteres (como respostas), use o código de serviço **11**.
- Para imprimir números, use o serviço **1**.
- Para ler números, use o serviço **5**.

---

