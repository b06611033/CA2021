.globl __start

.rodata
    divide_by_zero: .string "divide by zero"
    JumpTable: .word L0, L1, L2, L3, L4, L5

.text
__start:
    # Read first operand
    li a0, 5
    ecall
    mv s0, a0
    # Read operation
    li a0, 5
    ecall
    mv s1, a0
    # Read second operand
    li a0, 5
    ecall
    mv s2, a0

###################################
#  TODO: Develop your calculator  #
#                                 #
###################################


.text
slt x5, x9, x0 # Test if k <0
bne x5, x0, exit # if k<0, go to Exit
slti x5, x9, 6 # Test if k<6
beq x5, x0, exit # if k>=6, go to Exit
la x28, JumpTable # x28 = Addr of JumpTable[0]
slli x5, x9, 2 # index
add x6, x5, x28 # x6 = Addr of JumpTable[k]
lw x7, 0(x6) # x7 = JumpTable[k]
jr x7 # jump based on register x7
L0: add x19, x8, x18
j exit
L1: sub x19, x8, x18
j exit
L2: mul x19, x8, x18
j exit
L3: beq x18, x0, zero_except
div x19, x8, x18
j exit
L4:
addi x19, x0, 1 
Loop:mul x19,x19,x8
addi x24,x24,1
beq x18,x24, exit 
beq x0, x0, Loop
L5: 
add x24, x0, x8
addi x19, x0, 1
Loop1:mul x19, x19, x24
addi x24, x24, -1
beq x24, x0, exit
beq x0, x0, Loop1



     

exit:
    # Output the result
    li a0, 1
    mv a1, s3
    ecall
    # Exit program(necessary)
    li a0, 10
    ecall

zero_except:
    # Divide by zero exception
    li a0, 4
    la a1, divide_by_zero
    ecall
    # Exit the program(necessary)
    li a0, 10
    ecall
