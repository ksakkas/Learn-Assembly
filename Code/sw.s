;Καταχωρητές (registers)
;$s0, $s1, …, $s7  => αποθηκεύουν µεταβλητές
;$t0, $t1, …, $t9  => αποθηκεύουν προσωρινές τιµές

sw $t0, 8($s2) ; $t0 = T[$s2 + 8]

;Αποθηκεύουμε στον $t0 την τιμή T[$s2+8]