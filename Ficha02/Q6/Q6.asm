lb x27, 0(x0)
lb x30, 0(x0)
lb x9, 0(x0)
lb x18, 0(x0)
lb x19, 0(x0)
lb x20, 0(x0)
lb x21, 0(x0)
lb x22, 0(x0)
lb x23, 0(x0)
lb x24, 0(x0)
lb x25, 0(x0)
lb x26, 0(x0)
lb x5, 1025(x0)
lb x6, 1025(x0)
lb x7, 1025(x0)
lb x28, 1025(x0)

addi x27, x27, 1
addi x30, x30, 48

addi x9, x9, 63
addi x18, x18, 6
addi x19, x19, 27
addi x20, x20, 15
addi x21, x21, 38
addi x22, x22, 45
addi x23, x23, 61
addi x24, x24, 7
addi x25, x25, 63
addi x26, x26, 47

bne x5, x30, jump4 
bne x6, x30, jump3 
bne x7, x30, jump2 
bne x28, x30, jump1 
sb x9, 1029(x0) 
sb x0, 1027(x0)
beq x0, x0, fim

jump1: 
    sb x18, 1029(x0) 
    sb x0, 1027(x0)
    beq x0, x0, fim

jump2:
    bne x28, x30, jump21 
    sb x19, 1029(x0) 
    sb x27, 1027(x0)
    beq x0, x0, fim
jump21: 
    sb x20, 1029(x0)
    sb x27, 1027(x0)
    beq x0, x0, fim 

jump3:
    bne x7, x30, jump32 
    bne x28, x30, jump31 
    sb x21, 1029(x0)
    sb x27, 1027(x0) 
    beq x0, x0, fim
jump31:
    sb x22, 1029(x0)
    sb x27, 1027(x0) 
    beq x0, x0, fim
jump32:
    bne x28, x30, jump321 
    sb x23, 1029(x0) 
    sb x27, 1027(x0)
    beq x0, x0, fim
jump321:
    sb x24, 1029(x0)
    sb x0, 1027(x0)
    beq x0, x0, fim

jump4:
    bne x6, x30, jump42 
    bne x7, x30, fim 
    bne x28, x30, jump41 
    sb x25, 1029(x0)
    sb x27, 1027(x0) 
    beq x0, x0, fim
jump41:
    sb x26, 1029(x0)
    sb x27, 1027(x0) 
    beq x0, x0, fim
jump42:
    sb x0, 1029(x0)
    sb x0, 1027(x0) 

fim:
    halt
