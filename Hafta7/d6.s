#------------------------



	.data #the global variable field
	

	
	
	.text #the user codes
	
	
main:
	
	#jal, jr, ra, sp (jal: jump and link, jr: jump return, ra: return address, sp: stack point)
	
	li		$s0, 5
	li 		$s1, 12
	
	li 		$t0, -5
	li 		$t1, 10
	
	jal 	carp			#(carp'a gider ve s register'larindaki degerleri stack'a yukler)
	
	j 		bitir
	
	
##########################################################
carp: 
	
	addi 	$sp, $sp, -8	#(sp yani stack point 2 tane s register'i (s0 ve s1) korunacagi icin 2*4byte = 8 byte yukari cekildi -> stack'de adresler yukari dogru azalir)
	
	sw		$s0, 0($sp)		#sp'ye s0 register'inda bulunan degeri yukledik
	sw		$s1, 4($sp)		#sp'ye (4 byte sonra) s1 register'inda bulunan degeri yukledik.
	
	
	mul		$s0, $t0, $t1
	li 		$s1, 0x10010000
	sw		$s0, 0($s1)
	
	
	lw		$s0, 0($sp)		#sp'de bulunan degerimizi s0'a geri getirdik.
	lw		$s1, 4($sp)		#sp'de bulunan degerimizi(4 byte sonra) s1'e geri getirdik. 	(Boylece arada bulunan 3 kod satirinda s registerlarini tekrar kullanabildik.)
	
	addi 	$sp, $sp, 8 	#(sp yani stack point eski haline geri gelmesi icin 2*4byte = 8byte asagi cekildi.)
	jr 		$ra				#(ra: return address register'ında bulunan address'e geri doner. NOT: ra'da address otomatik olarak tutulur, el ile girilmez.)
##########################################################

bitir:

#------------------------
	#terminate the main program
	li $v0, 10		
	syscall 	