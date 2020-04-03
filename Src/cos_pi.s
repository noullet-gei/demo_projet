; ce programme est pour l'assembleur RealView (Keil)
	thumb
	area  moncode, code, readonly
;
	import	TabCos
	export cos_pi

pisur2	equ	(1<<7)
pi	equ	(1<<8)

; cette fonction rend le cosinus d'un angle compris entre 0 et pi (inclus)
; en utilisant une table construite pour les angles de 0 a pi/2 (inclus)
; ----- format d'entree -----
; l'angle est exprime par un nombre t.q. 2pi <==> 1<<9
; En prenant le tour comme unite d'angle, on peut dire que l'angle
; est exprime en format virgule fixe Q9 ou 23.9  
; ----- format de sortie -----
; le cosinus est rendu en virgule fixe sur 32 bits signes
; en format virgule fixe Q15 ou 17.15 

cos_pi	proc
	ldr	r3, =TabCos
	cmp	r0, #pisur2
	bls	quad1
	rsb	r0, r0, #pi	; soustraction inversee : r0 = pi - r0
	ldrh	r0, [r3, r0, lsl #1]
        rsb	r0, r0, #0      ; r0 = 0 - r0
        bx      lr

quad1	ldrh	r0, [r3, r0, lsl #1]
	bx	lr

	endp

	end
