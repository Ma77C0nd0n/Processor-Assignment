# Comp30080 - Assignment 5
# Student No. 13523107
	.data # data goes in data segment
Stu: 	.word 1,3,3,6,3,4,7,5 # individual digits are stored in word
	.text
	.globl main 
main:	la $t0, Stu

Loop:	lw $t1, 0($t0)		# 00 01 10 01 = 0x18
	addi $t0, $t0, 04	# 10 01 01 01 = 0x95 (01 added for circuit)
	lw $t2, 0($t0)		# 00 01 11 00 = 0x1C
	add $t2, $t1, $t2	# 11 10 11 11 = 0xEF
	addi $t0, $t0, 04	# 10 01 01 01 = 0x95
	lw $t1, 0($t0)		# 00 01 10 01 = 0x18
	add $t2, $t1, $t2	# 11 10 11 11 = 0xEF
	addi $t0, $t0, 04	# 10 01 01 01 = 0x95
	lw $t1, 0($t0)		# 00 01 10 01 = 0x18
	add $t2, $t1, $t2	# 11 10 11 11 = 0xEF
	addi $t0, $t0, 04	# 10 01 01 01 = 0x95
	lw $t1, 0($t0)		# 00 01 10 01 = 0x18
	add $t2, $t1, $t2	# 11 10 11 11 = 0xEF
	addi $t0, $t0, 04	# 10 01 01 01 = 0x95
	lw $t1, 0($t0)		# 00 01 10 01 = 0x18
	add $t2, $t1, $t2	# 11 10 11 11 = 0xEF
	addi $t0, $t0, 04	# 10 01 01 01 = 0x95
	lw $t1, 0($t0)		# 00 01 10 01 = 0x18
	add $t2, $t1, $t2	# 11 10 11 11 = 0xEF
	addi $t0, $t0, 04	# 10 01 01 01 = 0x95
	lw $t1, 0($t0)		# 00 01 10 00 = 0x18
	add $t2, $t1, $t2	# 11 10 11 11 = 0xEF
	addi $t0, $t0, 04	# 10 01 01 01 = 0x95
	
  	sw $t2, 0($t0)		# 01 01	11 00 = 0x5C
	li $v0, 10
	syscall 
