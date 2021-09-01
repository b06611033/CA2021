.globl __start
__start:

addi x10, x0, 5
ecall                 # read the input to x10

addi x31, x0, 1 
addi x30, x0, 2 
addi x12 , x0, 5


jal x1, value_check
jal x0, result

value_check:
   bge x10, x30, recurence_func
   addi x8, x0, 1
   jalr x0,0(x1)

recurence_func:
   addi sp, sp, -24
   sw   x1, 16(sp)
   sw   x10, 8(sp)        #save n
   addi x10, x10, -100
   jal x1,value_check
   lw x10, 8(sp)
   
   sw x8, 0(sp)          #save retval T(n-100)
   
   divu x10, x10, x30
   jal x1, value_check
   
   lw x5, 0(sp)       #restore retval T(n-100)
   mul x8, x8, x30
   
   addi x5, x5, 5
   add x8, x5, x8
   
   lw x1, 16(sp)
   addi sp, sp, 24 
   jalr x0,0(x1)

   
   
    

result:     
    addi x10, x0, 1  # Prints the result in x8
    add x11, x0, x8
    ecall
    
    addi a0, x0, 10  # Ends the program with status code 0
    ecall
