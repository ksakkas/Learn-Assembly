;Η εντολή DBNZ (Decrement & Branch if Not  Zero)
;Σύνταξη
;DBNZ “ADRRESS”, “Ετικέτα’’
;Μειώνει κατά 1 µονάδα το  περιεχόµενο µιας διεύθυνσης µνήµης και στέλνει 
;τη ροή του προγράµµατος σε µια ετικέτα  αν το αποτέλεσµα της µείωσης είναι ≠ 0

DBNZ $0040,LOOP  ;Μειώνει κατά 1 µονάδα το  περιεχόµενο της διεύθυνσης µνήµης, και στέλνει τη ροή του 
                 ;προγράµµατος στο counter αν το αποτέλεσµα της µείωσης είναι ≠ 0
DBNZ COUNTER,LOOP
