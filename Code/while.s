;Μεταγλώττιση while loop
;While (save[i] == k)
; i += 1;
;i = $s3
;k = $s5
;save = $s6

Loop: sll $t1, $s3, 2 ;$t1 = 4 * i
    add $t1, $t1, $s6 ;$t1 = διευθ. save[i]
    lw $t0, 0($t1) ;$t0 = save[i]
    bne $t0, $s5, Exit ;μετάβαση στο Exit αν save[i] != k
    addi $s3, $s3 , 1 ;i=i+1
    j Loop ;πήγαινε στο Loop

Exit: