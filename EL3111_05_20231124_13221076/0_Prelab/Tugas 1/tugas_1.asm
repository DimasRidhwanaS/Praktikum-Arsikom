.data
    sum: .word 0       # Initialize sum variable in data segment

.text
    .globl main

main:
    li $s0, 0          # Initialize sum = 0
    li $s1, 0          # Initialize i = 0

loop:
    beq $s1, 10, end_loop  # Exit loop when i == 10

    addi $s0, $s0, 1   # sum = sum + 1
    addi $s1, $s1, 1   # i = i + 1
    nop                # No operation

    j loop             # Jump back to loop
    nop                # No operation after branch

end_loop:
    # Code after the loop ends (if any)
