#------------------------



	.data #the global variable field
	
	SystemMessage1: 			.asciiz		"Integer bir deger giriniz : "
	SystemMessage2: 			.asciiz		"Dizi Toplami: "
	
	
	.text #the user codes
	
	
main:

	li			$t0, 0x10010040
	li			$t8, 0
	

Loop : 
	
	#Kullaniciya Mesaj Gosterdik 
	li			$v0, 4
	la			$a0, SystemMessage1
	syscall
	
	li			$v0, 5
	syscall
	move		$t1, $v0
	
	sw			$t1, 0($t0)
	addi		$t8, $t8, 1
	addi		$t0, $t0, 4
	
	bne			$t8, 10, Loop
	

# Toplama Islemleri

	li			$t0, 0x10010040		#Dizi Adresi
	li			$t8, 0				#Dongu i degeri
	li 			$t2, 0				#Toplami burada tutacaz
	
Topla: 	

	lw			$t3, 0($t0)
	add 		$t2, $t2, $t3
	addi		$t8, $t8, 1
	addi 		$t0, $t0, 4
	
	bne			$t8, 10, Topla
	
	#Kullaniciya Toplam Gosterme
	li			$v0, 4
	la			$a0, SystemMessage2
	syscall
	li 			$v0, 1
	move		$a0, $t2
	syscall
	
	

	
bitir: 


#------------------------
	#terminate the main program
	li $v0, 10		
	syscall 		