;Καταχωρητές (registers)
;$s0, $s1, …, $s7  => αποθηκεύουν µεταβλητές
;$t0, $t1, …, $t9  => αποθηκεύουν προσωρινές τιµές

;∆εν υπάρχει άµεση αφαίρεση
;Απλά χρησιµοποιούµε αρνητική σταθερά

addi $s2, $s1, -1 ; $s2 = $s1 + (-1)