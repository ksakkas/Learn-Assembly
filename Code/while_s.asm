# main () {
# int i,s;
# s=0;
# while (s<10) {
# printf ("Input a number: ");
# scanf ("%d",i)
# s=s+i;
# }
# } 	


      
      .data
		msg1: .asciiz "Input a number: "
		value: .word 0
		
	.text						# Μέρος text προγράμματος
	.globl main					# Κύριο πρόγραμμα

main:
	la $t3, value
	addi $t0, $t0, 0			# Αρχικοποίηση i (:t0) με 1		
	addi $t1, $t1, 0			# Αρχικοποίηση s (:t1) με 0
	addi $t4, $t4, 0

while:
	slti $t2, $t1, 10			# Το $t1 τίθεται ίσος µε 1 αν η τιµή στον  καταχωρητή $t0 είναι µικρότερη από την τιµή 11, αλλιώς ο καταχωρητής $t1 τίθεται ίσος µε 0
	beq $t2, $t4, end				# Aν τιμή του καταχ. $t1 ίση με την τιμή του καταχ. $s1, πήγαινε στην ετικέτα end

	li $v0, 4   			# Άμεση φόρτωση στο καταχωρητή $v0 την τιμή 4 (syscall για print_string) = \n
	la $a0, msg1  			# Φόρτωση της διέυθυνσης του msg1 στο καταχωρητή $a0 (argument to print_string call)
	syscall  				# Κλήση syscall
	
	li $v0, 5	  				# Άμεση φόρτωση στο καταχωρητή $v0 την τιμή 5 (syscall για read_int)
	syscall		  				# Κλήση syscall
	move $t0, $v0
	
	add $t1, $t1, $t0            # s = s + i
	
	j while
	
end:
	li  $v0, 10 				# Άμεση φόρτωση στο καταχωρητή $v0 την τιμή 10 (syscall για exit)
	syscall	 					# Κλήση syscall
