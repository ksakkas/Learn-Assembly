;Η εντολή LDA (LoaD Accumulator)
;Σύνταξη
;LDA “Αριθµός”
;LDA “Περιεχόµενο διεύθυνσης”
;Μεταφέρει στον Accumulator έναν  αριθµό ή το περιεχόµενο µιας διεύθυνσης

LDA #%11111111
LDA PORTD.DATA

;%	∆υαδικό σύστηµα
;$	∆εκαεξαδικό σύστηµα
;!	∆εκαδικό σύστηµα
;‘’	ASCII