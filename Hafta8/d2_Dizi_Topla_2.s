#------------------------



	.data #the global variable field
	
	dizi:				.space 		40 		#(10 integer icin 10*4byte = 40byte alan ayırdik-> space'in her seyden once yazilmasi onemli)
	
	SystemMessage1: 	.asciiz		"Bir integer deger giriniz  :  "
	SystemMessageF: 	.asciiz		"Dizi Elemanlarinin Toplami :  "
		
	
	.text #the user codes
	
main:
	
	################################## KONSOL ISLEMLERI ##################################
#								 v0'A ATACANACAK DEGERLER 
						#Konsola Yazma 					#Konsoldan Deger Alma
#	Integer						1									5
#	Float						2									6
#	Double						3									7
#	Text						4									8


	li 			 $t0, 0
	
Loop: 

	li 			$v0, 4
	la			$a0, SystemMessage1
	syscall

	li 			$v0, 5
	syscall
	move		$t1, $v0
	
	sw 			$t1, dizi($t0)
	addi		$t0, $t0, 4
	
	bne			$t0, 40, Loop
	
	
#Dongu Sonu 

	li 			$s0, 0		#Toplam sonucu s0'da tutulacak
	li 			$t0, 0
	
	
Loop2:

	lw			$t2, dizi($t0)
	add 		$s0, $s0, $t2
	addi		$t0, $t0, 4
	
	bne 		$t0, 40, Loop2 		#t0 Degeri hem adres hem de dizi sayisi icin kullanildi. Adresler 4'er 4'er arttigindan (4*10 eleman = 40) olunca dongu bitecek.
	

#Dongu Sonu
	
	
	li 			$v0, 4
	la			$a0, SystemMessageF
	syscall
	
	li 			$v0, 1
	move 		$a0, $s0
	syscall


bitir: 

#------------------------
	#terminate the main program
	li $v0, 10		
	syscall 		