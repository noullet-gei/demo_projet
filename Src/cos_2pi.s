; ce programme est pour l'assembleur RealView (Keil)
	thumb
	area  moncode, code, readonly
;
	import	cos_pi
	export	cos_2pi

pi	equ	(1<<8)
pix2	equ	(1<<9)

; cette fonction rend le cos d'un angle compris entre 0 et 2pi (inclus) 
; ----- format d'entree -----
; l'angle est exprime par un nombre t.q. 2 * pi <==> 1<<9
; En prenant le tour comme unite d'angle, on peut dire que l'angle
; est exprime en format virgule fixe Q9 ou 23.9  
; ----- format de sortie -----
; le cosinus est rendu en virgule fixe sur 32 bits signes
; en format virgule fixe Q15 ou 17.15 

cos_2pi	proc
	push	{lr}
	cmp	r0, #pi
	bmi	quad12          ; blo, bls, blt, ble, bcc, bmi sont ok
        rsb	r0, r0, #pix2   ; r0 = pix2 - r0
;
quad12	bl	cos_pi
	pop	{pc}
	endp
	end
