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

# O programa termina aqui implicitamente