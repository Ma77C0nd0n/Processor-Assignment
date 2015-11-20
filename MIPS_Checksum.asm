# Comp30080 - Assignment 5
# Student No. 13523107
	.data # data goes in data segment
Stu: 	.word 1,3,5,2,3,1,0,7 # individual digits are stored in word
Res:	.word 0
	.text
	.globl main 
main:	la $s0, Stu
	li $s1, 0
	li $t1, 8
		
Loop:	lw $s2, 0($s0)
	add $s1, $s2, $s1
	addi $s0, $s0, 4
	addi $t1, $t1, -1
	bne $t1, $zero, Loop
	
  	la $t2, Res
  	sw $s1, 0($t2)			# store total at Res
	li $v0, 10 			# system call for exit
	syscall 			# Exit!
