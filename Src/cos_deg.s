; ce programme est pour l'assembleur RealView (Keil)
	thumb
	area  moncode, code, readonly
;
	import	cos_q15
	export	cos_deg

; cette fonction rend le cosinus d'un angle exprime en milliemes de degre
; ----- format d'entree -----
; l'angle est exprime par un nombre signe t.q. 2pi <==> 360000
; ----- format de sortie -----
; le cosinus est rendu en virgule fixe sur 32 bits signes
; en format virgule fixe Q15 ou 17.15 

cos_deg	proc
	push	{lr}
	ldr	r1, =390937468
	smull	r1, r0, r1, r0
	bl	cos_q15
fin	pop	{pc}
	endp
	end
