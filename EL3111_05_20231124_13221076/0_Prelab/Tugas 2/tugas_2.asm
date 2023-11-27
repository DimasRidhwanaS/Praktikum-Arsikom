.text
.globl main
.ent main
main:
 addi $s0, $0, 19
 addi $s1, $0, 21
 bne $s2, $s3, jumpbne
 nop
 j jumpbne
jumpbne:
 sub $s3, $s0, $s1
 addi $s3, $s3, 0
 addi $s4, $s0, 4
 sw $s1, ($s4)
 lw $s5, ($s4)
 add $s5, $s5, $0
 j end
 nop
end:
 li $v0, 10
 syscall
 