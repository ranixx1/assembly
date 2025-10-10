# se numero > 0, imprime o dobro
# se numero < 0, imprime o quadrado

.text
main:
    # --- lê o número ---
    addi $2, $0, 5       
    syscall
    add $8, $0, $2       

    # --- testa se é negativo ---
    slt $9, $8, $0        # se $8 < 0 então $9 = 1, senão $9 = 0
    beq $9, $0, positivo  # se $9 == 0, número é positivo → vai pra "positivo"

# --- se for negativo ---
negativo:
    mult $8, $8           
    mflo $10              
    add $4, $0, $10       
    j imp
    j fim                 # vai pro fim

# --- se for positivo ---
positivo:
    add $10, $8, $8       # soma ele com ele mesmo (dobro)
    add $4, $0, $10       
    j imp

imp: addi $2,$0,1
     syscall
     
# --- fim do programa ---
fim:
    addi $2, $0, 10       
    syscall
