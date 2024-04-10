#------------------------



	.data #the global variable field
	
	
	mesaj: 		.asciiz		"Faktoriyel Alinacak Sayi Girin: "
	
	
	.text #the user codes
	
	
	
main:
	
	################################## KONSOL ISLEMLERI ##################################
#								 v0'A ATACANACAK DEGERLER 
						#Konsola Yazma 					#Konsoldan Deger Alma
#	Integer						1									5
#	Float						2									6
#	Double						3									7
#	Text						4									8


	li 			$v0, 4
	la			$a0, mesaj
	syscall
	
	#Girilen Degeri Al
	li 			$v0, 5
	syscall
	move 		$a0, $v0
	
	
	li 			$v1, 1
	
	jal		fakt
	
	#Sonuc Yazdir
	li 			$v0, 1
	move		$a0, $v1
	syscall	
	


bitir: 

#------------------------
	#terminate the main program
	li $v0, 10		
	syscall 		
	
	
	
fakt: 
	
	addi 		$sp, $sp, -8
	sw			$ra, 4($sp)
	sw			$a0, 0($sp)
	
	slti		$t0, $a0, 2
	
	bne			$t0, $zero, stackKapat
	
	addi		$a0, $a0, -1
	jal 		fakt
	
	
stackKapat: 	
	lw			$ra, 4($sp)
	lw			$a0, 0($sp)
	addi		$sp, $sp, 8
	
	mul 		$v1, $a0, $v1
	
	jr			$ra	