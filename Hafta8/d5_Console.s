#------------------------



	.data #the global variable field
	
	AltSatir: 		.asciiz		"\n"
	TextMesaj: 		.asciiz		"Text Degeriniz: "
	IntMesaj: 		.asciiz		"Integer Degeriniz: "
	FloatMesaj: 	.asciiz		"Float Degeriniz: "
	DbleMesaj: 		.asciiz		"Double Degeriniz"
	IstekMesaj: 	.asciiz 	"Giris Yapiniz: "
	
	AlinanText: 	.space 		50

	
	.text #the user codes
	
	
main:
	
	#Console Islemleri

	
	################################## KONSOL ISLEMLERI ##################################
#								 v0'A ATACANACAK DEGERLER 
						#Konsola Yazma 					#Konsoldan Deger Alma
#	Integer						1									5
#	Float						2									6
#	Double						3									7
#	Text						4									8
	


#	li 		$v0, 4
#	la		$a0, TextMesaj
#	syscall
	
#	li 		$v0, 8
#	la     	$a0, AlinanText
#	syscall
	
	li 		$v0, 4
	la		$a0, IntMesaj
	syscall
	
	li		$v0, 5
	syscall
	move	$t0, $v0
	
	
	li 		$v0, 1
	move	$a0, $t0
	syscall

	

bitir: 

#------------------------
	#terminate the main program
	li $v0, 10		
	syscall 		
	
	
