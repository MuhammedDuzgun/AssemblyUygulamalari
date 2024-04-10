#------------------------



	.data #the global variable field
	
	SystemMessage1: 		.asciiz		"Bir Sayi Giriniz: "
	SystemMessage2: 		.asciiz		"Tutulan Sayi i: "
	NextLine: 				.asciiz		"\n"
	

	
	.text #the user codes
	
	
	
main:
	
	#IF - Else Islemleri

	
	################################## KONSOL ISLEMLERI ##################################
#								 v0'A ATACANACAK DEGERLER 
						#Konsola Yazma 					#Konsoldan Deger Alma
#	Integer						1									5
#	Float						2									6
#	Double						3									7
#	Text						4									8
	
	
	li 			$s0, 20
	
	li 			$v0, 4
	la 			$a0, SystemMessage1
	syscall
	
	li 			$v0, 5
	syscall
	move 		$t0, $v0
	
	
	beq			$t0, 0, DBL 		#Sayi Sifira esit ise iki kati alinacak DBL-> double
	slt			$t1, $t0, $zero
	beq			$t1, 0, INC			#t1 sifira esit ise demekki pozitif, o zaman INC yani increment'e git.
	beq 		$t1, 1, DEC			#t1 bir olarak guncellenmis ise demekki sayi sifirdan kucuk, o zaman DEC yani Descending'e git.
		
	
	
PRINT:

	li			$v0, 4
	la 			$a0, SystemMessage2
	syscall
	
	li 			$v0, 1
	move 		$t0, $v0
	syscall


	

bitir: 

#------------------------
	#terminate the main program
	li $v0, 10		
	syscall 		
	
	
INC: 
	addi, 		$s0, $s0, 1
	j			PRINT
	

DEC: 
	addi, 		$s0, $s0, -1
	j			PRINT
	
DBL: 
	li			$t2, 2
	mult		$s0, $t2
	mflo		$s0
	j			PRINT
	