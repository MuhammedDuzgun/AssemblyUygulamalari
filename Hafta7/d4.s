#------------------------



	.data #the global variable field
	
	etiket1:		.asciiz		"Firat Bilgisayar"
	etiket2: 		.word		0x7aab8bcd
	
	
	.text #the user codes
	
	
main:

	#bne -> branch if not equal (dallanma komutu) bne $t1, $t2, etiket -> t1 deki deger t2 deki degere esit degilse etikete git.
	
	li		$t0, 0x10010000
	li 		$t1, 0x20
	

dongu: 
		
	lb 		$t2, 0($t0)	
	addi	$t0, $t0, 1		#(dongu olusmasi icin adresin artmasi lazim. 1 byte arttirdik)
	bne 	$t2, $t1, dongu
	

#------------------------
	#terminate the main program
	li $v0, 10		
	syscall 		