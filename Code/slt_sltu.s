;Προσηµασµένοι vs. απρόσηµοι
;Παράδειγµα
;$s0 = 1111 1111 1111 1111 1111 1111 1111 1111
;$s1 = 0000 0000 0000 0000 0000 0000 0000 0001

slt	$t0, $s0, $s1	; signed –1 < +1 ⇒ $t0 = 1

sltu $t0, $s0, $s1	; unsigned +4,294,967,295 > +1 ⇒ $t0 = 0
