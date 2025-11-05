.data
.word 32 #0x1001000
.word 37 #0x1001004
.word 2 #0x1001008
.word 3 #0x100100c
.word 1 #0x1001010

.text
main: addi $2,$0,5
      syscall


      lui $8, 0x1001 # $8 <= 0x10010000
      sw $2,0($8)
      sw $2, 4($8)

      lw $4, 12($8)

      addi $2,$0,1
      syscall

      addi $2,$0,10
      syscall