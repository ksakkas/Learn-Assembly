;Η εντολή LDX (LoaD IndeX)
;Σύνταξη
;LDX “Αριθµός”
;LDX “Περιεχόµενο διεύθυνσης”
;Μεταφέρει στον IndeX έναν αριθµό ή το  περιεχόµενο µιας διεύθυνσης

LDX #%11111111
LDX PORTD.DATA

;%	∆υαδικό σύστηµα
;$	∆εκαεξαδικό σύστηµα
;!	∆εκαδικό σύστηµα
;‘’	ASCII