#------------------------



	.data #the global variable field
	
	sayi1: .word 125
	
	
	.text #the user codes
	
main:

	la $s0, sayi1 				#la -> load address (bir etiketin adresini cozumleyip istedigimiz register'a yukler)
	lw $t1, 0($s0)				#lw -> load word    (s0 adresindeki degeri bir word kadar oku, t1 register'ina yukle)
	
	li $t2, 0xffffffbc			#li -> $t2 register'ina -68 degerini yukle 
	sw $t2, 4($s0)				#sw -> store word (s0 adresinden 4 byte (1 word) sonrasina t2 register'inda bulunan degeri yukle)
	
	
	
	#Adres degerini etiket olmadan manuel olarak girmek :
	
	add $s2, $zero, 0x10010008 		#s2 register'ina 0x10010008 adresini atadik
	li $t3, 506						#t3 register'ina 506 yani (1fa) degerini atadik
	sw $t3, 0($s2)					#s2 adresine t3'de bulunan degeri yukle - ofset degeri 0
	
	


#------------------------
	#terminate the main program
	li $v0, 10		
	syscall 		