.text
main:
    addi $2,$0,5
    syscall
    add $8, $0, $2     

    # resto 400
    addi $15,$0,400
    div $8,$15
    mfhi $9
    
    #resto 4
    addi $15,$0,4
    div $8,$15
    mfhi $10
    
    #resto 100
    addi $15,$0,100
    div $8,$15
    mfhi $11
    

    sub $12,$0,$9 #0-num
    srl $12,$12,31 #sinal(0-num)
    
    sub $13,$0,$10 #0-num
    srl $13,$13,31 #sinal(0-num)
    
    sub $14,$0,$11 #0-num
    srl $14,$14,31 #sinal(0-num)
    
    xori $15,$12,1 #inverte o valor de $12 e armazena no reg15
    xori $16,$13,1 
    
    and $18,$16,$14
    or $18,$18,$15
    
    addi $2, $0, 1
    add $4,$0,$18
    syscall

