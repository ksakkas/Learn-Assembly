; C to Assembly
; f = (a + b) - c
; f = $s0
; a = $s1
; b = $s2
; c = $s3

;Καταχωρητές (registers)
;$s0, $s1, …, $s7  => αποθηκεύουν µεταβλητές
;$t0, $t1, …, $t9  => αποθηκεύουν προσωρινές τιµές

add $t0, $s1, $s2 ; $t0 = $s1 + $s2
sub $s0, $t0, $s3 ; $s0 = $t0 + $s3