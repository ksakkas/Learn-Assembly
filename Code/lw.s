;Καταχωρητές (registers)
;$s0, $s1, …, $s7  => αποθηκεύουν µεταβλητές
;$t0, $t1, …, $t9  => αποθηκεύουν προσωρινές τιµές

lw $t1, 4($s2) ; $t1 = $s2 + 4

;lw = load word, φορτώνουμε στον $t1 την τιμή M[$s2+4]


;ο MIPS πρέπει:
;να διαβάζει δεδοµένα από τη µνήµη
;να τα αποθηκεύει σε καταχωρητήες
;να εκτελεί αριθµητικές πράξεις µεταξύ καταχωρητών
;να αποθηκεύει το αποτέλεσµα πίσω στη µνήµη