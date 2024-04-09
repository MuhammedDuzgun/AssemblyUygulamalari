#------------------------



	.data #the global variable field
	
	etiket1:		.asciiz		"Firat Bilgisayar"
	etiket2: 		.word		0x7aab8bcd
	
	
	.text #the user codes
	
	
main:
	
	#LB, SB - LH, LHU, SH

	#lb, sb (loadByte, storeByte)
	
	#li 		$t0, 0x10010004		#t0 register'ina 1001004 adresindeki degeri yukledik
	#lb			$t1, 0($t0)			#t1 register'ina t0 adresinden 1 byte'lik bilgi yukledik
	
	#lb 		$t2, 2($t0)			#t2 register'ina t0 adresinden sonraki 2. byt'da bulunan 1 byt'lik veriyi yukledik.
	
	#li 		$t3, 0x10010014		#t3 register'ina adres atadik
	#li 		$t4, 0x41			#t4 register'ina 0x41 degeri verdik (HEX-> "A")
	#sb 		$t4, 0($t3)			#t3 register'inda bulunan adrese t4 register'inda bulunan hex degeri atadik. 
	
	
	#lh, lhu, sh (load half, load half unasigned, store half)
	
	li			$t0, 0x10010014		#t0 register'ina 0x10010014 adresini ata
	
	#lh 		$t1, 0($t0)			#t1 register'ina 0x10010014 adresindeki bilginin half word kadarini (16 bit = 2 byt'ını) yükle -> işaretli sayi seklinde
	
	#lhu 		$t1, 0($t0)			#t1 register'ina 0x10010014 adresindeki bilginin half word kadarini (16 bit = 2 byt'ını) yükle -> işaretsiz sayi seklinde
	
	li 			$t1, 0xccee
	sh 			$t1, 2($t0)
	


#------------------------
	#terminate the main program
	li $v0, 10		
	syscall 		