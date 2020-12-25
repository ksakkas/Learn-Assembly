.data

msg: .asciiz "Enter a string: "
size: .space 32
bln: .asciiz "\n"
yes: .asciiz "Yes, a palindrome"
no: .asciiz "No, not a palindrome"

.text

main:
	li $v0, 4				# Άμεση φόρτωση στο καταχωρητή $v0 την τιμή 4 (syscall για print-string)
	la $a0, msg             # Φόρτωση της διέυθυνσης του msg στο καταχωρητή $a0 (argument to print_string call)
	syscall					# Κλήση syscall
	
	la $a0, size			# Φόρτωση της διέυθυνσης του size στο καταχωρητή $a0 (argument to print_string call)
	li $a1, 32				# Άμεση φόρτωση στο καταχωρητή $a1 την τιμή 32
	li $v0, 8				# Άμεση φόρτωση στο καταχωρητή $v0 την τιμή 8 (syscall για read-string)
	syscall					# Κλήση syscall

	li $v0, 4				# Άμεση φόρτωση στο καταχωρητή $v0 την τιμή 4 (syscall για print-string)
	la $a0, size			# Φόρτωση της διέυθυνσης του size στο καταχωρητή $a0 (argument to print_string call)
	syscall					# Κλήση syscall
	lb $t5, bln				# Φόρτωση ενός byte απο την ετικέτα bln

	add $t1, $a0, $zero 	# Πρόσθεση του $a0 με το 0 και αποθήκευση στο $t1
	
	sizezero:
		lb $t3, ($t1)			# Φόρτωση ενός byte απο το $t1
		addi $t1, $t1, 1		# Άμεση Πρόσθεση στο καταχωρητή $t1 τον καταχωρητή $t1 + 1
		beq $t3, $t5, done 		# Αυτό το βήμα απαιτείται καθώς το MIPS διαβάζει νέα γραμμή μετά από συμβολοσειρά	
		bne $t3, $zero, sizezero # Aν τιμή του καταχ. $t3 δεν είναι ίση με την τιμή του 0, πήγαινε στην ετικέτα sizezero
	
	done:
	addi $t1, $t1, -2			# Άμεση Πρόσθεση στο καταχωρητή $t1 τον καταχωρητή $t1 - 2
	add $t0, $a0, $zero			# Πρόσθεση του $a0 με το 0 και αποθήκευση στο $t0
	
	cle:
		lb $t2, ($t0)			# Φόρτωση ενός byte απο το $t0
		lb $t3, ($t1)			# Φόρτωση ενός byte απο το $t1
		bne $t2, $t3, nopal		# Aν τιμή του καταχ. $t2 δεν είναι ίση με την τιμή του $t3, πήγαινε στην ετικέτα nopal
		addi $t0, $t0, 1		# Άμεση Πρόσθεση στο καταχωρητή $t0 τον καταχωρητή $t0 + 1		
		addi $t1, $t1, -1		# Άμεση Πρόσθεση στο καταχωρητή $t1 τον καταχωρητή $t1 - 1
		blt $t0, $t1, cle		# Αν το $t0 <= $t1 πήγαινε στο cle

	li $v0, 4					# Άμεση φόρτωση στο καταχωρητή $v0 την τιμή 4 (syscall για print-string)
	la $a0, yes					# Φόρτωση της διέυθυνσης του yes στο καταχωρητή $a0 (argument to print_string call)
	syscall						# Κλήση syscall
	j end						# jump στην ετικέτα end

	nopal:
		li $v0, 4				# Άμεση φόρτωση στο καταχωρητή $v0 την τιμή 4 (syscall για print-string)
		la $a0, no				# Φόρτωση της διέυθυνσης του yes στο καταχωρητή $a0 (argument to print_string call)
		syscall					# Κλήση syscall
	
	end:
	li $v0, 10					# Άμεση φόρτωση στο καταχωρητή $v0 την τιμή 10 (syscall για exit)
	syscall						# Κλήση syscall