.text
main:
    # Ler a
    addi $2, $0, 5
    syscall
    add $8, $0, $2

    # Ler b
    addi $2, $0, 5
    syscall
    add $9, $0, $2

    # Ler c
    addi $2, $0, 5
    syscall
    add $10, $0, $2

    # Verifica (a<b)
    slt $11, $8, $9     # $11=1 se a<b

    # Verifica (b>c)
    slt $12, $10, $9    # $12=1 se b>c

    # Pico positivo se $11=1 e $12=1
    beq $11, $0, check_neg
    beq $12, $0, check_neg
    # P+
    addi $4, $0, 80     # 'P'
    addi $2, $0, 11
    syscall
    addi $4, $0, 43     # '+'
    addi $2, $0, 11
    syscall
    j fim

check_neg:
    # Verifica (a>b)
    slt $11, $9, $8     # $11=1 se a>b
    # Verifica (b<c)
    slt $12, $9, $10    # $12=1 se b<c
    beq $11, $0, nao
    beq $12, $0, nao
    # P-
    addi $4, $0, 80     # 'P'
    addi $2, $0, 11
    syscall
    addi $4, $0, 45     # '-'
    addi $2, $0, 11
    syscall
    j fim

nao:
    addi $4, $0, 78     # 'N'
    addi $2, $0, 11
    syscall

fim:
    addi $2, $0, 10
    syscall
