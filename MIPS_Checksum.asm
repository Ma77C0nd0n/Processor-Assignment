# Comp30080 - Assignment 5
# Student No. 13523107
	.data # data goes in data segment
Stu: 	.word 1,3,5,2,3,1,0,7 # individual digits are stored in word
	.text
	.globl main 
main:	la $t0, Stu

Loop:	lw $t1, 0($t0)		# 00 10 00 01 = 0x21
	add $t2, $t1, $t2	# 11 11 10 11 = 0xFB
	lw $t1, 4($t0)		# 00 
	add $t2, $t1, $t2
	lw $t1, 8($t0)		#
	add $t2, $t1, $t
	lw $t1, 12($t0)		#
	add $t2, $t1, $t2
	lw $t1, 16($t0)		#
	add $t2, $t1, $t2
	lw $t1, 20($t0)		#
	add $t2, $t1, $t2
	lw $t1, 24($t0)		#
	add $t2, $t1, $t2
	lw $t1, 28($t0)		#
	add $t2, $t1, $t2
	
  	sw $t2, 32($t0)		#		
	li $v0, 10
	syscall 
