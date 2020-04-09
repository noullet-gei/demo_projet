; ce programme est pour l'assembleur RealView (Keil)
	thumb
	area  moncode, code, readonly
;
	import	cos_q9
	export	cos_q15

; cette fonction rend le cosinus d'un angle arbitraire, positif ou negatif,
; en effectuant une interpolation lineaire entre deux valeurs consecutives
; fournies par la fonction cos_q9
; ----- format d'entree -----
; l'angle est exprime par un nombre t.q. 2pi <==> 1<<15
; En prenant le tour comme unite d'angle, on peut dire que l'angle
; est exprime en format virgule fixe Q15 ou 17.15 
; ----- format de sortie -----
; le cosinus est rendu en virgule fixe sur 32 bits signes
; en format virgule fixe Q15 ou 17.15 
 
cos_q15	proc
	push	{lr}
	ldr	r3, =0x003F     ; 1<<6 - 1
	and	r3, r0, r3
	push	{r3}		; sauver les 6 LSBs
	asr	r0, #6
	push	{r0}		; sauver angle Q9
	add	r0, #1
	bl	cos_q9		; chercher le second sinus
	mov	r1, r0
	pop	{r0}		; recuperer angle Q9
	push	{r1}		; sauver le second sinus
	bl	cos_q9		; chercher le premier sinus
	pop	{r1}		; recuperer le second sinus
	sub	r1, r1, r0	; la difference
	pop	{r3}		; recuperer les 6 LSBs
	mul	r3, r3, r1	; multiplier par la diff des cosinus
	asr	r3, #6		; diviser
	add	r0, r3		; ajouter au premier cosinus
fin	pop	{pc}
	endp
	end