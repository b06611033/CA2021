# Description #
In this homework, you are going to use Jupiter RISC-V simulator to develop a\
simple calculator which supports six operations, addition, subtraction, multiplication,\
integer division, power and factorial.
# Requirement #
The calculator should support the following operations: +, −, ×, /, ^, ! .
>
**Input format:**\
𝐴\
𝑜p\
𝐵\
**Output format:**\
[Result]
>
0 ≤ 𝐴𝐴, 𝐵𝐵 ≤ 1024, o𝑝𝑝 ∈ {0, 1, 2, 3, 4, 5}
If 𝑜p = 0, calculate 𝐴 + 𝐵 and output the result.\
If 𝑜p = 1, calculate 𝐴 − 𝐵 and output the result.\
If 𝑜p = 2, calculate 𝐴 × 𝐵 and output the result.\
If 𝑜p = 3, calculate 𝐴 / 𝐵 and output the result(Quotient).\
If 𝑜p = 4, calculate 𝐴^B and output the result.\
If 𝑜p = 5, calculate 𝐴! and output the result. (In this case, 𝐵 = 0)\
If divided by zero,the program should print "𝑑ivided by zero".\
(Don’t worry about overflow or underflow.)
>
**Input**\
Every input file has three lines. The first line contains an integer 𝐴, the second\
line contains an integer 𝑜p, the third line contains an integer 𝐵, which represent the\ 
first operand, the operation the calculator is going to do, and the second operand.\
**Output**\
The output should contain only one integer, that is the result of the input equation.
