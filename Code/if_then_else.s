;Μεταγλώττιση if-then-else
;if (i == j) f = g + h;  else f = g – h;
;f, g, h, i, j αντιστοιχούν στους $s0, $s1, $s2, $s3, $s4

    bne $s3,$s4,Else    ; πήγαινε στο Else αν i ≠ j
    add $s0,$s1,$s2	    ; f = g + h (παραλείπεται 
                        ; αν i ≠ j)
    j Exit	            ; µετάβαση στην Exit
Else: sub $s0,$s1,$s2	; f = g – h
                        ;(παραλείπεται αν i = j)
Exit:
