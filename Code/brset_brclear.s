;Οι εντολές BRSET (BRanch if n bit SET)  BRSET (BRanch if n bit CLeaR)
;Σύνταξη
;BRSET	n,“καταχωρητής”,“Ετικέτα”  
;BRCLR	n,“καταχωρητής”,“Ετικέτα”
;Ανήκουν στην κατηγορία των εντολών  που αλλάζουν τη ροή του προγράµµατος, 
;µεταπηδώντας σε  κάποιο άλλο, αφού πρώτα επαληθευτεί η ισχύς µιας συνθήκης 
;(το n bit του καταχωρητή = “1” ή “0”).

BRSET	0, PORTC.DATA, KeyNotInserted  
BRSET	0, PORTC.DATA, KeyInserted
