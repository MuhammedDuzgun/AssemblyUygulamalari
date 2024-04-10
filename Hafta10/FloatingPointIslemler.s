#------------------------



	.data #the global variable field
	
	mesajF: 		.asciiz 	"Float Sayi Giriniz: "
	mesajD: 		.asciiz		"Double Sayi Giriniz: "
	mesajSonuc:		.asciiz		"Sonuc: "
	
	SifirF: 		.float		0.0
	SifirD: 		.double 	0.0
	
	
	.text #the user codes
	
main:
		################################## KONSOL ISLEMLERI ##################################
#								 v0'A ATACANACAK DEGERLER 
						#Konsola Yazma 					#Konsoldan Deger Alma
#	Integer						1									5
#	Float						2									6
#	Double						3									7
#	Text						4									8
	
	

	lwc1		$f29, SifirF		    #lwc1 -> Load Word CoProcessor1  : lw'nin float icin olani
	ldc1		$f30, SifirD			#ldc1 -> Load Double CoProcessor1: lw'nin double icin olani
	
	#Float Deger gir mesaji
	#li 			$v0, 4
	#la			$a0, mesajF
	#syscall
	
	#Kullanicidan Float Deger Alma
	#li			$v0, 6
	#syscall
	#add.s		$f12, $f0, $f29		#CoProcessor'de konsoldan gelen sayi f0'da saklanir. Konsola bir sey gosterilecekse f12'ye alinir. f29 da zaten sifir vardi. Add islemi yaptik.		
	
	#Double Deger Gir mesaji
	li 			$v0, 4
	la			$a0, mesajD
	syscall
	
	#Double Deger f12 register'ına alındi
	li			$v0, 7
	syscall
	add.d 		$f12, $f0, $f30
	
	
	#Double Deger Sonuc mesaji
	li			$v0, 4
	la			$a0, mesajSonuc
	syscall
	
	#Double Degeri Yazdirma
	li			$v0, 3			#v0'a 3 yuklendigi zaman sistem otomatik f12 deki degeri ekrana basacak.
	syscall
	
	
	
	

bitir: 

#------------------------
	#terminate the main program
	li $v0, 10		
	syscall 		