;Καταχωρητές (registers)
;$s0, $s1, …, $s7  => αποθηκεύουν µεταβλητές
;$t0, $t1, …, $t9  => αποθηκεύουν προσωρινές τιµές

;Κώδικας C
;x = T[2] + a;
;x = $s1
;T[2] = η δνση βάσης του T = $s2
;a = $s3

;ΠΡΟΣΟΧΗ: offset(μετατόπιση) = 4 byte ανά λέξη
;Τ[2] άρα 4*2 = 8

lw $t0, 8($s2) ;$t0 = $s2 + 8
add $s1, $t0, $s3 ;$s1 = $t0 + $s3

