# Variables:
# $s1 - iterations counter
# $s4 - accumulator for sum
# $a0 - number of system service
 
	.data
		message: .asciiz "Result = "

	.text
	.globl main

main:
 la $4, message 			# $a0 <- start of welcome message
 li $v0, 4 					# $v0 <- service #4
 syscall 					# call to system service
 nop 						# not operation
 move $20, $zero 			# $s4 <- 0, initialize accumulator
 move $17, $0 				# $s1 <- 0, initialize iterations counter

# Next two instructions mean
#"While $s1 < 100 Do"

loop: slti $18, $17, 101 		# $s1 < 100 => $s2 <- 1
 beq $18, $0, end_lop 			# $s2 = 0 => go to end_loop
 add $20, $20, $17 				# $s4 <- $s4 + $s1, add number
 add $17, $17, 1 				# $s1 <- $s1 + 1, update counter of iterations
 j loop 						# go to loop
 nop
 
end_lop: move $4, $20 			# $a0 <- $s4, load result of sum
 li $v0,1 						# $v0 <- service #1 (data is already in $a0)
 syscall 						# call to system service

_exit: 							# main program exit
 li $v0,10 						# $v0 <- service #10
 syscall 						# call to system service
 nop