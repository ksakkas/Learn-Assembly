	.data
		message: .asciiz "...and the result is: "
	.text
	.globl main

main:
	la $4, message			# $a0 = $4 
	li $2, 4				# $v0 = $2
	syscall
	nop
	
	addi $20, $20, 1			# $s4 = 20
	addi $17, $17, 1			# $s1 = 17
	
loop: 
	slti $18, $17, 10		# $s2 = $s1 < 10
	beq $18, $0, end_lop	# $s2 == 0 --> end_lop
	mul $20, $20, $17		# $s4 = $s4 * $s1
	addi $17, $17, 1			# $s1 = $s1 + 1
	j loop					# jump to loop
	nop

end_lop:					 
	li $2, 1					# $v0 = $2
	move $4, $20				# $a0 = $s4
	syscall
	
_exit:
	li $2, 10				# $v0 = $2
	syscall