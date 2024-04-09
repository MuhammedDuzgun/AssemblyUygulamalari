#------------------------


	.data #the global variable field
	

	
	
	.text #the user codes
	
	
main:

	#beq, j (branch if equal, jump)


	li 		$t0, 5
	li 		$t1, 5
	j 		kontrol 	#(j-jump: kontrol etiketine git)
	
	
carp: 

	mul		$t2, $t0, $t1		#(mul- t0 ve t1 register'larindaki degerleri carp, t2 register'ına yaz.)
	j		bitir				#(j-jump: bitir etiketine git. Not: BURADA J BİTİR UYGULANMAZSA kontrol ETİKETİNDEN DEVAM EDİP SONSUZ DONGUYE GİRER)
	
	
kontrol: 

	beq		$t0, $t1, carp		#(beq-branch if equal: t0 register'ındaki deger, t1 register'indaki deger ile ayni ise carp etiketine git)
	


bitir:

#------------------------
	#terminate the main program
	li $v0, 10		
	syscall 		