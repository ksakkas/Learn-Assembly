# main () {
# int i;
# printf ("Input a number: ");
# scanf ("%d",i)
# if (i%2==0)
# printf ("your number is: 2*%d\n",i/2);
# else
# printf ("your number is: 2*%d+1\n",i/2);
# }

     
     .data
		msg1: .asciiz "Input a number: "
		msg2: .asciiz "your number is: 2*"
		msg3: .asciiz "your number is: 2* "
		el: .asciiz "\n"
		msg3s: .asciiz "+1"
		value: .word 0
		
	.text						# Μέρος text προγράμματος
	.globl main					# Κύριο πρόγραμμα

main:
	la $t2, value
	addi $t0, $t0, 1			# Αρχικοποίηση i (:t0) με 1		
	addi $s1, $s1, 2			# Αρχικοποίηση $s1 με 2
	
	li $v0, 4   				# Άμεση φόρτωση στο καταχωρητή $v0 την τιμή 4 (syscall για print_string)
	la $a0, msg1  				# Φόρτωση της διέυθυνσης του msg1 στο καταχωρητή $a0 (argument to print_string call)
	syscall  					# Κλήση syscall
	
	li $v0, 5	  				# Άμεση φόρτωση στο καταχωρητή $v0 την τιμή 5 (syscall για read_int)
	syscall		  				# Κλήση syscall
	sw $v0, 0($t2)				# Αποθήκευση του περιεχομένου του καταχωρητή $v0 στην θέση 0 του καταχωρητή $t0
	lw $t0, 0($t2)  			# Φόρτωση των δεδομένων απο την θέση 0 του καταχωρητή $t0 και αποθήκευση αυτου στον καταχωρητή $t1

	div $t0, $s1				# Διαίρεση μεταξύ i και 2
	mfhi $t1					# Mε το mfhi παίρνουμε το υπόλοιπο (mod)
	
	bne $t1,0,else				# Ελέγχουμε αν το $t1 είναι διαφορετικό απο το 0, τοτε πάει στην ετικέτα else
	
	div $t0, $s1				# Διαίρεση μεταξύ i και 2
	mflo $t2					# Mε το mflo παίρνουμε το πηλίκο
	
	li $v0, 4   				# Άμεση φόρτωση στο καταχωρητή $v0 την τιμή 4 (syscall για print_string)
	la $a0, msg2  				# Φόρτωση της διέυθυνσης του msg1 στο καταχωρητή $a0 (argument to print_string call)
	syscall 

	li $v0, 1	  			# Άμεση φόρτωση στο καταχωρητή $v0 την τιμή 1 (syscall για print_int)	
	move $a0, $t2			# Φόρτωση στο καταχωρητή $a0 το περιεχόμενο του $t3
	syscall
	
	li $v0, 4   				# Άμεση φόρτωση στο καταχωρητή $v0 την τιμή 4 (syscall για print_string)
	la $a0, el  				# Φόρτωση της διέυθυνσης του msg1 στο καταχωρητή $a0 (argument to print_string call)
	syscall 
	j skip						# Μεταπήδηση στην ετικέτα skip
	
else:
	div $t0, $s1 				# Διαίρεση μεταξύ i και 2
	mflo $t2					# Mε το mflo παίρνουμε το πηλίκο
	
	li $v0, 4   				# Άμεση φόρτωση στο καταχωρητή $v0 την τιμή 4 (syscall για print_string)
	la $a0, msg3  				# Φόρτωση της διέυθυνσης του msg1 στο καταχωρητή $a0 (argument to print_string call)
	syscall 

	li $v0, 1	  			# Άμεση φόρτωση στο καταχωρητή $v0 την τιμή 1 (syscall για print_int)	
	move $a0, $t2			# Φόρτωση στο καταχωρητή $a0 το περιεχόμενο του $t3
	syscall

	li $v0, 4   				# Άμεση φόρτωση στο καταχωρητή $v0 την τιμή 4 (syscall για print_string)
	la $a0, msg3s  				# Φόρτωση της διέυθυνσης του msg1 στο καταχωρητή $a0 (argument to print_string call)
	syscall
	
	li $v0, 4   				# Άμεση φόρτωση στο καταχωρητή $v0 την τιμή 4 (syscall για print_string)
	la $a0, el  				# Φόρτωση της διέυθυνσης του msg1 στο καταχωρητή $a0 (argument to print_string call)
	syscall 	
	
skip:
	li  $v0, 10 				# Άμεση φόρτωση στο καταχωρητή $v0 την τιμή 10 (syscall για exit)
	syscall	 					# Κλήση syscall