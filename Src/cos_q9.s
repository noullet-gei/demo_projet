; ce programme est pour l'assembleur RealView (Keil)
	thumb
	area  moncode, code, readonly
;
	import	cos_2pi
	export	cos_q9

pix2	equ	(1<<9)

; cette fonction rend le cosinus d'un angle arbitraire, positif ou negatif
; ----- format d'entree -----
; l'angle est exprime par un nombre t.q. 2pi <==> 1<<9
; En prenant le tour comme unite d'angle, on peut dire que l'angle
; est exprime en format virgule fixe Q9 ou 23.9  
; ----- format de sortie -----
; le cosinus est rendu en virgule fixe sur 32 bits signes
; en format virgule fixe Q15 ou 17.15 

cos_q9	proc
	push	{lr}
	mov	r2, #(pix2-1)
	and	r0, r2
	bl	cos_2pi
fin	pop	{pc}
	endp
	end