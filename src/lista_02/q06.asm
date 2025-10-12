.text
main:
    # Ler idade
    addi $2, $0, 5
    syscall
    add $8, $0, $2      # idade em $8

    # Ler tempo de serviço
    addi $2, $0, 5
    syscall
    add $9, $0, $2      # tempo em $9

    # Verifica idade >= 65
    addi $10, $0, 65
    slt $11, $8, $10    # se idade < 65 → $11=1
    beq $11, $0, pode   # se idade >= 65 → pode

    # Verifica tempo >= 40
    addi $10, $0, 40
    slt $11, $9, $10
    beq $11, $0, pode   # se tempo >= 40 → pode

    # Verifica idade >= 60 e tempo > 35
    addi $10, $0, 60
    slt $11, $8, $10    # se idade < 60 → $11=1
    bne $11, $0, nao    # se idade < 60 → não pode

    addi $10, $0, 35
    slt $11, $10, $9    # se 35 < tempo → $11=1
    beq $11, $0, nao    # se tempo <= 35 → não pode

pode:
    addi $4, $0, 83     # 'S'
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
